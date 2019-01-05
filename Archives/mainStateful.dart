import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  List<String> _products = ['Food Tester'];

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
        Column(
          children: _products
              .map((element) => Card(
                      child: Column(
                    children: [
                      Image.asset("assets/eiffel.jpg"),
                      Text(
                        element,
                        style:
                            TextStyle(fontSize: 30, fontFamily: "Gamja Flower"),
                      ),
                    ],
                  )))
              .toList(),
        )
      ]),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _products.add('Advanced Food Tester');
          });

          print(_products);
        },
        child: Text(
          "Press",
          style: TextStyle(fontFamily: "Gamja Flower", fontSize: 20),
        ),
        backgroundColor: Colors.red,
      ),
    ));
  }
}
