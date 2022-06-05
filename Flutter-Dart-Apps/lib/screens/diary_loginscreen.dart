// import 'package:flutter/material.dart';
// import 'package:flutter_application_1/db/diary_database.dart';

// class DiaryLoginScreen extends StatefulWidget {
//   const DiaryLoginScreen({Key? key}) : super(key: key);

//   @override
//   State<DiaryLoginScreen> createState() => _DiaryLoginScreenState();
// }

// class _DiaryLoginScreenState extends State<DiaryLoginScreen> {
//   var unameController = TextEditingController();
//   var passwdController = TextEditingController();
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
//         body: Stack(
//           children: [
//             Container(
//               padding: EdgeInsets.only(left: 35, top: 130),
//               child: Text(
//                 'Diary Login',
//                 style: TextStyle(
//                     color: Color.fromARGB(255, 252, 79, 128),
//                     fontSize: 40,
//                     fontWeight: FontWeight.bold),
//               ),
//             ),
//             SingleChildScrollView(
//               child: Container(
//                 padding: EdgeInsets.only(
//                     top: MediaQuery.of(context).size.height * 0.5),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Container(
//                       margin: EdgeInsets.only(left: 35, right: 35),
//                       child: Column(
//                         children: [
//                           TextField(
//                             controller: unameController,
//                             keyboardType: TextInputType.text,
//                             style: TextStyle(color: Colors.black),
//                             decoration: InputDecoration(
//                                 fillColor: Colors.grey.shade100,
//                                 filled: true,
//                                 labelText: 'Email',
//                                 hintText: "Enter Your Email",
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
//                             style: TextStyle(),
//                             obscureText: true,
//                             decoration: InputDecoration(
//                                 fillColor: Colors.grey.shade100,
//                                 filled: true,
//                                 labelText: "Password",
//                                 hintText: "Password",
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
//                                 'Login',
//                                 style: TextStyle(
//                                     fontSize: 30, fontWeight: FontWeight.bold),
//                               ),
//                               CircleAvatar(
//                                 radius: 30,
//                                 backgroundColor: Color(0xff4c505b),
//                                 child: IconButton(
//                                     color: Colors.white,
//                                     onPressed: () async {
//                                       var username = unameController.text;
//                                       var password = passwdController.text;
//                                       var result = await AppDairyDatabase
//                                           .instance
//                                           .validateUser(username, password);
//                                       if (result) {
//                                         //Code to Naviagte for Success page
//                                       } else {
//                                         //Raise an alert or Toast message
//                                       }
//                                     },
//                                     icon: Icon(
//                                       Icons.arrow_forward,
//                                     )),
//                               )
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
//                                   Navigator.pushNamed(context, 'register');
//                                 },
//                                 child: Text(
//                                   'New User',
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
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
