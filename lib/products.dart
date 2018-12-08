import 'package:flutter/material.dart';

class Products extends StatelessWidget {
  final List<String> products;
  final int index;
  final TextStyle myStyle = TextStyle(fontFamily: 'PatuaOne');

  Products(this.products, this.index);

  @override
  Widget build(BuildContext context) {
    Image cardImage;
    if (index % 2 == 0)
      cardImage = Image.asset('assets/eiffel.jpg');
    else
      cardImage = Image.asset('assets/hawaii.jpg');
    return Card(
      child: Column(
        children: <Widget>[
          cardImage,
          ListTile(
            leading: Text(
              products[index],
              style: myStyle,
            ),
            trailing: Icon(Icons.favorite),
          )
        ],
      ),
    );
  }
}
