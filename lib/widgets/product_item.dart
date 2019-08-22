import 'package:flutter/material.dart';
import 'package:flutter_login/widgets/product_detail_screen.dart';




class ProductItem extends StatelessWidget {
  final String id;
  final String title;
  final String imageUrl;

  //positional argument
  ProductItem(this.id, this.title, this.imageUrl);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: GridTile(
        child: Image.network(
          imageUrl,
          fit: BoxFit.cover,
        ),
        footer: GridTileBar(
          backgroundColor: Colors.black54,
          leading: IconButton(icon: Icon(Icons.favorite), onPressed: () {}),
          title: Text(
            title,
            textAlign: TextAlign.center,
          ),
          trailing: IconButton(icon: Icon(Icons.shopping_cart), onPressed: () {}),
        ),
      ),
      onTap: (){
        Navigator.of(context).pushNamed(
            ProductDetailScreen.routeName,
            arguments: id);},
    );
  }
}
