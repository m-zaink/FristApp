import 'package:flutter/material.dart';

class Products extends StatelessWidget {
  final List<String> products;

  Products(this.products);

  @override
  Widget build(BuildContext context) {
    return Column(
        children: products
            .map((caption) => Card(
                  child: Column(
                    children: <Widget>[
                      Image.asset("assets/eiffel.jpg"),
                      CardCaption(caption)
                    ],
                  ),
                ))
            .toList());
  }
}

class CardCaption extends StatelessWidget {
  final String caption;

  CardCaption(this.caption);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Text(
      caption,
      style: TextStyle(
          fontFamily: "Gamja Flower", fontSize: 30, color: Colors.black),
    );
  }
}
