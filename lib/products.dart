import 'package:flutter/material.dart';

import './pages/details.dart';

class Products extends StatelessWidget {
  final List<String> products;
  final int index;
  final TextStyle myStyle = TextStyle(fontFamily: 'PatuaOne');

  Products(this.products, this.index);

  Widget buildIconButton(BuildContext context) {
    return IconButton(
      icon: Icon(
        Icons.list,
      ),
      onPressed: (() => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (BuildContext context) => Details(products[index]),
            ),
          )),
    );
  }

  Widget buildText(String text) {
    return Text(
      text,
      style: myStyle,
    );
  }

  Widget buildCardImage(int index) {
    if (index % 2 == 0)
      return Image.asset('assets/eiffel.jpg');
    else
      return Image.asset('assets/hawaii.jpg');
  }

  @override
  Widget build(BuildContext context) {
    Image cardImage = buildCardImage(index);

    return Card(
      child: Column(
        children: <Widget>[
          cardImage,
          ListTile(
            leading: buildText(products[index]),
            trailing: buildIconButton(context),
          )
        ],
      ),
    );
  }
}
