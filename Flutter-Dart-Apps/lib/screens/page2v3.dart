import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/page2.dart';

class Page2v3 extends StatelessWidget {
  const Page2v3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page 1'),
      ),
      body: const Center(
        child: Text(
          'Welcome to Page 1',
          style: TextStyle(
              fontSize: 50, backgroundColor: Colors.blue, color: Colors.black),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => const Page2()));
        },
        child: const Icon(Icons.arrow_forward),
      ),
    );
  }
}
