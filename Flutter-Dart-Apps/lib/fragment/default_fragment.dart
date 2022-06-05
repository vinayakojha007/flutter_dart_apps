import 'package:flutter/material.dart';
import 'package:flutter_application_1/drawer/create_drawer.dart';

class DefaultFragment extends StatelessWidget {
  static const String routeName = '/home';

  const DefaultFragment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bookings App'),
      ),
      body: Container(
        color: Colors.amberAccent,
        child: const Center(
            child: Text(
          'Bookings Made Easy....',
          style: TextStyle(fontSize: 30.0),
        )),
      ),
      drawer: CreateDrawer(),
    );
  }
}
