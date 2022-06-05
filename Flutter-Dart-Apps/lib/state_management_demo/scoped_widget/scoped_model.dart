import 'package:flutter/material.dart';
import 'package:flutter_application_1/state_management_demo/scoped_widget/widget1.dart';
import 'package:flutter_application_1/state_management_demo/scoped_widget/widget2.dart';
import 'package:flutter_application_1/state_management_demo/scoped_widget/widget3.dart';
import 'package:flutter_application_1/state_management_demo/scoped_widget/counter_model.dart';
import 'package:flutter_application_1/state_management_demo/scoped_widget/my_counter.dart';
import 'package:scoped_model/scoped_model.dart';

class ScopedModelDemo extends StatefulWidget {
  const ScopedModelDemo({Key? key}) : super(key: key);

  @override
  State<ScopedModelDemo> createState() => _ScopedModelDemoState();
}

class _ScopedModelDemoState extends State<ScopedModelDemo> {
  var myCounter = MyCounter(0);
  @override
  Widget build(BuildContext context) {
    return ScopedModel(
      model: CounterModel(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Couter App using Scoped Model'),
        ),
        body: Column(
          children: [
            Widget1(),
            Divider(
              thickness: 10.0,
            ),
            Widget2(),
            Divider(
              thickness: 10.0,
            ),
            Widget3()
          ],
        ),
        floatingActionButton: ScopedModelDescendant<CounterModel>(
          builder: (context, child, model) => FloatingActionButton(
            onPressed: () {
              model.add();
            },
            child: const Icon(Icons.add),
          ),
        ),
      ),
    );
  }
}
