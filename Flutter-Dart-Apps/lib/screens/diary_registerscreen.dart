// import 'package:flutter/material.dart';
// import 'package:flutter_application_1/db/diary_database.dart';
// import 'package:flutter_application_1/model/diary.dart';

// class DiaryRegister extends StatefulWidget {
//   const DiaryRegister({Key? key}) : super(key: key);

//   @override
//   State<DiaryRegister> createState() => _DiaryRegisterState();
// }

// class _DiaryRegisterState extends State<DiaryRegister> {
//   var fullnameController = TextEditingController();
//   var unameController = TextEditingController();
//   var passwdController = TextEditingController();
//   var mobileController = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: BoxDecoration(
//         image: DecorationImage(
//             image: NetworkImage(
//                 'https://c-static.smartphoto.com/structured/repositoryimage/productcategory/calendars/agenda/material/0002/image/material2.jpg'),
//             fit: BoxFit.cover),
//       ),
//       child: Scaffold(
//         backgroundColor: Colors.transparent,
//         appBar: AppBar(
//           backgroundColor: Colors.transparent,
//           elevation: 0,
//         ),
//         body: ListView(
//           children: [
//             Container(
//               padding: EdgeInsets.only(left: 35, top: 30),
//               child: Text(
//                 'Create\nAccount',
//                 style: TextStyle(
//                     color: Color.fromARGB(255, 252, 79, 128),
//                     fontSize: 33,
//                     fontWeight: FontWeight.bold),
//               ),
//             ),
//             SingleChildScrollView(
//               child: Container(
//                 padding: EdgeInsets.only(
//                     top: MediaQuery.of(context).size.height * 0.28),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Container(
//                       margin: EdgeInsets.only(left: 35, right: 35),
//                       child: Column(
//                         children: [
//                           TextField(
//                             controller: fullnameController,
//                             keyboardType: TextInputType.text,
//                             style: TextStyle(color: Colors.white),
//                             decoration: InputDecoration(
//                                 enabledBorder: OutlineInputBorder(
//                                   borderRadius: BorderRadius.circular(10),
//                                   borderSide: BorderSide(
//                                     color: Colors.white,
//                                   ),
//                                 ),
//                                 focusedBorder: OutlineInputBorder(
//                                   borderRadius: BorderRadius.circular(10),
//                                   borderSide: BorderSide(
//                                     color: Colors.black,
//                                   ),
//                                 ),
//                                 labelText: 'Full Name',
//                                 hintText: "Enter Full Name",
//                                 hintStyle: TextStyle(color: Colors.white),
//                                 border: OutlineInputBorder(
//                                   borderRadius: BorderRadius.circular(10),
//                                 )),
//                           ),
//                           SizedBox(
//                             height: 30,
//                           ),
//                           TextField(
//                             controller: unameController,
//                             keyboardType: TextInputType.text,
//                             style: TextStyle(color: Colors.white),
//                             decoration: InputDecoration(
//                                 enabledBorder: OutlineInputBorder(
//                                   borderRadius: BorderRadius.circular(10),
//                                   borderSide: BorderSide(
//                                     color: Colors.white,
//                                   ),
//                                 ),
//                                 focusedBorder: OutlineInputBorder(
//                                   borderRadius: BorderRadius.circular(10),
//                                   borderSide: BorderSide(
//                                     color: Colors.black,
//                                   ),
//                                 ),
//                                 labelText: 'Email',
//                                 hintText: "Enter Email",
//                                 hintStyle: TextStyle(color: Colors.white),
//                                 border: OutlineInputBorder(
//                                   borderRadius: BorderRadius.circular(10),
//                                 )),
//                           ),
//                           SizedBox(
//                             height: 30,
//                           ),
//                           TextField(
//                             controller: mobileController,
//                             keyboardType: TextInputType.number,
//                             style: TextStyle(color: Colors.white),
//                             obscureText: true,
//                             decoration: InputDecoration(
//                                 enabledBorder: OutlineInputBorder(
//                                   borderRadius: BorderRadius.circular(10),
//                                   borderSide: BorderSide(
//                                     color: Colors.white,
//                                   ),
//                                 ),
//                                 focusedBorder: OutlineInputBorder(
//                                   borderRadius: BorderRadius.circular(10),
//                                   borderSide: BorderSide(
//                                     color: Colors.black,
//                                   ),
//                                 ),
//                                 labelText: 'Mobile No.',
//                                 hintText: "Enter Your Mobile No.",
//                                 hintStyle: TextStyle(color: Colors.white),
//                                 border: OutlineInputBorder(
//                                   borderRadius: BorderRadius.circular(10),
//                                 )),
//                           ),
//                           SizedBox(
//                             height: 30,
//                           ),
//                           TextField(
//                             controller: passwdController,
//                             keyboardType: TextInputType.text,
//                             style: TextStyle(color: Colors.white),
//                             obscureText: true,
//                             decoration: InputDecoration(
//                                 enabledBorder: OutlineInputBorder(
//                                   borderRadius: BorderRadius.circular(10),
//                                   borderSide: BorderSide(
//                                     color: Colors.white,
//                                   ),
//                                 ),
//                                 focusedBorder: OutlineInputBorder(
//                                   borderRadius: BorderRadius.circular(10),
//                                   borderSide: BorderSide(
//                                     color: Colors.black,
//                                   ),
//                                 ),
//                                 labelText: 'Password',
//                                 hintText: " Password",
//                                 hintStyle: TextStyle(color: Colors.white),
//                                 border: OutlineInputBorder(
//                                   borderRadius: BorderRadius.circular(10),
//                                 )),
//                           ),
//                           SizedBox(
//                             height: 40,
//                           ),
//                           Row(
//                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                             children: [
//                               Text(
//                                 'Register',
//                                 style: TextStyle(
//                                     color: Colors.black,
//                                     fontSize: 27,
//                                     fontWeight: FontWeight.w700),
//                               ),
//                               CircleAvatar(
//                                   radius: 30,
//                                   backgroundColor: Color(0xff4c505b),
//                                   child: ElevatedButton(
//                                     //color: Colors.white,
//                                     onPressed: () async {
//                                       var username = unameController.text;
//                                       var password = passwdController.text;
//                                       var diary = Diary(
//                                           userName: username,
//                                           password: password);
//                                       var result = await AppDairyDatabase
//                                           .instance
//                                           .registerUser(diary);
//                                       if (result) {
//                                         onPressed:
//                                         () {
//                                           Navigator.pushNamed(context, 'login');
//                                         };
//                                       } else {
//                                         Text(
//                                           "Error",
//                                           style: TextStyle(fontSize: 30.0),
//                                         );
//                                       }
//                                     },
//                                     child: Text('Login'),
//                                   ))
//                             ],
//                           ),
//                           SizedBox(
//                             height: 40,
//                           ),
//                           Row(
//                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                             children: [
//                               TextButton(
//                                 onPressed: () {
//                                   Navigator.pushNamed(context, 'login');
//                                 },
//                                 child: Text(
//                                   'Sign In',
//                                   textAlign: TextAlign.left,
//                                   style: TextStyle(
//                                       decoration: TextDecoration.underline,
//                                       color: Color(0xff4c505b),
//                                       fontSize: 18),
//                                 ),
//                                 style: ButtonStyle(),
//                               ),
//                             ],
//                           )
//                         ],
//                       ),
//                     )
//                   ],
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
