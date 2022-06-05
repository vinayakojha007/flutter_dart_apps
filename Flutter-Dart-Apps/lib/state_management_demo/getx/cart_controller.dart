import 'package:flutter_application_1/model/product.dart';

import 'package:get/get.dart';

class CartController extends GetxController {
  List<Product> selectedProducts = <Product>[].obs;
  void addProductToCart(Product product) {
    selectedProducts.add(product);
    update();
  }

  void removeProductsFromCart(Product product) {
    selectedProducts.remove(product);
    update();
  }

  void increaseQuantityofProduct(index) {
    selectedProducts[index].quantity++;
    selectedProducts[index].quantityPrices =
        selectedProducts[index].prices * selectedProducts[index].quantity;
    update();
  }

  void decreaseeQuantityProduct(index) {
    selectedProducts[index].quantity--;
    selectedProducts[index].quantityPrices =
        selectedProducts[index].prices * selectedProducts[index].quantity;
    update();
  }

  double get totalCost => selectedProducts.fold(
      0, (total, selectedProduct) => total + selectedProduct.quantityPrices);
}
