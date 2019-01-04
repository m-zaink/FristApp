import 'package:flutter/material.dart';

import './pages/home_page.dart';

//This is the driver class through which the app is initiated.

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final TextStyle textStyle = TextStyle(fontSize: 20.0);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stateful App',
      home: HomePage(),
    );
  }
}
