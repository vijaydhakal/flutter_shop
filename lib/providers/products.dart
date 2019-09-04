import 'package:flutter/material.dart';
import 'package:flutter_login/providers/product.dart';

class Products with ChangeNotifier {
  List<Product> _items = [
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
            "https://i.pinimg.com/236x/90/b7/5a/90b75a1fe23d9a55ba7cb0a338e5b922--pretty-girls-beautiful-people.jpg"),
    Product(
      id: "p4",
      title: "Redshirt",
      description: "Nice shirt - it is pretty red",
      price: 29.99,
      imageUrl:
          "http://www.freepngclipart.com/download/awesome/3430-awesome-awesome-image-hd-image.jpg",
    ),
  ];

  List<Product> get items {
    return [..._items];
  }

  Product findByid(String id) {
    return _items.firstWhere((prod) => prod.id == id);
  }

  void addProduct() {
//    _items.add(value);
    notifyListeners();
  }
}
