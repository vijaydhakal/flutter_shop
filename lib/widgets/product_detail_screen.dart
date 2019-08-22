import 'package:flutter/material.dart';
class ProductDetailScreen extends StatelessWidget {
//  final title;
//  final double price;
//  ProductDetailScreen(this.title,this.price);

  static const routeName="/product-detail";
  @override
  Widget build(BuildContext context) {
   final productId=  ModalRoute.of(context).settings.arguments as String;


   //..all product data
    return Scaffold(
      appBar: AppBar(
        title: Text("title"),
      ),
    );
  }
}

