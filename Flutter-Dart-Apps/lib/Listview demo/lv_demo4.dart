import 'package:flutter/material.dart';
import 'package:flutter_application_1/model/product.dart';
import 'package:flutter_application_1/Food_UI%20Desing/productService.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LVDemo4 extends StatelessWidget {
  final Products = ProductServices().getProducts();
  LVDemo4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(FontAwesomeIcons.cartShopping),
        title: Text('Top Selling Products'),
        backgroundColor: Colors.amber.shade200,
      ),
      body: SizedBox(
        width: double.infinity,
        height: 250.0,
        child: ListView.builder(
          itemCount: Products.length,
          itemBuilder: (context, index) {
            return createPI(Products[index]);
          },
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.all(8.0),
        ),
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
