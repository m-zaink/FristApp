import 'package:flutter/material.dart';

import '../product_details.dart';

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
        showModalBottomSheet(
            context: context,
            builder: (context) {
              return ProductDetails(
                index: widget.index,
                details: widget.productDetails['title'],
              );
            });
      },
    );
  }

  Widget _buildDeleteButton(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.delete),
      onPressed: () {
        showDialog(
            context: context,
            builder: (context) => AlertDialog(
                  title: Text('Sure you want to delete this item?'),
                  content: Text('Irrevocable action.'),
                  actions: <Widget>[
                    FlatButton(
                      child: Text('DISCARD'),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                    FlatButton(
                      child: Text('CONTINUE'),
                      onPressed: () {
                        Navigator.pop(context);
                        widget.deleteProduct(widget.index);
                      },
                    ),
                  ],
                ));
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
            trailing: ButtonBar(
              children: <Widget>[
                _buildDeleteButton(context),
                _buildCardButton(context)
              ],
            ),
          )
        ],
      ),
    );
  }
}
