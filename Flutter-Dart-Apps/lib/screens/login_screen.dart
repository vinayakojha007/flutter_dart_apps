import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController unameController = TextEditingController();
  TextEditingController passwdController = TextEditingController();
  String _message = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login Form'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Image.network(
                'https://upload.wikimedia.org/wikipedia/commons/e/e8/Kellton_tech_logo.png'),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
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
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
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
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    var uname = unameController.text;
                    var passwd = passwdController.text;
                    _message = 'User name : $uname\nPassword : $passwd';
                  });
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
    );
  }
}
