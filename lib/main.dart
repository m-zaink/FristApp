import 'package:flutter/material.dart';

import './pages/auth.dart';
import './pages/products_page.dart';
import './pages/product_admin.dart';

//This is the driver class through which the app is initiated.

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final TextStyle textStyle = TextStyle(fontSize: 20.0);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stateful App',
      // home: HomePage(),
      routes: {
        '/': (context) => ProductsPage(),
        '/admin': (context) => ProductAdmin(),
      },
    );
  }
}
