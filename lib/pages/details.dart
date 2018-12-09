import 'package:flutter/material.dart';

class Details extends StatelessWidget {
  final String details;
  final TextStyle myStyle = TextStyle(fontFamily: 'PatuaOne');
  final Function deleteProduct;
  final int index;

  Details(this.details, this.deleteProduct, this.index);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Details'),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.delete),
              onPressed: () {
                deleteProduct(index);
                Navigator.pop(context);
              },
            ),
          ],
        ),
        body: Center(
          child: Container(
            child: Text(
              details,
              style: myStyle,
            ),
          ),
        ));
  }
}
