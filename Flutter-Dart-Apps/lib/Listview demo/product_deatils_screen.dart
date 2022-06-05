import 'package:flutter/material.dart';
import 'package:flutter_application_1/model/product.dart';

class ProductDetailsSCreen extends StatelessWidget {
   static const routeName = '/ProductDetailsSCreen';
  const ProductDetailsSCreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var product = ModalRoute.of(context)!.settings.arguments as Product;
    return Scaffold(
      appBar: AppBar(
        title: Text('${product.productName} Details'),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Hero(
                tag: product.productID, child: Image.network(product.imageurl)),
          ),
          Card(
            elevation: 20,
            child: Column(
              children: [
                Text(
                  'Product ID : ${product.productID}',
                  style: const TextStyle(fontSize: 30.0),
                ),
                Text(
                  product.productName,
                  style:
                      const TextStyle(fontSize: 30.0, color: Colors.blueAccent),
                ),
                Text(
                  '${product.prices}',
                  style:
                      const TextStyle(fontSize: 30.0, color: Colors.blueAccent),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
