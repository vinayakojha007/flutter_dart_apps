import 'package:flutter/material.dart';

class Flight extends StatelessWidget {
  const Flight({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [
            Color.fromARGB(255, 7, 233, 214),
            Color.fromARGB(255, 250, 122, 3),
          ])),
          height: MediaQuery.of(context).size.height,
          //color: Colors.purple,
          child: const Center(
            child: Text('Welcome To Flight Page',
                style: TextStyle(fontSize: 30.0, color: Colors.white)),
          ),
        ),
      ],
    );
  }
}
