import 'package:flutter/material.dart';

class LVDemo2 extends StatelessWidget {
  LVDemo2({Key? key}) : super(key: key);

  final List<String> _courses = [
    'ADO.NET by Example',
    'Working with using JDBC',
    'Building web App using Spring MVC, Hirernate and Rest Services',
    'Python 3 Programming A Step by step Giude',
    'Food Ordering App using xamarin'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Authored Courses'),
      ),
      body: ListView.separated(
          itemBuilder: ((context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                elevation: 10.0,
                shadowColor: Colors.black,
                //margin: EdgeInsets.all(10.0),
                
                child: ListTile(
                  title: Text(_courses[index]),
                ),
              ),
            );
          }),
          separatorBuilder: (context, index) => const Divider(
              // color: Colors.blue,
              // thickness: 1.0,
              ),
          itemCount: _courses.length),
    );
  }
}
