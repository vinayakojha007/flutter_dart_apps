import 'package:flutter/material.dart';

class appbar extends StatelessWidget {
  const appbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: Icon(Icons.book_online),
      title: const Text('Bookings App'),
    );
  }
}
