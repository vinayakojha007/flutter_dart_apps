import 'package:flutter/material.dart';
import 'package:flutter_application_1/state_management_demo/widget1.dart';
import 'package:flutter_application_1/state_management_demo/widget2.dart';
import 'package:flutter_application_1/state_management_demo/widget3.dart';

import 'mycounter.dart';

class LimitationOfSetStateDemo extends StatefulWidget {
  const LimitationOfSetStateDemo({Key? key}) : super(key: key);

  @override
  State<LimitationOfSetStateDemo> createState() =>
      _LimitationOfSetStateDemoState();
}

class _LimitationOfSetStateDemoState extends State<LimitationOfSetStateDemo> {
  var mycounter = Mycounter(0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Limitations of setState method'),
      ),
      body: Column(
        children: [
          Widget1(),
          const Divider(
            thickness: 10.0,
          ),
          Widget2(mycounter: mycounter),
          const Divider(
            thickness: 10.0,
          ),
          Widget3(mycounter: mycounter)
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            mycounter.increseCount();
          });
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
