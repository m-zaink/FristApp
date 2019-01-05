import 'package:flutter/material.dart';

import './products_page.dart';
import './product_list_page.dart';
import './product_create_page.dart';

class ProductAdmin extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ProductAdminState();
  }
}

class _ProductAdminState extends State<ProductAdmin> {
  Widget _buildDrawer(context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          AppBar(
            automaticallyImplyLeading: false,
            title: Text('Choose'),
          ),
          ListTile(
            title: Text('Browse Products'),
            onTap: () => Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => ProductsPage()),
                ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        drawer: _buildDrawer(context),
        appBar: AppBar(
          title: Text('Add Product'),
          bottom: TabBar(
            tabs: <Widget>[
              Tab(
                icon: Icon(Icons.create),
                text: 'Create Product',
              ),
              Tab(
                icon: Icon(Icons.list),
                text: 'My Products',
              )
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            ProductCreatePage(),
            ProductListPage(),
          ],
        ),
      ),
    );
  }
}
