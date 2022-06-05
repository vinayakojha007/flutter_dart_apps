// import 'package:camera/camera.dart';

// import 'package:flutter_application_1/screens/login_screen.dart';
// import 'package:flutter_application_1/screens/register_login/login.dart';
// import 'package:flutter_application_1/screens/columnApp.dart';
// import 'package:flutter_application_1/screens/counter_app.dart';
// import 'package:flutter_application_1/screens/simple_calculator.dart';
// import 'package:flutter_application_1/sp_demo/login.dart';
// import 'package:flutter_application_1/sp_demo/welcome.dart';
// import 'package:flutter_application_1/state_management_demo/demo/page1.dart';
// import 'package:shared_preferences/shared_preferences.dart';
// import 'package:flutter_application_1/screens/bakery_ui.dart';
// import 'package:flutter_application_1/state_management_demo/getx/counter_app_screen.dart';
// import 'package:flutter_application_1/screens/counter_app.dart';
// import 'package:flutter_application_1/state_management_demo/getx/product_catalog_view.dart';
// import 'package:get/get.dart';
// import 'package:flutter_application_1/camera/camera_app_demo.dart';
// import 'package:flutter_application_1/screens/geolocattion_screen.dart';
// import 'package:flutter_application_1/screens/notes_page.dart';
// import 'package:flutter_application_1/state_management_demo/provider/counter_provider_mixin.dart';
// import 'package:flutter_application_1/state_management_demo/provider/counter_provider_screen.dart';
// import 'package:flutter_application_1/state_management_demo/provider/product_catalog_screen.dart';
// import 'package:flutter_application_1/state_management_demo/provider/proxyprovider/counter_proxyprovider.dart';
// import 'package:flutter_application_1/state_management_demo/provider/user_card_mixin.dart';
// import 'package:provider/provider.dart';
// import 'package:flutter_application_1/state_management_demo/bloc_using_libaray_demo/counter_page.dart';
// import 'package:flutter_application_1/state_management_demo/bloc_using_libaray_demo/counter_view.dart';

// import 'package:flutter_application_1/state_management_demo/BLOC _Arc/counter_bloc_app.dart';
// import 'package:redux/redux.dart';
// import 'package:flutter_application_1/state_management_demo/Redux/redux.dart';
// import 'package:flutter_application_1/screens/diary_loginscreen.dart';
// import 'package:flutter_application_1/screens/diary_page.dart';
// import 'package:flutter_application_1/screens/diary_registerscreen.dart';
// import 'package:flutter_application_1/screens/notes_page.dart';

// import 'package:flutter_application_1/screens/categories_mealsscreen.dart';
// import 'package:flutter_application_1/screens/categories_screen.dart';
// import 'package:flutter_application_1/screens/home_screen.dart';
// import 'package:flutter_application_1/screens/notes_page.dart';
//import 'package:flutter_application_1/Listview%20demo/gv_demo.dart';
//import 'package:flutter_application_1/Listview%20demo/product_deatils_screen.dart';
//import 'package:flutter_application_1/Listview%20demo/lv_demo4.dart';
//import 'package:flutter_application_1/Listview%20demo/lv_demo3.dart';
//import 'package:flutter_application_1/Listview%20demo/speaker_details.dart';
// import 'package:flutter_application_1/screens/drawer_hosting.dart';
//import 'package:flutter_application_1/screens/twitter.dart';

//import 'package:flutter_application_1/screens/bottom_nav.dart';
//import 'package:flutter_application_1/screens/booking_bottom_nav.dart';
//import 'package:flutter_application_1/screens/bottom_nav.dart';
//import 'package:flutter_application_1/screens/salomon_nav.dart';
// import 'package:flutter_application_1/screens/booking_bottom_nav.dart';
// import 'package:flutter_application_1/screens/npage1.dart';
// import 'package:flutter_application_1/screens/page1v3.dart';
// import 'package:flutter_application_1/screens/page2.dart';
// import 'package:flutter_application_1/screens/page2v3.dart';
// import 'package:flutter_application_1/screens/register.dart';
// import 'package:flutter_application_1/screens/user_details.dart';
//import 'package:flutter_application_1/screens/npage2.dart';
//import 'package:flutter_application_1/screens/page1.dart';
//import 'package:flutter_application_1/screens/bmi_input_screen.dart';
//import 'package:flutter_application_1/screens/LoginScreen.dart';
//import 'package:flutter_application_1/screens/calculator.dart';
//import 'package:flutter_application_1/screens/fuelcalculate.dart';
//import 'package:flutter_application_1/screens/profile.dart';
//import 'package:flutter_application_1/screens/columnApp.dart';
//import 'package:flutter_application_1/screens/profile.dart';
//import 'package:flutter_application_1/screens/login_screen.dart';
//import 'package:flutter_application_1/screens/counter_app.dart';
//import 'package:flutter_application_1/screens/welcome.dart';

