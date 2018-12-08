import 'dart:math';

import 'package:flutter/material.dart';

import './products.dart';

class ProductsManager extends StatefulWidget {
  final String firstProduct;

  ProductsManager(this.firstProduct);
  @override
  State<StatefulWidget> createState() {
    return _ProductsManagerState();
  }
}

class _ProductsManagerState extends State<ProductsManager> {
  List<String> _products = [];

  @override
  void initState() {
    super.initState();
    _products.add(widget.firstProduct);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Stateful App")),
        body: ListView.builder(
            itemCount: _products.length,  
            itemBuilder: (BuildContext context, int index) {
              
              return Products(_products, index);
            }),
        floatingActionButton: FloatingActionButton(
          child: Text("Press"),
          onPressed: () {
            setState(() {
              _products
                  .add("Some more random stuff. ${Random().nextInt(2000)}");
            });
          },
        ));
  }
}
