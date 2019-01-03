import 'package:flutter/material.dart';

import '../pages/product_details.dart';

class ProductCard extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ProductCardState();
  }
}

class _ProductCardState extends State<ProductCard> {
  TextStyle _textStyle = TextStyle(fontSize: 20);
  @override
  Widget build(BuildContext context) {
    return Card(
        child: Column(
      children: <Widget>[
        Image.asset('assets/hawaii.jpg'),
        ButtonBar(
          children: <Widget>[
            FlatButton(
              child: Center(
                child: Text(
                  'Detail',
                  style: _textStyle,
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => ProductDetails()),
                );
              },
            )
          ],
        )
      ],
    ));
  }
}
