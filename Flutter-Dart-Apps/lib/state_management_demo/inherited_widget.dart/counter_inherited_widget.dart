import 'package:flutter/material.dart';
import 'package:flutter_application_1/state_management_demo/inherited_widget.dart/my_counter.dart';

class CounterInheritedWidget extends InheritedWidget {
  final My_counter myCounter;
  final Widget childWidget;

  const CounterInheritedWidget(
      {Key? key, required this.myCounter, required this.childWidget})
      : super(key: key, child: childWidget);

  @override
  bool updateShouldNotify(covariant CounterInheritedWidget oldWidget) {
    return myCounter != oldWidget.myCounter;
  }

  static CounterInheritedWidget? of(BuildContext context) => context
      .dependOnInheritedWidgetOfExactType(aspect: CounterInheritedWidget);
}
