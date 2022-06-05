import 'package:flutter/material.dart';

class Cabs extends StatelessWidget {
  const Cabs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [
            Color.fromARGB(255, 244, 69, 11),
            Color.fromARGB(255, 245, 7, 157),
          ])),
          height: MediaQuery.of(context).size.height,
          child: const Center(
            child: Text(
              'Welcome To Cabs Page',
              style: TextStyle(fontSize: 30.0, color: Colors.white),
            ),
          ),
        ),
      ],
    );
  }
}
