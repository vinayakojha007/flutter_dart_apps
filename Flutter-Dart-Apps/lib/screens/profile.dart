import 'package:flutter/material.dart';

class profile extends StatelessWidget {
  const profile({Key? key, String? title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
              clipBehavior: Clip.none,
              alignment: Alignment.bottomCenter,
              children: [
                Image(
                  image: NetworkImage(
                    'https://blog.haposoft.com/content/images/2021/05/cover.jpeg',
                  ),
                ),
                Positioned(
                    top: 140.0,
                    child: CircleAvatar(
                      radius: 80,
                      backgroundColor: Colors.white,
                      child: CircleAvatar(
                        radius: 75,
                        backgroundImage: NetworkImage(
                          'https://images.unsplash.com/photo-1628563694622-5a76957fd09c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8aW5zdGFncmFtJTIwcHJvZmlsZXxlbnwwfHwwfHw%3D&w=1000&q=80',
                        ),
                      ),
                    ))
              ]),
          SizedBox(
            height: 70,
          ),
          ListTile(
            title: Center(
              child: Text('Amarjeet Kumar',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
            ),
            subtitle: Center(
              child: Text(
                'Flutter Developer ',
                style: TextStyle(fontSize: 20),
              ),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Container(
            padding: EdgeInsets.all(20.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: 80,
                ),
                Text(
                  'Likes',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w600),
                ),
                Text(
                  '123',
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 30,
                ),
                Text(
                  'Following',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w600),
                ),
                Text(
                  '456',
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 30,
                ),
                Text(
                  'Followers',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w600),
                ),
                Text(
                  '789',
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Icon(Icons.female_outlined),
          Icon(Icons.female_rounded),
          Icon(Icons.male_sharp),
          Icon(Icons.female_sharp),
          ListTile(
            title: Text('About me '),
            subtitle: Text(
              "I'm Amarjeet Kumar, I'm form Ranchi current pursing B.tech in Computer Science. I have knee intrest in Oops, Data Structure, Dart and Python.",
            ),
          ),
        ],
      ),
    );
  }
}
