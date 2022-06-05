import 'package:flutter/material.dart';
import 'package:flutter_application_1/drawer/create_drawer.dart';
import 'package:flutter_application_1/widgets/flight_widget.dart';

class FlightFragment extends StatelessWidget {
  static const String routeName = '/flights';

  const FlightFragment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bookings App'),
      ),
      body: const Flight(),
      drawer: CreateDrawer(),
    );
  }
}
