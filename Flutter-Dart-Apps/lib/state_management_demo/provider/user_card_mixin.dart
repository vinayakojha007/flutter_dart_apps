import 'package:flutter/material.dart';
import 'package:flutter_application_1/model/product.dart';

class UserCart with ChangeNotifier {
  List<Product> _products = [];
  List<Product> get products => _products;

  void addProductToCart(Product product) {
    _products.add(product);
    debugPrint('Adding Product : ${product.productName}');
    notifyListeners();
  }

  void removeProductFromCart(Product product) {
    _products.remove(product);
    notifyListeners();
  }

  void incrementProductToCart(Product product) {}

  double get totalPrice => products.fold(
      0, (total, currentProduct) => total + currentProduct.prices);
}
