import 'package:flutter/material.dart';
import 'package:flutter_application_1/state_management_demo/mycounter.dart';
import 'package:flutter_application_1/state_management_demo/widget3.dart';

class Widget2 extends StatelessWidget {
  final Mycounter mycounter;
  const Widget2({Key? key, required this.mycounter}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          'Widget 2',
          style: TextStyle(fontSize: 30),
        ),
        Widget3(mycounter: mycounter),
      ],
    );
  }
}
