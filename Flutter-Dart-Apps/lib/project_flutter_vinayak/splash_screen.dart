import 'dart:async';

import 'package:flutter_application_1/project_flutter_vinayak/utils/my_theme.dart';
import 'package:path/path.dart' as Path;

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:path/path.dart';

class Splash_Screen extends StatefulWidget {
  const Splash_Screen({Key? key}) : super(key: key);

  @override
  State<Splash_Screen> createState() => _Splash_ScreenState();
}

class _Splash_ScreenState extends State<Splash_Screen>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _animation;

  @override
  void initState() {
    _animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 2000));
    _animation = CurvedAnimation(
        parent: _animationController,
        curve: Curves.bounceOut,
        reverseCurve: Curves.bounceIn);
    _animationController.forward();

    // Timer(
    //     const Duration(milliseconds: 2500),
    //     () => Navigator.pushReplacement(context,

    //         MaterialPageRoute(
    //           builder: (_) => Login_Screen(),
    //         )));

    super.initState();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return Scaffold(
      backgroundColor: MyTheme.splash,
      body: Container(
        child: Center(
          child: ScaleTransition(
            scale: _animation,
            child: Image.network(
              'https://cdn-icons-png.flaticon.com/128/1974/1974120.png',
              height: 1000,
            ),
          ),
        ),
      ),
    );
  }
}
