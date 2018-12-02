import 'package:flutter/material.dart';

void main() => runApp(HomePage());

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text(
          "Hello World",
          style: TextStyle(fontFamily: "Gamja Flower", fontSize: 30),
        ),
      ),
      body: Padding(
          padding: EdgeInsets.all(20),
          child: Text(
            "Hello World. I'm the new app from inside flutter.",
            style: TextStyle(fontSize: 30, fontFamily: "Gamja Flower"),
          )),
      floatingActionButton: FloatingActionButton(
        onPressed: () => print("Floating Button Pressed."),
        child: Text(
          "Press",
          style: TextStyle(fontFamily: "Gamja Flower", fontSize: 20),
        ),
        backgroundColor: Colors.red,
      ),
    ));
  }
}
