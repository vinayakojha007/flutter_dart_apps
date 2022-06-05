import 'package:flutter/material.dart';
import 'package:flutter_application_1/state_management_demo/inherited_widget.dart/counter_inherited_widget.dart';
import 'package:flutter_application_1/state_management_demo/inherited_widget.dart/my_counter.dart';
import 'package:flutter_application_1/state_management_demo/inherited_widget.dart/widget1.dart';
import 'package:flutter_application_1/state_management_demo/inherited_widget.dart/widget2.dart';
import 'package:flutter_application_1/state_management_demo/inherited_widget.dart/widget3.dart';

class InhertiedCounterAppdemo extends StatefulWidget {
  const InhertiedCounterAppdemo({Key? key}) : super(key: key);

  @override
  State<InhertiedCounterAppdemo> createState() =>
      _InhertiedCounterAppdemoState();
}

class _InhertiedCounterAppdemoState extends State<InhertiedCounterAppdemo> {
  var myCounter = My_counter(0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inherited Widget Demo'),
      ),
      body: CounterInheritedWidget(
        myCounter: myCounter,
        childWidget: Column(
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
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            myCounter.increaseCount();
            debugPrint('${myCounter.counter}');
          });
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
