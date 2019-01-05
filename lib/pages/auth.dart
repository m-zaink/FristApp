import 'package:flutter/material.dart';

import './products_page.dart';

//This class defines the landing screen for the app.
//It has a LogIn button, upon whose press, the user is navigated to the
//products page.
class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(title: Text('Hello World')),
      body: Align(
        child: RaisedButton(
          child: Text('Log In'),
          onPressed: () => Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                    builder: (BuildContext context) => ProductsPage()),
              ),
        ),
      ),
    );
  }
}