// void main() {
//   runApp(MaterialApp(
//       title: 'Hasty Tasty',
//       theme: ThemeData(
//         backgroundColor: Colors.indigoAccent,
//         primarySwatch: Colors.pink,
//         accentColor: Colors.amber,
//         canvasColor: Color.fromRGBO(255, 254, 229, 1),
//       ),
//       home: CategoriesScreen(),
//       debugShowCheckedModeBanner: false,
//       routes: {'/category-meals': (context) => CategoryMeals()}));
// }

// class NavigationDemoApp extends StatelessWidget {
//   const NavigationDemoApp({Key? key}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       initialRoute: '/',
//       routes: {
//         '/': (context) => LVDemo3(),
//         SpeakerDetails.routeName: (context) => const SpeakerDetails(),
//       },
//     );
//   }
// }

// class MyNotesDbApp extends StatelessWidget {
//   const MyNotesDbApp({Key? key}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         themeMode: ThemeMode.dark,
//         theme: ThemeData(
//           primaryColor: Colors.black,
//           scaffoldBackgroundColor: Colors.blueGrey.shade900,
//           appBarTheme: const AppBarTheme(
//               backgroundColor: Colors.transparent, elevation: 0),
//         ),
//         home: const NotesPage(
//           noteId: 0,
//         ));
//   }
// }

// Future main() async {
//   runApp(const MyNotesDbApp());
// }

// void main() {
//   runApp(MaterialApp(
//     debugShowCheckedModeBanner: false,
//     home: DiaryLoginScreen(),
//     routes: {
//       'login': ((context) => DiaryLoginScreen()),
//       'register': ((context) => DiaryRegister()),
//     },
//   ));
// }

// class MyNotesDbApp extends StatelessWidget {
//   const MyNotesDbApp({Key? key}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         themeMode: ThemeMode.dark,
//         theme: ThemeData(
//           primaryColor: Colors.black,
//           scaffoldBackgroundColor: Colors.blueGrey.shade900,
//           appBarTheme: const AppBarTheme(
//               backgroundColor: Colors.transparent, elevation: 0),
//         ),
//         home: const DiarysPage());
//   }
// }

// Future main() async {
//   runApp(const MyNotesDbApp());
// }

// Future main() async {
//   final store = Store<int>(counterReducer, initialState: 0);
//   runApp(FlutterReduxApp(store: store));
// }

// class LocationApp extends StatelessWidget {
//   const LocationApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: GeoLocationScreen(),
//     );
//   }
// }

// void main() {
//   runApp(const LocationApp());
// }

// Future<void> main() async {
// //? Ensure that plugin services are initialized so that availableCameras can be called before runApp

//   WidgetsFlutterBinding.ensureInitialized();
// //? Get the List of the available Cameras on the Device
//   final cameras = await availableCameras();
// //? Get a camera from the avaiable list of cameras
//   final firstCamera = cameras.first;
//   runApp(
//     MaterialApp(
//       theme: ThemeData.dark(),
//       home: CameraApp(camera: firstCamera),
//     ),
//   );
// }

// class SMDemos extends StatelessWidget {
//   const SMDemos({Key? key}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       debugShowCheckedModeBanner: false,
//       // home: ProductCatalog(),
//     );
//   }
// }

// Future main() async {
//   runApp(
//     MultiProvider(
//       providers: [
//         Provider(create: (_) => ProxyProviderdemo()),
//       ],
//       child: const SMDemos(),
//     ),
//   );
// }

// Future main() async {
//   runApp(const RestServicesDemoApp());
// }

// class RestServicesDemoApp extends StatelessWidget {
//   const RestServicesDemoApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//         debugShowCheckedModeBanner: false, home: CoinAppDemo());
//   }
// }

// void main() {
//   runApp(MaterialApp(
//     debugShowCheckedModeBanner: false,
//     home: BakeryApp(),
//   ));
// }

// Future main() async {
//   runApp(const StateManagementDemoApp());
// }

// class StateManagementDemoApp extends StatelessWidget {
//   const StateManagementDemoApp({Key? key}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return GetMaterialApp(
//         debugShowCheckedModeBanner: false, home: CounterGetApp());
//   }
// }

// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Login_ScreenWidget(),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:flutter_application_1/project_flutter_vinayak/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Splash_Screen(),
    );
  }
}
