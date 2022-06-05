import 'package:flutter/material.dart';
import 'package:flutter_application_1/state_management_demo/mycounter.dart';

class Widget3 extends StatelessWidget {
  final Mycounter mycounter;
  const Widget3({Key? key, required this.mycounter}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      'Widget 3:${mycounter.counter}',
      style: TextStyle(fontSize: 30),
    );
  }
}
