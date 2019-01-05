import 'package:flutter/material.dart';

import './pages/products_page.dart';
import './pages/product_admin.dart';
import 'package:english_words/english_words.dart';

//This is the driver class through which the app is initiated.

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final TextStyle textStyle = TextStyle(fontSize: 20.0);

  List<Map<String, String>> _products = [];
  WordPair _wordPair;

  void _deleteProduct(int index) {
    setState(() {
      _products.removeAt(index);
    });
  }

  void _addProduct() {
    _wordPair = WordPair.random();
    setState(() {
      _products
          .add({'title': _wordPair.asPascalCase, 'image': 'assets/hawaii.jpg'});
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stateful App',
      // home: AuthPage(),
      routes: {
        '/': (context) => ProductsPage(_products, _addProduct, _deleteProduct),
        '/admin': (context) => ProductAdmin(),
      },
    );
  }
}
