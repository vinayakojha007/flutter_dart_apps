import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_application_1/state_management_demo/provider/user_card_mixin.dart';

class UserCartScreen extends StatefulWidget {
  const UserCartScreen({Key? key}) : super(key: key);

  @override
  State<UserCartScreen> createState() => _UserCartScreenState();
}

class _UserCartScreenState extends State<UserCartScreen> {
  @override
  Widget build(BuildContext context) {
    var cart = context.watch<UserCart>();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Selected Products'),
      ),
      body: Column(children: [
        _CartItems(cart: cart),
        const SizedBox(height: 20.0),
        Text(
          'Total Price of the Cart : \nRs. ${cart.totalPrice} /-',
          style: const TextStyle(fontSize: 24.0, color: Colors.purple),
        ),
      ]),
    );
  }
}

class _CartItems extends StatelessWidget {
  final UserCart cart;
  const _CartItems({Key? key, required this.cart}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: cart.products.length,
      itemBuilder: (context, index) {
        return Expanded(
            child: ListTile(
          leading: Image.network(cart.products[index].imageurl),
          title: Text(cart.products[index].productName),
          subtitle: Text(cart.products[index].prices.toString()),
          trailing: const SizedBox(
            width: 40,
          ),
        ));
      },
    );
  }
}
