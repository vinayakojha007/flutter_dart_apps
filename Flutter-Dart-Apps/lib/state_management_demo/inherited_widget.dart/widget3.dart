import 'package:flutter/material.dart';
import 'package:flutter_application_1/state_management_demo/inherited_widget.dart/counter_inherited_widget.dart';
import 'package:flutter_application_1/state_management_demo/inherited_widget.dart/my_counter.dart';

class Widget3 extends StatelessWidget {
  const Widget3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final My_counter my_counter = CounterInheritedWidget.of(context)!.myCounter;
    return Text(
      'Widget 3 :${my_counter.counter}',
      style: TextStyle(
        fontSize: 30.0,
      ),
    );
  }
}
