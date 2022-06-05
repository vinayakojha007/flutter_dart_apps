import 'package:flutter/material.dart';
import 'package:flutter_application_1/service/calculator.dart';

class SimpleCalApp extends StatefulWidget {
  const SimpleCalApp({Key? key}) : super(key: key);

  @override
  State<SimpleCalApp> createState() => _SimpleCalAppState();
}

class _SimpleCalAppState extends State<SimpleCalApp> {
  TextEditingController no1Controller = TextEditingController();
  TextEditingController no2Controller = TextEditingController();
  TextEditingController resultController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('My Simaple Calculator'),
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              TextField(
                controller: no1Controller,
                decoration: const InputDecoration(
                  labelText: 'Enter No.1',
                  hintText: 'Enter the value for No.1',
                ),
              ),
              const SizedBox(height: 10),
              TextField(
                controller: no2Controller,
                decoration: const InputDecoration(
                  labelText: 'Enter No.2',
                  hintText: 'Enter the value for No.2',
                ),
              ),
              const SizedBox(height: 10),
              TextField(
                controller: resultController,
                enabled: false,
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        var service = calculator();
                        int no1 = int.parse(no1Controller.text);
                        int no2 = int.parse(no2Controller.text);
                        resultController.text =
                            service.add(no1, no2).toString();
                      });
                    },
                    child: const Text(
                      'Add',
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        var service = calculator();
                        int no1 = int.parse(no1Controller.text);
                        int no2 = int.parse(no2Controller.text);
                        resultController.text =
                            service.mul(no1, no2).toString();
                      });
                    },
                    child: const Text(
                      'Multiply',
                    ),
                  ),
                ],
              )
            ],
          ),
        ));
  }
}
