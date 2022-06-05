import 'dart:async';

import 'package:flutter_application_1/state_management_demo/BLOC _Arc/counter_event.dart';

class CounterBloc {
  int _counter = 0;

  final _counterStateController = StreamController<int>();

  StreamSink<int> get _intCounter => _counterStateController.sink;

  Stream<int> get counter => _counterStateController.stream;

  final _counterEventController = StreamController<CounterEvents>();
  Sink<CounterEvents> get CounterEventSink => _counterEventController.sink;

  CounterBloc() {
    _counterEventController.stream.listen((event) {
      if (event is IncrementEvent) _counter++;
      if (event is DecrementEvent) _counter--;
      _intCounter.add(_counter);
    });
  }

  void dispose() {
    _counterStateController.close();
    _counterEventController.close();
  }
}
