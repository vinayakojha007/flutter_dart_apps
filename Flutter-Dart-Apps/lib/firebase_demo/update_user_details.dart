import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UpdateUserDetails extends StatefulWidget {
  final String id;
  const UpdateUserDetails({Key? key, required this.id}) : super(key: key);

  @override
  State<UpdateUserDetails> createState() => _UpdateUserDetailsState();
}

class _UpdateUserDetailsState extends State<UpdateUserDetails> {
  final _formKey = GlobalKey<FormState>();

  CollectionReference users = FirebaseFirestore.instance.collection('users');

  Future<void> updateUser(id, userName, passwd, emailId) {
    return users
        .doc(id)
        .update({
          'userName': userName,
          'password': passwd,
          'emailId': emailId,
        })
        .then(
          (value) => Get.snackbar('Update', 'User Data Updated Successfully'),
        )
        .catchError(
          (onError) => Get.snackbar(
              'Error', 'Error while updating the user data\n$onError'),
        );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Update User Data'),
      ),
      body: Form(
        key: _formKey,
        child: FutureBuilder<DocumentSnapshot<Map<String, dynamic>>>(
          future: FirebaseFirestore.instance
              .collection('users')
              .doc(widget.id)
              .get(),
          builder: (context, snapshot) {
            if (snapshot.hasError) {
              Get.snackbar('Error', 'Unkown Exception Raised');
            }
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(child: CircularProgressIndicator());
            }

            var data = snapshot.data!.data();
            var userName = data!['userName'];
            var passwd = data['password'];
            var emailId = data['emailId'];

            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView(
                children: [
                  TextFormField(
                    initialValue: userName,
                    onChanged: (value) => userName = value,
                    decoration: const InputDecoration(
                        labelText: 'User name:',
                        labelStyle: TextStyle(fontSize: 20.0),
                        border: OutlineInputBorder(),
                        errorStyle:
                            TextStyle(color: Colors.redAccent, fontSize: 15)),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Username cant be blank';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  TextFormField(
                    initialValue: passwd,
                    onChanged: (value) => userName = value,
                    decoration: const InputDecoration(
                        labelText: 'Password:',
                        labelStyle: TextStyle(fontSize: 20.0),
                        border: OutlineInputBorder(),
                        errorStyle:
                            TextStyle(color: Colors.redAccent, fontSize: 15)),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Password cant be blank';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  TextFormField(
                    initialValue: emailId,
                    onChanged: (value) => emailId = value,
                    keyboardType: TextInputType.emailAddress,
                    decoration: const InputDecoration(
                        labelText: 'Email Id:',
                        labelStyle: TextStyle(fontSize: 20.0),
                        border: OutlineInputBorder(),
                        errorStyle:
                            TextStyle(color: Colors.redAccent, fontSize: 15)),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Email cant be blank';
                      } else if (!value.contains('@')) {
                        return 'Invalid Email Id';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            updateUser(widget.id, userName, passwd, emailId);
                            Navigator.pop(context);
                          }
                        },
                        child: const Text('Update'),
                      ),
                      const SizedBox(width: 10.0),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            userName = '';
                            passwd = '';
                            emailId = '';
                          });
                        },
                        child: const Text('Reset'),
                      ),
                    ],
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
