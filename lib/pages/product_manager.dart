import 'dart:core';

import 'package:flutter/material.dart';

import '../util/product_card.dart';
import 'package:english_words/english_words.dart';

//This file contains the ProductsManager class that
//handles the ProductsPage.
//A button 'Add Products' is added to add product cards,
//rendered using ProductCard()

class ProductManager extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ProductManagerState();
  }
}

class _ProductManagerState extends State<ProductManager> {
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

  @override
  Widget build(BuildContext context) {
    _wordPair = WordPair.random();

    return Scaffold(
      appBar: AppBar(title: Text('List View')),
      body: Column(
        children: <Widget>[
          _buildAddProductButton(context),
          _buildProductListView(context),
        ],
      ),
    );
  }
}
