import 'package:flutter/material.dart';


//This class defines the landing screen for the app.
//It has a LogIn button, upon whose press, the user is navigated to the
//products page.
class AuthPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _AuthPageState();
  }
}

class _AuthPageState extends State<AuthPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Hello World')),
      body: Align(
        child: RaisedButton(
          child: Text('Log In'),
          onPressed: () => Navigator.pushReplacementNamed(context, '/'),
        ),
      ),
    );
  }
}
