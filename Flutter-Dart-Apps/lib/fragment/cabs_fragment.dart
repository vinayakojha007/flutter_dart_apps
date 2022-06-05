import 'package:flutter/material.dart';
import 'package:flutter_application_1/drawer/create_drawer.dart';
import 'package:flutter_application_1/widgets/cabs_widget.dart';

class CabFragment extends StatelessWidget {
  static const String routeName = '/cabs';

  const CabFragment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bookings App'),
      ),
      body: const Cabs(),
      drawer: CreateDrawer(),
    );
  }
}
