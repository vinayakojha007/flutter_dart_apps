import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/cabs_widget.dart';
import 'package:flutter_application_1/widgets/flight_widget.dart';
import 'package:flutter_application_1/widgets/hotel_widget.dart';
//import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class butBookingBottomNavApp extends StatefulWidget {
  const butBookingBottomNavApp({Key? key}) : super(key: key);

  @override
  State<butBookingBottomNavApp> createState() => _butBookingBottomNavAppState();
}

class _butBookingBottomNavAppState extends State<butBookingBottomNavApp> {
  static int _currentIndex = 0;

  final tab_widget = [const Hotel(), const Flight(), const Cabs()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.book_online),
        title: const Text('Bookings App'),
      ),
      body: tab_widget[_currentIndex],
      bottomNavigationBar: BottomNavyBar(
        selectedIndex: _currentIndex,
        showElevation: true, // use this to remove appBar's elevation
        onItemSelected: (index) => setState(() {
          _currentIndex = index;
        }),
        items: [
          BottomNavyBarItem(
              icon: const Icon(Icons.hotel),
              title: const Text('HOtels'),
              activeColor: Colors.red),
          BottomNavyBarItem(
              icon: const Icon(Icons.flight),
              title: const Text('FLights'),
              activeColor: Colors.purpleAccent),
          BottomNavyBarItem(
              icon: const Icon(Icons.directions_car),
              title: const Text('Caaaaabs'),
              activeColor: Colors.pink),
        ],
      ),
    );
  }
}
