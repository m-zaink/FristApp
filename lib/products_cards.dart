import 'package:flutter/material.dart';

import './pages/details.dart';

class ProductCards extends StatefulWidget {
  final List<String> products;
  final int index;
  final TextStyle myStyle = TextStyle(fontFamily: 'PatuaOne');
  final Function deleteProduct;
  final Function updateFavList;
  final List<int> favList;

  ProductCards(
    this.products,
    this.index, {
    this.deleteProduct,
    this.updateFavList,
    this.favList,
  });

  @override
  State<StatefulWidget> createState() {
    return _ProductsCards();
  }
}

class _ProductsCards extends State<ProductCards> {
  Widget buildListIconButton(BuildContext context) {
    return IconButton(
      icon: Icon(
        Icons.list,
      ),
      onPressed: (() => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (BuildContext context) => Details(
                  widget.products[widget.index],
                  widget.deleteProduct,
                  widget.index),
            ),
          )),
    );
  }

  Color setColor() {
    if (widget.favList.contains(widget.index))
      return Colors.red;
    else
      return Colors.black45;
  }

  Widget buildFavoriteButton(BuildContext context) {
    return IconButton(
        icon: Icon(Icons.favorite),
        onPressed: () {
          print('[Favorite Button Pressed]');
          widget.updateFavList(widget.index);
        },
        color: setColor());
  }

  Widget buildDeleteButton(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.delete),
      onPressed: () {
        print('[Delete Button Pressed]');
        widget.deleteProduct(widget.index);
      },
    );
  }

  Widget buildButtonBar(BuildContext context) {
    return ButtonBar(
      children: <Widget>[
        buildFavoriteButton(context),
        buildDeleteButton(context),
        buildListIconButton(context)
      ],
    );
  }

  Widget buildText(String text) {
    return Text(
      text,
      style: widget.myStyle,
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
    Image cardImage = buildCardImage(widget.index);

    return Card(
      child: Column(
        children: <Widget>[
          cardImage,
          ListTile(
            leading: buildText(widget.products[widget.index]),
            // trailing: buildIconButton(context),
            trailing: buildButtonBar(context),
          )
        ],
      ),
    );
  }
}
