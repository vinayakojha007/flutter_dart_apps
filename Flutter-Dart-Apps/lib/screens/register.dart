import 'package:flutter/material.dart';
import 'package:flutter_application_1/model/user_info.dart';
import 'package:flutter_application_1/screens/user_details.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  var unameController = TextEditingController();
  var passwdController = TextEditingController();
  var emailController = TextEditingController();
  var mobileController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Registration Form'),
        leading: const Icon(Icons.app_registration),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            createTextField(unameController, 'User name'),
            createTextField(passwdController, 'Password', isSecured: true),
            createTextField(emailController, 'Email Id',
                keyboard: TextInputType.emailAddress),
            createTextField(mobileController, 'Mobile No',
                keyboard: TextInputType.phone),
            ElevatedButton(
              onPressed: () {
                _onRegister();
              },
              child: const Text('Register'),
            ),
          ],
        ),
      ),
    );
  }

  TextField createTextField(TextEditingController editController, String text,
      {TextInputType keyboard = TextInputType.text, bool isSecured = false}) {
    return TextField(
      controller: editController,
      obscureText: isSecured,
      decoration: InputDecoration(labelText: text, hintText: 'Enter $text'),
      keyboardType: keyboard,
      style: Theme.of(context).textTheme.bodyText1,
    );
  }

  void _onRegister() {
    String uname = unameController.text;
    String passwd = passwdController.text;
    String email = emailController.text;
    String mobile = mobileController.text;

    Navigator.pushNamed(context, UserDetailsScreen.routeName,
        arguments: UserInfo(uname, passwd, email, mobile));
  }
}
