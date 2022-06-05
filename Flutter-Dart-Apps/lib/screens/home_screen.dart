import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/constants_food_recipe.dart';
import 'package:flutter_application_1/widgets/appbar_widget.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: klightcColor,
      appBar: AppBar(
        leading: Icon(
          Icons.menu_outlined,
        ),
        title: Text('Food Recipes'),
        actions: [
          Icon(Icons.notifications_none),
          Padding(padding: EdgeInsets.only(left: 10.0))
        ],
      ),
      body: Container(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(
              height: 5.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(padding: EdgeInsets.all(8.0)),
                Text(
                  'Hasty Tasty',
                  style: TextStyle(
                    fontSize: 15.0,
                    fontStyle: FontStyle.normal,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(padding: EdgeInsets.all(7.0)),
                Text(
                  'What do you want to cook today?',
                  style: TextStyle(
                    fontSize: 30.0,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 10.0),
                Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: kprimaryColor,
                          borderRadius: BorderRadius.circular(10.0)),
                      child: TextField(
                        cursorColor: kDarkColor,
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            prefixIcon: Icon(
                              Icons.search,
                              color: Colors.grey,
                              size: 30.0,
                            ),
                            hintText: 'Search for recipes',
                            hintStyle: TextStyle(
                              color: Colors.grey,
                              fontSize: 15.0,
                            )),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
