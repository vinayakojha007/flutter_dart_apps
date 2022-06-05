import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:flutter/material.dart';

class AddUsers extends StatelessWidget {
  final String userName;
  final String password;
  final String emailId;

  const AddUsers({
    Key? key,
    required this.userName,
    required this.emailId,
    required this.password,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    CollectionReference userss = FirebaseFirestore.instance.collection('users');
    Future<void> addUsers() {
      return userss
          .add({
            'userName': userName,
            'password': password,
            'emailId': emailId,
          })
          .then(
            (value) => debugPrint('User Added...'),
          )
          .catchError(
            (onError) => debugPrint('Failed to create a new user : $onError'),
          );
    }

    return Center(
      child: ElevatedButton(
        child: const Text('Add New User'),
        onPressed: () {
          addUsers();
        },
      ),
    );
  }
}
