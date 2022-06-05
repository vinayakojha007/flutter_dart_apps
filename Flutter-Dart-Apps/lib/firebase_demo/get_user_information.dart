import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class GetUsersInformation extends StatefulWidget {
  const GetUsersInformation({Key? key}) : super(key: key);

  @override
  State<GetUsersInformation> createState() => _GetUsersInformationState();
}

class _GetUsersInformationState extends State<GetUsersInformation> {
  final Stream<QuerySnapshot> _userStream =
      FirebaseFirestore.instance.collection('users').snapshots();
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
      stream: _userStream,
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return const Text('Error while processing the request...');
        }

        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Text('Loading the data...');
        }

        return ListView(
          children: snapshot.data!.docs.map((document) {
            Map<String, dynamic> data =
                document.data()! as Map<String, dynamic>;
            return ListTile(
              title: Text(data['userName']),
              subtitle: Text(data['emailId']),
            );
          }).toList(),
        );
      },
    );
  }
}
