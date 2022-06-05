import 'package:flutter/material.dart';
import 'package:flutter_application_1/state_management_demo/provider/counter_provider_mixin.dart';
import 'package:flutter_application_1/state_management_demo/provider/counter_text_widget.dart';
import 'package:provider/provider.dart';

class ProviderCounter extends StatelessWidget {
  const ProviderCounter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('State Managemnet using Provider'),
      ),
      body: Center(
        child: Column(
          children: const [
            Text('You Have Clicked'),
            SizedBox(
              height: 10.0,
            ),
            CounterText(),
            SizedBox(
              height: 10.0,
            ),
            Text('Times')
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () => context.read<Counter>().increment(),
      ),
    );
  }
}
