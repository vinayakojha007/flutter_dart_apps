import 'package:flutter_application_1/fragment/cabs_fragment.dart';
import 'package:flutter_application_1/fragment/default_fragment.dart';
import 'package:flutter_application_1/fragment/flight_fragment.dart';
import 'package:flutter_application_1/fragment/hotel_fragment.dart';

class PageRoutes {
  static const String home = DefaultFragment.routeName;
  static const String hotel = HotelFragment.routeName;
  static const String flight = FlightFragment.routeName;
  static const String cab = CabFragment.routeName;
}
