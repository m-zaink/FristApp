import "package:flutter/material.dart";

import './products_manager.dart';


//Driver method that kicks off the app.
void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.teal),
      home: ProductsManager('Some random stuff'));
  }
}
