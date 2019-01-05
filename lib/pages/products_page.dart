import 'dart:core';

import 'package:flutter/material.dart';

import '../util/product_card.dart';
import './product_admin.dart';
import 'package:english_words/english_words.dart';

//This file contains the ProductsManager class that
//handles the ProductsPage.
//A button 'Add Products' is added to add product cards,
//rendered using ProductCard()

class ProductsPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ProductsPageState();
  }
}

class _ProductsPageState extends State<ProductsPage> {
  List<Map<String, String>> _products = [];
  WordPair _wordPair;

  void _deleteProduct(int index) {
    setState(() {
      _products.removeAt(index);
    });
  }

  Widget _buildAddProductButton(BuildContext context) {
    return RaisedButton(
      color: Theme.of(context).buttonColor,
      child: Text('Add Products'),
      onPressed: () {
        setState(
          () {
            _products.add({
              'title': _wordPair.asPascalCase,
              'image': 'assets/hawaii.jpg'
            });
          },
        );
      },
    );
  }

  Widget _buildProductListView(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemBuilder: (BuildContext context, int index) => ProductCard(
              productDetails: _products[index],
              deleteProduct: _deleteProduct,
              index: index,
            ),
        itemCount: _products.length,
      ),
    );
  }

  Widget _buildDrawer(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          AppBar(
            automaticallyImplyLeading: false,
            title: Text('Choose'),
          ),
          ListTile(
            title: Text('Manage Products'),
            onTap: () => Navigator.pushReplacementNamed(context, '/admin'),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    _wordPair = WordPair.random();

    return Scaffold(
      drawer: _buildDrawer(context),
      appBar: AppBar(title: Text('Products')),
      body: Column(
        children: <Widget>[
          _buildAddProductButton(context),
          _buildProductListView(context),
        ],
      ),
    );
  }
}
