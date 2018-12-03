import "package:flutter/material.dart";

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  List<String> _products = ['Hello world'];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Stateful App")),
        body: Column(
            children: _products
                .map((element) => Card(
                      child: Column(
                        children: <Widget>[
                          Image.asset("assets/eiffel.jpg"),
                          Text(
                            element,
                            style: TextStyle(
                                fontFamily: "Gamja Flower",
                                fontSize: 30,
                                color: Colors.black),
                          )
                        ],
                      ),
                    ))
                .toList()),
        floatingActionButton: FloatingActionButton(
          child: Text("Press"),
          onPressed: () {
            setState(() {
              _products.add("Some more random stuff.");
            });
          },
        ),
      ),
    );
  }
}
