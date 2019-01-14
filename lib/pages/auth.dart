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
  String _email, _password;
  bool _switchValue = false;

  List<Widget> _buildInputField(context) {
    return <Widget>[
      TextField(
        decoration: InputDecoration(
          labelText: 'Email',
          labelStyle: TextStyle(fontSize: 20.0),
        ),
        keyboardType: TextInputType.emailAddress,
        onChanged: (String value) {
          _email = value;
          print('[$_email]');
        },
      ),
      TextField(
        decoration: InputDecoration(
          labelText: 'Password',
          labelStyle: TextStyle(fontSize: 20.0),
        ),
        obscureText: true,
        onChanged: (String value) {
          _password = value;
          print('[$_password]');
        },
      ),
      SizedBox(
        height: 10.0,
      ),
      SwitchListTile(
        title: Text('Accept Terms and Conditions'),
        value: _switchValue,
        onChanged: (bool value) {
          setState(() {
            _switchValue = value;
          });
        },
      ),
      RaisedButton(
        child: Text('Log In'),
        onPressed: () {
          Navigator.pushReplacementNamed(context, '/products');
        },
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Hello World')),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: _buildInputField(context),
        ),
      ),
    );
  }
}
