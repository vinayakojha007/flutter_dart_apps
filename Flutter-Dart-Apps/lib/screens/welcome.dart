import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [
        Colors.indigo,
        Colors.deepOrangeAccent,
      ])),
      child: const Text.rich(
        TextSpan(text: 'Welcome', style: TextStyle(fontSize: 30), children: [
          TextSpan(
              text: 'Flutter',
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
                color: Colors.tealAccent,
              )),
          TextSpan(
              text: '-dart',
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
                color: Colors.redAccent,
              ))
        ]),
      ),
    );
  }
}
