import 'package:flutter/material.dart';
import 'package:flutter_login/providers/product.dart';
import 'package:flutter_login/widgets/product_detail_screen.dart';
import 'package:provider/provider.dart';

class ProductItem extends StatelessWidget {
//  final String id;
//  final String title;
//  final String imageUrl;
//
//  //positional argument
//  ProductItem(this.id, this.title, this.imageUrl);

  @override
  Widget build(BuildContext context) {
    final product = Provider.of<Product>(context,listen: false);
    return GestureDetector(
      child: GridTile(
        child: Image.network(
          product.imageUrl,
          fit: BoxFit.cover,
        ),
        footer: GridTileBar(
          backgroundColor: Colors.black54,
          leading: Consumer<Product>(
            builder: (context,product,child)=>IconButton(
                icon: Icon(product.isFavorite?Icons.favorite:Icons.favorite_border),
                onPressed: () {
                  product.toggleFavourateStatus();
                }),
          ),
          title: Text(
            product.title,
            textAlign: TextAlign.center,
          ),
          trailing:
              IconButton(icon: Icon(Icons.shopping_cart), onPressed: () {}),
        ),
      ),
      onTap: () {
        Navigator.of(context)
            .pushNamed(ProductDetailScreen.routeName, arguments: product.id);
      },
    );
  }
}
