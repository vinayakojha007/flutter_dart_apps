import 'package:flutter/material.dart';
import 'package:flutter_application_1/state_management_demo/provider/proxyprovider/counter_text_widget.dart';
import 'package:provider/provider.dart';

class ProxyProviderdemo extends StatefulWidget {
  const ProxyProviderdemo({Key? key}) : super(key: key);

  @override
  State<ProxyProviderdemo> createState() => _ProxyProviderdemoState();
}

class _ProxyProviderdemoState extends State<ProxyProviderdemo> {
  int _counter = 0;

  void _increment() {
    setState(() {
      _counter++;
    });
    print(_counter);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.calculate),
        title: const Text('Counter App'),
      ),
      body: Container(
        child: Column(children: [
          Text(
            'You have Clicked $_counter time',
            style: const TextStyle(fontSize: 30.0),
          ),
          ProxyProvider0<int>(
            update: (context, _) => _counter,
            child: CounterProxyProvider(),
          ),
        ]),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _increment,
        child: const Icon(Icons.add),
      ),
    );
  }
}
