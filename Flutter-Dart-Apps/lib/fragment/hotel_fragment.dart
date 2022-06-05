import 'package:flutter/material.dart';
import 'package:flutter_application_1/drawer/create_drawer.dart';
import 'package:flutter_application_1/widgets/hotel_widget.dart';

class HotelFragment extends StatelessWidget {
  static const String routeName = '/hotels';

  const HotelFragment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bookings App'),
      ),
      body: const Hotel(),
      drawer:  CreateDrawer(),
    );
  }
}
