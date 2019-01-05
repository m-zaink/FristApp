import 'package:flutter/material.dart';

import '../pages/product_details.dart';

//This file contains the ProductCard class whose task is to
//render a card.

class ProductCard extends StatefulWidget {
  final Map<String, String> productDetails;
  final TextStyle textStyle = TextStyle(fontSize: 20);
  final Function deleteProduct;
  final int index;

  ProductCard({this.productDetails, this.deleteProduct, this.index});

  @override
  State<StatefulWidget> createState() {
    return _ProductCardState();
  }
}

class _ProductCardState extends State<ProductCard> {
  Widget _buildCardButton(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.list),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (BuildContext context) => ProductDetails(index: widget.index, details:widget.productDetails['title']),
          ),
        ).then(
          (returnValue) {
            if (returnValue != null && returnValue['deleted'])
              widget.deleteProduct(widget.index);
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: <Widget>[
          Image.asset(widget.productDetails['image']),
          ListTile(
              leading: Text(
                widget.productDetails['title'],
                style: widget.textStyle,
              ),
              trailing: _buildCardButton(context))
        ],
      ),
    );
  }
}
