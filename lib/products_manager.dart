import 'dart:math';

import 'package:flutter/material.dart';

import './products_cards.dart';

class ProductsManager extends StatefulWidget {
  final String firstProduct;

  ProductsManager(this.firstProduct);
  @override
  State<StatefulWidget> createState() {
    return _ProductsManagerState();
  }
}

class _ProductsManagerState extends State<ProductsManager> {
  List<int> favList = [];
  List<String> _products = [];

  @override
  void initState() {
    super.initState();
    _products.add(widget.firstProduct);
  }

  void _deleteProduct(int index) {
    setState(
      () {
        _products.removeAt(index);
      },
    );
  }

  void _updateFavList(int index) {
    //TODO: Optimize favoriting of the products.
    setState(
      () {
        !favList.contains(index) ? favList.add(index) : favList.removeAt(index);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Stateful App")),
      body: ListView.builder(
        itemCount: _products.length,
        itemBuilder: (BuildContext context, int index) {
          return ProductCards(
            _products,
            index,
            deleteProduct: _deleteProduct,
            updateFavList: _updateFavList,
            favList: favList,
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: Text("Press"),
        onPressed: () {
          setState(
            () {
              _products
                  .add("Some more random stuff. ${Random().nextInt(2000)}");
            },
          );
        },
      ),
    );
  }
}
