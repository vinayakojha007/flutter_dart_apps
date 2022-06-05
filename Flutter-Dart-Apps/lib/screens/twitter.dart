import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/columnApp.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class Twitter extends StatefulWidget {
  const Twitter({Key? key}) : super(key: key);

  @override
  State<Twitter> createState() => _TwitterState();
}

class _TwitterState extends State<Twitter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.person_add_alt,
        ),
        title: Center(
            child: Icon(
          FontAwesomeIcons.twitter,
        )),
        actions: [
          Icon(Icons.search),
        ],
      ),
      body: post(),
    );
  }

  Widget post() {
    return ListView(children: [
      Column(
        children: [
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                'https://images.unsplash.com/photo-1529665253569-6d01c0eaf7b6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8cHJvZmlsZXxlbnwwfHwwfHw%3D&w=1000&q=80',
              ),
            ),
            title: Column(
              children: [
                SizedBox(
                  height: 20.0,
                ),
                Row(
                  children: [
                    Text(
                      'Amarjeet Kumar',
                      style: TextStyle(
                          fontSize: 15.0, fontWeight: FontWeight.bold),
                    ),
                    Row(
                      children: [
                        Text(
                          '@flutter',
                          style: TextStyle(
                              fontSize: 12.0,
                              fontStyle: FontStyle.normal,
                              color: Colors.grey),
                        ),
                        Text(
                          '  .3d',
                          style: TextStyle(
                              fontSize: 12.0,
                              fontStyle: FontStyle.normal,
                              color: Colors.grey),
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 5.0,
                ),
                Text(
                  'My First Post... ',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.black,
                  ),
                ),
                Icon(Icons.emoji_emotions_outlined),
                SizedBox(
                  height: 5,
                ),
                Image(
                  image: NetworkImage(
                    'https://uploads-ssl.webflow.com/5f841209f4e71b2d70034471/6078b650748b8558d46ffb7f_Flutter%20app%20development.png',
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.arrow_back_rounded,
                      color: Colors.grey,
                    ),
                    Text('600', style: TextStyle(color: Colors.grey)),
                    Icon(
                      Icons.compare_arrows_outlined,
                      color: Colors.grey,
                    ),
                    Text('746', style: TextStyle(color: Colors.grey)),
                    Icon(
                      Icons.heart_broken,
                      color: Colors.grey,
                    ),
                    Text('34000', style: TextStyle(color: Colors.grey)),
                    Icon(
                      Icons.outgoing_mail,
                      color: Colors.grey,
                    ),
                    Text('11000', style: TextStyle(color: Colors.grey)),
                  ],
                )
              ],
            ),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                'https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8cHJvZmlsZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60',
              ),
            ),
            title: Column(
              children: [
                SizedBox(
                  height: 20.0,
                ),
                Row(
                  children: [
                    Text(
                      'Somaya Kumari',
                      style: TextStyle(
                          fontSize: 15.0, fontWeight: FontWeight.bold),
                    ),
                    Row(
                      children: [
                        Text(
                          '@Mobility',
                          style: TextStyle(
                              fontSize: 12.0,
                              fontStyle: FontStyle.normal,
                              color: Colors.grey),
                        ),
                        Text(
                          '  .2d',
                          style: TextStyle(
                              fontSize: 12.0,
                              fontStyle: FontStyle.normal,
                              color: Colors.grey),
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 5.0,
                ),
                Text(
                  "I'm happy to share..My First Python Project UI design.",
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.black,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Image(
                  image: NetworkImage(
                    'https://res.cloudinary.com/practicaldev/image/fetch/s--iLLekv5F--/c_limit%2Cf_auto%2Cfl_progressive%2Cq_auto%2Cw_880/https://dev-to-uploads.s3.amazonaws.com/uploads/articles/7a5f3tplukh7tucr5blm.png',
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.arrow_back_rounded,
                      color: Colors.grey,
                    ),
                    Text('241', style: TextStyle(color: Colors.grey)),
                    Icon(
                      Icons.compare_arrows_outlined,
                      color: Colors.grey,
                    ),
                    Text('500', style: TextStyle(color: Colors.grey)),
                    Icon(
                      Icons.heart_broken,
                      color: Colors.grey,
                    ),
                    Text('13000', style: TextStyle(color: Colors.grey)),
                    Icon(
                      Icons.outgoing_mail,
                      color: Colors.grey,
                    ),
                    Text('1458', style: TextStyle(color: Colors.grey)),
                  ],
                )
              ],
            ),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                'https://images.unsplash.com/photo-1517070208541-6ddc4d3efbcb?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MzR8fHByb2ZpbGV8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60',
              ),
            ),
            title: Column(
              children: [
                SizedBox(
                  height: 20.0,
                ),
                Row(
                  children: [
                    Text(
                      'Abhijeet Singh',
                      style: TextStyle(
                          fontSize: 15.0, fontWeight: FontWeight.bold),
                    ),
                    Row(
                      children: [
                        Text(
                          '@delhiboy',
                          style: TextStyle(
                              fontSize: 12.0,
                              fontStyle: FontStyle.normal,
                              color: Colors.grey),
                        ),
                        Text(
                          '  .1d',
                          style: TextStyle(
                              fontSize: 12.0,
                              fontStyle: FontStyle.normal,
                              color: Colors.grey),
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 5.0,
                ),
                Text(
                  "I see my path,I don't know where it leads. Not knowing where I'm going is what inspires me to travel it.",
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.black,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Image(
                  image: NetworkImage(
                    'https://images.unsplash.com/photo-1441441247730-d09529166668?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1174&q=80',
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.arrow_back_rounded,
                        color: Colors.grey,
                      ),
                      Text('300', style: TextStyle(color: Colors.grey)),
                      Icon(
                        Icons.compare_arrows_outlined,
                        color: Colors.grey,
                      ),
                      Text('100', style: TextStyle(color: Colors.grey)),
                      Icon(
                        Icons.heart_broken,
                        color: Colors.grey,
                      ),
                      Text('1200', style: TextStyle(color: Colors.grey)),
                      Icon(
                        Icons.outgoing_mail,
                        color: Colors.grey,
                      ),
                      Text('150', style: TextStyle(color: Colors.grey)),
                    ]),
              ],
            ),
          ),
        ],
      ),
    ]);
  }
}
