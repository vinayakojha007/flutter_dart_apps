import 'package:flutter/material.dart';

import 'add_new_user.dart';
import 'display_user_details.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text('Firebase CRUD Demo'),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const AddNewUser()));
              },
              child: const Text(
                'Add',
                style: TextStyle(fontSize: 20.0),
              ),
            )
          ],
        ),
      ),
      body: const DisplayUserDetails(),
    );
  }
}
