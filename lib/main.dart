import 'package:flutter/material.dart';

void main() => runApp(HomePage());

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("Hello World", style: TextStyle(fontFamily: "Gamja Flower", fontSize: 30),),
      ),
      body: Text(
        "Hello World. I'm the new app from inside flutter.",
        style: TextStyle(fontSize: 30, fontFamily: "Gamja Flower"),
      ),
      floatingActionButton: FloatingActionButton(
        child: Text("Press"),
        onPressed: () {
          print("Button pressed.");
        },
      ),
    ));
  }
}
