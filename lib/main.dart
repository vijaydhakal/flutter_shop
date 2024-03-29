import 'package:flutter/material.dart';
import 'package:flutter_login/screens/products_overview_screen.dart';
import 'package:flutter_login/widgets/product_detail_screen.dart';
import './providers/products.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        builder: (ctx)=>Products(),
    child: MaterialApp(
      title: 'My Shop',
      theme: ThemeData(
        primarySwatch: Colors.purple,
        accentColor: Colors.deepOrange,
        fontFamily: 'Lato',
      ),
      home: ProductOverViewScreen(),
      routes: {
        ProductDetailScreen.routeName:(ctx)=>ProductDetailScreen(),
      },
    ),);
  }
}