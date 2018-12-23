import 'package:flutter/material.dart';

import './pages/details.dart';

class ProductCards extends StatefulWidget {
  //Receives the products list from the ProductsManager class.
  final List<String> products;
  //
  final int index;
  //Just a global variable for text styles.
  final TextStyle myStyle = TextStyle(fontFamily: 'PatuaOne');
  //function reference to delete a products.
  final Function deleteProduct;

  //Constructor.
  ProductCards(
    this.products,
    this.index, {
    this.deleteProduct,
  });

  //Method to develop the state for this class.
  @override
  State<StatefulWidget> createState() {
    return _ProductsCards();
  }
}

class _ProductsCards extends State<ProductCards> {
  //Utility method to develop IconButton to be used in the card
  Widget buildListIconButton(BuildContext context) {
    return IconButton(
      icon: Icon(
        Icons.list,
      ),
      onPressed: (() => Navigator.push(
            context,
            //MaterialPageRoute is used to navigate to a different page as referenced within
            //the builder method.
            MaterialPageRoute(
              builder: (BuildContext context) => Details(
                  widget.products[widget.index],
                  widget.deleteProduct,
                  widget.index),
            ),
          )),
    );
  }

  // Color setColor() {
  //   if (widget.favList.contains(widget.index))
  //     return Colors.red;
  //   else
  //     return Colors.black45;
  // }

  //
  // Widget buildFavoriteButton(BuildContext context) {
  //   return IconButton(
  //       icon: Icon(Icons.favorite),
  //       onPressed: () {
  //         print('[Favorite Button Pressed]');
  //         // widget.updateFavList(widget.index);
  //       },
  //       color: setColor());
  // }

  //Utility method to build a DeleteButton to be used in the
  // cards
  Widget buildDeleteButton(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.delete),
      onPressed: () {
        print('[Delete Button Pressed]');
        widget.deleteProduct(widget.index);
      },
    );
  }

  //Utility method to develop the button bar to be used in the cards.
  //A button bar holds a series of buttons.
  Widget buildButtonBar(BuildContext context) {
    return ButtonBar(
      children: <Widget>[
        buildDeleteButton(context),
        buildListIconButton(context)
      ],
    );
  }

  //Utility method to develop the text to be used in the cards.
  Widget buildText(String text) {
    return Text(
      text,
      style: widget.myStyle,
    );
  }

  //This method returns an image to be used inside a card.
  //If the index of the card is even, it returns eiffel.jpg
  //else returns hawaii.jpg
  Widget buildCardImage(int index) {
    if (index % 2 == 0)
      return Image.asset('assets/eiffel.jpg');
    else
      return Image.asset('assets/hawaii.jpg');
  }

  //The regular build method of the class.
  @override
  Widget build(BuildContext context) {
    Image cardImage = buildCardImage(widget.index);

    return Card(
      child: Column(
        children: <Widget>[
          cardImage,
          ListTile(
            leading: buildText(widget.products[widget.index]),
            trailing: buildButtonBar(context),
          )
        ],
      ),
    );
  }
}
