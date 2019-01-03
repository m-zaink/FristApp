import 'package:flutter/material.dart';

class ProductDetails extends StatelessWidget {
  final String details = 'Details';
  final TextStyle textStyle = TextStyle(fontSize: 20.0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Details'),
      ),
      body: Center(
        child: Text(details, style: textStyle),
      ),
    );
  }
}
