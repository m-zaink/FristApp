import 'package:flutter/material.dart';

class Details extends StatelessWidget {
  //details shall receive the set of details to be displayed for a 
  //product so selected.
  final String details;
  //Just a global variable for text styles.
  final TextStyle myStyle = TextStyle(fontFamily: 'PatuaOne');
  //Function reference to delete a product.
  final Function deleteProduct;
  //This stores the index of the card to be deleted.
  final int index;

  //Constructor
  Details(this.details, this.deleteProduct, this.index);


  //Regular build method.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Details'),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.delete),
              onPressed: () {
                deleteProduct(index);
                Navigator.pop(context);
              },
            ),
          ],
        ),
        body: Center(
          child: Container(
            child: Text(
              details,
              style: myStyle,
            ),
          ),
        ));
  }
}
