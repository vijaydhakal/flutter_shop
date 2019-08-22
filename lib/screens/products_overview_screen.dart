import 'package:flutter/material.dart';
import 'package:flutter_login/models/product.dart';
import '../widgets/product_item.dart';

class ProductOverViewScreen extends StatefulWidget {
  @override
  _ProductOverViewScreenState createState() => _ProductOverViewScreenState();
}

class _ProductOverViewScreenState extends State<ProductOverViewScreen> {
  final List<Product> loadedProducts = [
    Product(
      id: "p1",
      title: "Redshirt",
      description: "Nice shirt - it is pretty red",
      price: 29.99,
      imageUrl:
    "https://i.pinimg.com/236x/90/b7/5a/90b75a1fe23d9a55ba7cb0a338e5b922--pretty-girls-beautiful-people.jpg"),
    Product(
      id: "p2",
      title: "Redshirt",
      description: "Nice shirt - it is pretty red",
      price: 29.99,
      imageUrl:
     "https://i.pinimg.com/236x/90/b7/5a/90b75a1fe23d9a55ba7cb0a338e5b922--pretty-girls-beautiful-people.jpg"),
    Product(
      id: "p3",
      title: "Redshirt",
      description: "Nice shirt - it is pretty red",
      price: 29.99,
      imageUrl:
   "https://i.pinimg.com/236x/90/b7/5a/90b75a1fe23d9a55ba7cb0a338e5b922--pretty-girls-beautiful-people.jpg" ),
    Product(
      id: "p4",
      title: "Redshirt",
      description: "Nice shirt - it is pretty red",
      price: 29.99,
      imageUrl:
          "http://www.freepngclipart.com/download/awesome/3430-awesome-awesome-image-hd-image.jpg",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("myshop"),
      ),
      body: GridView.builder(
          padding: const EdgeInsets.all(10.0),
          itemCount: loadedProducts.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 3 / 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10),
          itemBuilder: (ctx, i) => ProductItem(
              loadedProducts[i].id,
              loadedProducts[i].title,
              loadedProducts[i].imageUrl)),
    );
  }
}
