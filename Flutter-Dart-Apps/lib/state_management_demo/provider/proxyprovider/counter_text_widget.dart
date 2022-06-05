import 'package:flutter/material.dart';
import 'package:flutter_application_1/state_management_demo/provider/counter_provider_mixin.dart';
import 'package:provider/provider.dart';

class CounterProxyProvider extends StatelessWidget {
  const CounterProxyProvider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Counter = Provider.of<int>(context).toString();
    return Text(
      Counter,
      style: const TextStyle(fontSize: 30.0),
    );
  }
}
