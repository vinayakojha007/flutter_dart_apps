import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/cabs_widget.dart';
import 'package:flutter_application_1/widgets/flight_widget.dart';
import 'package:flutter_application_1/widgets/hotel_widget.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class SalBookingBottomNavApp extends StatefulWidget {
  const SalBookingBottomNavApp({Key? key}) : super(key: key);

  @override
  State<SalBookingBottomNavApp> createState() => _SalBookingBottomNavAppState();
}

class _SalBookingBottomNavAppState extends State<SalBookingBottomNavApp> {
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
      bottomNavigationBar: SalomonBottomBar(
        currentIndex: _currentIndex,
        onTap: (i) => setState(() => _currentIndex = i),
        items: [
          SalomonBottomBarItem(
            icon: Icon(Icons.hotel),
            title: Text('Hotels'),
            selectedColor: Colors.redAccent,
          ),
          SalomonBottomBarItem(
            icon: Icon(Icons.flight),
            title: Text('Flight'),
            selectedColor: Colors.orangeAccent,
          ),
          SalomonBottomBarItem(
            icon: Icon(Icons.directions_car),
            title: Text('Cabs'),
            selectedColor: Colors.blueAccent,
          ),
        ],
      ),
    );
  }
}
