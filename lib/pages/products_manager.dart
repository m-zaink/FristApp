import 'package:flutter/material.dart';

import '../utilities/product_card.dart';

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
  List<String> _products = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List View'),
      ),
      body: Column(
        children: <Widget>[
          RaisedButton(
            child: Text('Add Products'),
            onPressed: () {
              setState(
                () {
                  _products.add('Blah Blah');
                },
              );
            },
          ),
          Expanded(
            child: ListView.builder(itemBuilder: (BuildContext context, int i) => ProductCard(), itemCount: _products.length,)
          )
        ],
      ),
    );
  }
}
