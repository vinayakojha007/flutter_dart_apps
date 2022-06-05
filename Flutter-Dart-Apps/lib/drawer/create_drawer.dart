import 'package:flutter/material.dart';
import 'package:flutter_application_1/fragment/cabs_fragment.dart';
import 'package:flutter_application_1/fragment/flight_fragment.dart';
import 'package:flutter_application_1/fragment/hotel_fragment.dart';

class CreateDrawer extends StatelessWidget {
  const CreateDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          const DrawerHeader(
            child: Center(
              child: Text(
                'Bookings App',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.lightBlueAccent, Colors.blueAccent],
              ),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.hotel),
            title: const Text('Hotel Bookings'),
            onTap: () {
              Navigator.of(context).pushNamed(HotelFragment.routeName);
            },
          ),
          ListTile(
            leading: const Icon(Icons.flight),
            title: const Text('Flight Bookings'),
            onTap: () {
              Navigator.of(context).pushNamed(FlightFragment.routeName);
            },
          ),
          ListTile(
            leading: const Icon(Icons.directions_car),
            title: const Text('Cabs Bookings'),
            onTap: () {
              Navigator.of(context).pushNamed(CabFragment.routeName);
            },
          ),
        ],
      ),
    );
  }
}
