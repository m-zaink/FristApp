import 'dart:core';

import 'package:flutter/material.dart';

import './util/product_card.dart';

//This file contains the ProductsManager class that
//handles the ProductsPage.
//A button 'Add Products' is added to add product cards,
//rendered using ProductCard()

class ProductsPage extends StatelessWidget {
  final List<Map<String, String>> products;
  final Function addProduct;
  final Function deleteProduct;

  ProductsPage(this.products, this.addProduct, this.deleteProduct);

  Widget _buildAddProductButton(BuildContext context) {
    return RaisedButton(
      color: Theme.of(context).buttonColor,
      child: Text('Add Products'),
      onPressed: () => addProduct(),
    );
  }

  Widget _buildProductListView(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemBuilder: (BuildContext context, int index) => ProductCard(
              productDetails: products[index],
              deleteProduct: deleteProduct,
              index: index,
            ),
        itemCount: products.length,
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
