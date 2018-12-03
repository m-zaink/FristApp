import 'package:flutter/material.dart';
import 'dart:math';

import './products.dart';

class ProductsManager extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ProductsManagerState();
  }
}

class _ProductsManagerState extends State<ProductsManager> {
  List<String> _products = ["Something"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Stateful App")),
      body: Products(_products),
      floatingActionButton: FloatingActionButton(
        child: Text("Press"),
        onPressed: () {
          setState(() {
            _products.add("Some more random stuff. ${Random().nextInt(2000)}");
          });
        },
      ),
    );
  }
}
