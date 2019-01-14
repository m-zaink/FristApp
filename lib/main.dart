import 'package:flutter/material.dart';

import './pages/products_page.dart';
import './pages/product_admin.dart';
import './pages/auth.dart';
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

  List<Map<String, dynamic>> _products = [];

  void _deleteProduct(int index) {
    setState(() {
      _products.removeAt(index);
    });
  }

  void _addProduct(Map<String, dynamic> product) {
    setState(() {
      _products.add(product);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stateful App',
      routes: {
        '/': (context) => AuthPage(),
        '/products': (context) => ProductsPage(_products, _deleteProduct),
        '/admin': (context) => ProductAdmin(_addProduct),
      },
      // onGenerateRoute:
      // onUnknownRoute:
    );
  }
}
