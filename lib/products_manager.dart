import 'dart:math';

import 'package:flutter/material.dart';

import './products_cards.dart';

class ProductsManager extends StatefulWidget {
  //firstProduct to hold the caption of the first card.
  final String firstProduct;

  ProductsManager(this.firstProduct);
  @override
  State<StatefulWidget> createState() {
    return _ProductsManagerState();
  }
}

class _ProductsManagerState extends State<ProductsManager> {
  //favList to hold the names of all those cards that were favorited.
  List<int> favList = [];
  //_products to hold the set of products that will be create for the cards.
  List<String> _products = [];

  @override
  void initState() {
    //initialisation method for the first card(one which contains firstProduct)
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

  //TODO: add this eventually.
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
      appBar: AppBar(
        title: Text("Stateful App"),
      ),
      body: ListView.builder(
        //This in-built function renders the cards only when they are required.
        //Basically when the cards need to be there.

        //itemCount keeps track of total number of items present in the list
        itemCount: _products.length,

        //this method will be called whenever the cards needs to be rendered.
        itemBuilder: (BuildContext context, int index) {
          return ProductCards(
            _products,
            index,
            deleteProduct: _deleteProduct,
          );
        },
      ),
    
      //This is floating button. It sets the state based on changes made to the 
      //_products list
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
