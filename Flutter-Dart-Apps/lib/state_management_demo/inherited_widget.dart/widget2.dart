import 'package:flutter/material.dart';
import 'package:flutter_application_1/state_management_demo/inherited_widget.dart/widget3.dart';

class Widget2 extends StatelessWidget {
  const Widget2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          'Widget 2',
          style: TextStyle(
            fontSize: 30.0,
          ),
        ),
        Widget3(),
      ],
    );
  }
}
