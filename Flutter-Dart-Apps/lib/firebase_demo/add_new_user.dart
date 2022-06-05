import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class AddNewUser extends StatefulWidget {
  const AddNewUser({Key? key}) : super(key: key);

  @override
  State<AddNewUser> createState() => _AddNewUserState();
}

class _AddNewUserState extends State<AddNewUser> {
  final _formKey = GlobalKey<FormState>();

  final unameController = TextEditingController();
  final passwdController = TextEditingController();
  final emailController = TextEditingController();

  @override
  void dispose() {
    unameController.dispose();
    passwdController.dispose();
    emailController.dispose();
    super.dispose();
  }

  var userName = '';
  var password = '';
  var emailId = '';

  CollectionReference users = FirebaseFirestore.instance.collection('users');

  Future<void> addUser() {
    return users
        .add({
          'userName': userName,
          'password': password,
          'emailId': emailId,
        })
        .then(
          (value) => debugPrint('User Added'),
        )
        .catchError(
          (onError) => debugPrint('Failed to add new user: $onError'),
        );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Add New User')),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            children: [
              TextFormField(
                controller: unameController,
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
              const SizedBox(height: 10.0),
              TextFormField(
                controller: passwdController,
                obscureText: true,
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
              const SizedBox(height: 10.0),
              TextFormField(
                controller: emailController,
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
              const SizedBox(height: 10.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        setState(() {
                          userName = unameController.text;
                          password = passwdController.text;
                          emailId = emailController.text;
                          addUser();
                        });
                      }
                    },
                    child: const Text('Add User'),
                  ),
                  const SizedBox(width: 10.0),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        unameController.text = '';
                        passwdController.text = '';
                        emailController.text = '';
                      });
                    },
                    child: const Text('Reset'),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
