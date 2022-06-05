import 'package:flutter/material.dart';
import 'package:flutter_application_1/fragment/cabs_fragment.dart';
import 'package:flutter_application_1/fragment/default_fragment.dart';
import 'package:flutter_application_1/fragment/flight_fragment.dart';
import 'package:flutter_application_1/fragment/hotel_fragment.dart';
import 'package:flutter_application_1/route/page_route.dart';

class BookingsDrawerApp extends StatelessWidget {
  const BookingsDrawerApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: PageRoutes.home,
      routes: {
        PageRoutes.home: (context) => const DefaultFragment(),
        PageRoutes.hotel: (context) => const HotelFragment(),
        PageRoutes.flight: (context) => const FlightFragment(),
        PageRoutes.cab: (context) => const CabFragment()
      },
    );
  }
}
