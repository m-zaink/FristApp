import "package:flutter/material.dart";

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
      body: Column(children: [
        Card(
            child: Container(
          margin: EdgeInsets.all(8.0),
          child: Column(
            children: [
              Image.asset("assets/eiffel.jpg"),
              Text(
                "Paris",
                style: TextStyle(fontSize: 30, fontFamily: "Gamja Flower"),
              ),
            ],
          ),
        ))
      ]),
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
