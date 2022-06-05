import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'update_user_details.dart';

class DisplayUserDetails extends StatefulWidget {
  const DisplayUserDetails({Key? key}) : super(key: key);

  @override
  State<DisplayUserDetails> createState() => _DisplayUserDetailsState();
}

class _DisplayUserDetailsState extends State<DisplayUserDetails> {
  final Stream<QuerySnapshot> usersData =
      FirebaseFirestore.instance.collection('users').snapshots();

  CollectionReference users = FirebaseFirestore.instance.collection('users');

  Future<void> removeUser(id) {
    debugPrint('Removing User with the $id');
    return users
        .doc(id)
        .delete()
        .then(
          (value) => Get.snackbar('Delete', 'User Deleted with $id'),
        )
        .catchError(
          (onError) =>
              Get.snackbar('Error', 'Error while removing the user\n$onError'),
        );
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
      stream: usersData,
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          Get.snackbar('Error', 'Unknown Error, Something went Wrong');
        }

        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }

        final List userDocs = [];
        snapshot.data!.docs.map((document) {
          Map userDoc = document.data() as Map<String, dynamic>;
          userDocs.add(userDoc);
          userDoc['id'] = document.id;
        }).toList();

        return SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Table(
            border: TableBorder.all(),
            columnWidths: const <int, TableColumnWidth>{
              1: FixedColumnWidth(140),
            },
            defaultVerticalAlignment: TableCellVerticalAlignment.middle,
            children: [
              TableRow(children: [
                TableCell(
                  child: Container(
                    color: Colors.blueAccent,
                    child: const Center(
                      child: Text(
                        'Username ',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                TableCell(
                  child: Container(
                    color: Colors.blueAccent,
                    child: const Center(
                      child: Text(
                        'Password ',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                TableCell(
                  child: Container(
                    color: Colors.blueAccent,
                    child: const Center(
                      child: Text(
                        'Email Id ',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                TableCell(
                  child: Container(
                    color: Colors.blueAccent,
                    child: const Center(
                      child: Text(
                        'Actions',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ]),
              for (var row = 0; row < userDocs.length; row++) ...{
                TableRow(children: [
                  TableCell(
                    child: Center(
                      child: Text(
                        userDocs[row]['userName'],
                        style: const TextStyle(fontSize: 18.0),
                      ),
                    ),
                  ),
                  TableCell(
                    child: Center(
                      child: Text(
                        userDocs[row]['password'],
                        style: const TextStyle(fontSize: 18.0),
                      ),
                    ),
                  ),
                  TableCell(
                    child: Center(
                      child: Text(
                        userDocs[row]['emailId'],
                        style: const TextStyle(fontSize: 18.0),
                      ),
                    ),
                  ),
                  TableCell(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        IconButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => UpdateUserDetails(
                                      id: userDocs[row]['id']),
                                ),
                              );
                            },
                            icon: const Icon(Icons.edit),
                            color: Colors.orange),
                        IconButton(
                          icon: const Icon(Icons.delete, color: Colors.red),
                          onPressed: () => {
                            removeUser(userDocs[row]['id']),
                          },
                        )
                      ],
                    ),
                  ),
                ])
              }
            ],
          ),
        );
      },
    );
  }
}
