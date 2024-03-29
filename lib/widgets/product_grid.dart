import 'package:flutter/material.dart';
import 'package:flutter_login/providers/products.dart';
import 'package:flutter_login/widgets/product_item.dart';
import 'package:provider/provider.dart';

class ProductsGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final productsData = Provider.of<Products>(context);
    final products = productsData.items;
    return new GridView.builder(
      padding: const EdgeInsets.all(10.0),
      itemCount: products.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10),
      itemBuilder: (ctx, i) =>ChangeNotifierProvider(
        builder: (c)=>products[i],
        child:ProductItem(
//            products[i].id,
//            products[i].title,
//            products[i].imageUrl
        ),

      ),
    );
  }
}
