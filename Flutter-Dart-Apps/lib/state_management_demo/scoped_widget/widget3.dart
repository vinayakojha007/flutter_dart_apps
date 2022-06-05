import 'package:flutter/material.dart';

import 'package:flutter_application_1/state_management_demo/scoped_widget/counter_model.dart';
import 'package:scoped_model/scoped_model.dart';

class Widget3 extends StatelessWidget {
  const Widget3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScopedModelDescendant<CounterModel>(
      builder: (context, child, model) => Text(
        'Widget3 :${model.counter}',
        style: const TextStyle(fontSize: 30.0),
      ),
    );
  }
}
