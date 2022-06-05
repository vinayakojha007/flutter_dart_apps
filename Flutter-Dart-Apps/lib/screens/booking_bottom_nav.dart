import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/cabs_widget.dart';
import 'package:flutter_application_1/widgets/flight_widget.dart';
import 'package:flutter_application_1/widgets/hotel_widget.dart';

class BookingBottomNavApp extends StatefulWidget {
  const BookingBottomNavApp({Key? key}) : super(key: key);

  @override
  State<BookingBottomNavApp> createState() => _BookingBottomNavAppState();
}

class _BookingBottomNavAppState extends State<BookingBottomNavApp> {
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
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        selectedFontSize: 25,
        unselectedFontSize: 14,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.hotel),
            label: 'Hotels',
            backgroundColor: Colors.greenAccent,
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.flight),
              label: 'Flight',
              backgroundColor: Colors.greenAccent),
          BottomNavigationBarItem(
            icon: Icon(Icons.directions_car),
            label: 'Cabs',
            backgroundColor: Colors.greenAccent,
          ),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
