import 'package:flutter/material.dart';

class ProductDetails extends StatelessWidget {
  final String details;
  final TextStyle textStyle = TextStyle(fontSize: 20.0);
  final int index;

  ProductDetails({this.index, this.details});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).primaryColorDark,
          automaticallyImplyLeading: false,
          title: Text('Product Details'),
        ),
        body: Container(
          padding: EdgeInsets.all(20.0),
          child: Text(details, style: textStyle),
        ));
  }
}
