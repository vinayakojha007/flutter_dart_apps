import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/npage2.dart';

class NPage1 extends StatelessWidget {
  const NPage1({Key? key}) : super(key: key);

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
        onPressed: () async {
          var navigationResult = await Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const NPage2(),
            ),
          );

          if (navigationResult != null) {
            showDialog(
              context: context,
              builder: (context) => AlertDialog(
                title: const Text('Result \n'),
                content: Text('Data Recived :\n$navigationResult'),
              ),
            );
          } else {
            showDialog(
              context: context,
              builder: (context) => const AlertDialog(
                title: Text('Navigation Done using Back Button on Appbar'),
              ),
            );
          }
        },
        child: const Icon(Icons.arrow_forward),
      ),
    );
  }
}
