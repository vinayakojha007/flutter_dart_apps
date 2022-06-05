import 'package:flutter/material.dart';
import 'package:flutter_application_1/model/product.dart';
import 'package:flutter_application_1/Food_UI%20Desing/productService.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class GVdemo extends StatelessWidget {
  const GVdemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final products = ProductServices().getProducts();
    return Scaffold(
      appBar: AppBar(
        leading: Icon(FontAwesomeIcons.cartShopping),
        title: Text('Top Selling Products'),
        backgroundColor: Colors.amber.shade200,
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: [
          ...products.map((product) {
            return createPI(product);
          }).toList(),
        ],
      ),
    );
  }

  Widget createPI(Product product) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        elevation: 6.0,
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.indigo, Colors.greenAccent],
            ),
          ),
          child: Column(
            children: [
              Text(
                product.productName,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Image(
                image: NetworkImage(
                  product.imageurl,
                ),
                width: 150,
                height: 150,
              ),
              Text('Rs.${product.prices}'),
            ],
          ),
        ),
      ),
    );
  }
}
