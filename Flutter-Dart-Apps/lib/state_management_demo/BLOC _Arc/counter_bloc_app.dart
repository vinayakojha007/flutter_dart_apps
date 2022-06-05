import 'package:flutter/material.dart';
import 'package:flutter_application_1/state_management_demo/BLOC _Arc/counter_bloc.dart';
import 'package:flutter_application_1/state_management_demo/BLOC _Arc/counter_event.dart';

class CounterApp extends StatefulWidget {
  const CounterApp({Key? key}) : super(key: key);

  @override
  State<CounterApp> createState() => _CounterAppState();
}

class _CounterAppState extends State<CounterApp> {
  final _bloc = CounterBloc();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter App using BLOC Arch'),
      ),
      body: Center(
        child: StreamBuilder(
          stream: _bloc.counter,
          initialData: 0,
          builder: (context, snapshot) {
            return Column(
              children: [
                const Text('You have Cliked this page'),
                Text(
                  '${snapshot.data}',
                  style: const TextStyle(fontSize: 30),
                ),
                const Text('Times'),
              ],
            );
          },
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FloatingActionButton(
              onPressed: () => _bloc.CounterEventSink.add(IncrementEvent()),
              child: const Icon(Icons.add)),
          const SizedBox(
            width: 10,
          ),
          FloatingActionButton(
            onPressed: () => _bloc.CounterEventSink.add(DecrementEvent()),
            child: const Icon(Icons.remove),
          )
        ],
      ),
    );
  }
}
