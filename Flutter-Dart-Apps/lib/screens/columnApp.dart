import 'package:flutter/material.dart';

class columnApp extends StatelessWidget {
  const columnApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.cloud),
        title: const Text('Kellton Tech Solutions LTD.'),
      ),
      body: Container(
        height: 400,
        color: Colors.yellow,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 100,
                width: 100,
                color: Colors.red,
                child: const Center(
                  child: Text(
                    'Red',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              const SizedBox(
                width: 30,
              ),
              Container(
                height: 100,
                width: 100,
                color: Colors.green,
                child: const Center(
                  child: Text(
                    'Green',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              const SizedBox(
                width: 30,
              ),
              Container(
                height: 100,
                width: 100,
                color: Colors.blue,
                child: const Center(
                  child: Text(
                    'Blue',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ]),
      ),
    );
  }
}
