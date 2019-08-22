import 'package:flutter/material.dart';
import 'package:flutter_login/models/product.dart';
import 'package:flutter_login/widgets/product_grid.dart';

class ProductOverViewScreen extends StatefulWidget {
  @override
  _ProductOverViewScreenState createState() => _ProductOverViewScreenState();
}

class _ProductOverViewScreenState extends State<ProductOverViewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("myshop"),
      ),
      body:ProductsGrid(),
    );
  }
}

