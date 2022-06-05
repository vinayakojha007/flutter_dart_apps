import 'package:flutter/material.dart';
import 'package:flutter_application_1/Listview%20demo/product_deatils_screen.dart';
import 'package:flutter_application_1/Food_UI%20Desing/productService.dart';
import 'package:get/get.dart';

class ProductScreen extends StatefulWidget {
  static const routeName = '/';
  const ProductScreen({Key? key}) : super(key: key);

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  var products = ProductServices().getProducts();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Available Products'),
      ),
      body: ListView.builder(
          itemCount: products.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: Hero(
                tag: products[index].productID,
                child: Image.network(products[index].imageurl),
              ),
              title: Text(products[index].productName),
              trailing: const Icon(Icons.arrow_forward_ios_outlined),
              onTap: () {
                var product = products[index];
                Navigator.pushNamed(context, ProductDetailsSCreen.routeName,
                    arguments: products);
              },
            );
          }),
    );
  }
}
