import 'package:flutter/material.dart';

class ProductDetails extends StatelessWidget {
  final String details = 'Details';
  final TextStyle textStyle = TextStyle(fontSize: 20.0);
  final int index;

  ProductDetails(this.index);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Details'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.delete),
            onPressed: () {
              Navigator.pop(context, {'deleted':true, 'index':index});
            },
          )
        ],
      ),
      body: Center(
        child: Text(details, style: textStyle),
      ),
    );
  }
}
