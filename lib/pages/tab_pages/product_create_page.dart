import 'package:flutter/material.dart';

class ProductCreatePage extends StatefulWidget {
  final Function addProduct;

  ProductCreatePage(this.addProduct);

  @override
  State<StatefulWidget> createState() {
    return _ProductCreatePageState();
  }
}

class _ProductCreatePageState extends State<ProductCreatePage> {
  String _title, _details;
  double _price;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      child: ListView(
        children: <Widget>[
          TextField(
            decoration: InputDecoration(
              labelText: 'Product Title',
            ),
            onChanged: (String value) {
              _title = value;
            },
          ),
          TextField(
            maxLines: 4,
            decoration: InputDecoration(labelText: 'Product Details'),
            onChanged: (String value) {
              _details = value;
            },
          ),
          TextField(
            keyboardType: TextInputType.number,
            decoration: InputDecoration(labelText: 'Product Price'),
            onChanged: (String value) {
              _price = double.parse(value);
            },
          ),
          RaisedButton(
            child: Text('Save'),
            onPressed: () {
              Map<String, dynamic> product = {
                'title': _title,
                'details': _details,
                'price': _price,
                'image': 'assets/hawaii.jpg',
              };
              widget.addProduct(product);
              Navigator.pushReplacementNamed(context, '/');
            },
          )
        ],
      ),
    );
  }
}
