import 'package:flutter_application_1/Food_UI%20Desing/productService.dart';
import 'package:flutter_application_1/model/product.dart';
import 'package:get/get.dart';

class ShoppingController extends GetxController {
  List<Product> products = <Product>[].obs;
  @override
  void onInit() {
    super.onInit();
    getProductDetails();
  }

  void getProductDetails() async {
    products.assignAll(ProductServices().getProducts().toList());
  }
}
