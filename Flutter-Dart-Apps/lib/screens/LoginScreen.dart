import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Login_ScreenWidget extends StatefulWidget {
  const Login_ScreenWidget({Key? key}) : super(key: key);
  @override
  State<Login_ScreenWidget> createState() => _LoginScreenWidgetState();
}

class _LoginScreenWidgetState extends State<Login_ScreenWidget> {
  var email = '';
  var password = '';
  TextEditingController unameController = TextEditingController();
  TextEditingController passwdController = TextEditingController();
  String _message = '';
  final _formKey = GlobalKey<FormState>();

  register() async {
    try {
      await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
      }
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login Form'),
      ),
      body: Form(
        key: _formKey,
        child: ListView(
          children: [
            Image.network(
              'https://upload.wikimedia.org/wikipedia/commons/e/e8/Kellton_tech_logo.png',
              width: 200,
              height: 200,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: unameController,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  labelText: 'User name',
                  hintText: 'Enter User name',
                  icon: const Icon(Icons.person),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(6.0),
                  ),
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return "User name cant be blank";
                  }
                  return null;
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: passwdController,
                obscureText: true,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  labelText: 'Password',
                  hintText: 'Enter Password',
                  icon: const Icon(Icons.lock),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(6.0),
                  ),
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Password cant be blank";
                  }
                  return null;
                },
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      if (_formKey.currentState!.validate()) {
                        var uname = unameController.text;
                        var passwd = passwdController.text;
                      }
                    });
                    register();
                  },
                  child: const Text('Login'),
                ),
                const SizedBox(width: 20.0),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      unameController.text =
                          passwdController.text = _message = '';
                    });
                  },
                  child: const Text('Clear'),
                ),
              ],
            ),
            const SizedBox(height: 10.0),
            Center(
              child: Text(
                _message,
                textDirection: TextDirection.ltr,
                textAlign: TextAlign.center,
              ),
            )
          ],
        ),
      ),
    );
  }
}
