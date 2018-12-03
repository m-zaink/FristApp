import 'package:flutter/material.dart';

class Products extends StatelessWidget {
  List<String> products;

  Products(this.products);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
        children: products
            .map((element) => Card(
                  child: Column(
                    children: <Widget>[
                      Image.asset("assets/eiffel.jpg"),
                      Text(
                        element,
                        style: TextStyle(
                            fontFamily: "Gamja Flower",
                            fontSize: 30,
                            color: Colors.black),
                      )
                    ],
                  ),
                ))
            .toList());
  }
}
