import 'package:flutter/material.dart';

class Hotel extends StatelessWidget {
  const Hotel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [
            Colors.lightBlue,
            Colors.greenAccent,
          ])),
          height: MediaQuery.of(context).size.height,
          child: const Center(
            child: Text(
              'Welcome To Hotel Page',
              style: TextStyle(fontSize: 30.0, color: Colors.white),
            ),
          ),
        ),
      ],
    );
  }
}
