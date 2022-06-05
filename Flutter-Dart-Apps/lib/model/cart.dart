import 'package:flutter_application_1/model/product.dart';

class Cart {
  String id;
  Product product;
  int qty;

  Cart(this.product, {this.id = "", this.qty = 0});
}
