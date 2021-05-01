import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:mail_app/screeen2.dart';
import 'package:mail_app/screen1.dart';
import 'package:mail_app/screen3.dart';

main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Map<String, Object>> screens = [
    {'screen': screen1(), 'title': "Contacts"},
    {'screen': screen2(), 'title': "Inbox"},
    {'screen': screen3(), 'title': "Profile"},
  ];

  int screenPageIndex = 0;

  void _nvigatePageIndex(int index) {
    setState(() {
      screenPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(100, 71, 110, 1),
        title: Text(
          screens[screenPageIndex]['title'],
        ),
      ),
      body: screens[screenPageIndex]['screen'],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color.fromRGBO(169, 109, 173, 1),
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.black,
        currentIndex: screenPageIndex,
        onTap: _nvigatePageIndex,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.contacts), label: "Contacts"),
          BottomNavigationBarItem(icon: Icon(Icons.mail), label: "Emails"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
      ),
      drawer: Drawer(
        child: Column(


        children: [
          Container(
              width: double.infinity,
              height: 250,
              decoration: BoxDecoration(
                color: Color.fromRGBO(169, 109, 173, 1),
              ),
              child: Column(

                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(padding: EdgeInsets.fromLTRB(20, 40, 20,20)),
                  ListTile(
                    leading: CircleAvatar(
                      radius: 30,
                      backgroundImage: NetworkImage(
                        'https://cdn.icon-icons.com/icons2/2292/PNG/512/nurse_white_female_people_avatar_icon_141449.png',
                      ),
                    ),
                  ),
                  Container(

                      padding: EdgeInsets.fromLTRB(10, 30, 0, 0),
                      child: Column(
                        children: [
                          Text(
                            "Omar Abdelrahman\n",
                            style: TextStyle(fontSize: 17, color: Colors.white),
                          ),
                          Text(
                            "oa@sakckskmks.int",
                            style: TextStyle(fontSize: 15, color: Colors.white),
                          ),
                        ],
                      ))
                ],
              ),
            ),
            Container(
              child: Column(
                children: [

                  Row(

                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(20.0, 30.0, 0, 10),
                        child: Icon(
                          Icons.category,
                          color: Colors.black,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(30.0, 30.0, 0, 10),
                        child: Text(
                          "Categories",
                          style: TextStyle(fontSize: 20.0),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(20.0, 30.0, 0, 10),
                        child: Icon(
                          Icons.add_to_photos_rounded,
                          color: Colors.black,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(30.0, 30.0, 0, 10),
                        child: Text(
                          "Add Items",
                          style: TextStyle(fontSize: 20.0),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(20.0, 30.0, 0, 10),
                        child: Icon(
                          CupertinoIcons.info_circle_fill,
                          color: Colors.black,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(30.0, 30.0, 0, 10),
                        child: Text(
                          "About Us",
                          style: TextStyle(fontSize: 20.0),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(20.0, 30.0, 0, 10),
                        child: Icon(
                          Icons.share,
                          color: Colors.black,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(30.0, 30.0, 0, 10),
                        child: Text(
                          "Share with Friends",
                          style: TextStyle(fontSize: 20.0),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(20.0, 30.0, 0, 10),
                        child: Icon(
                          Icons.rate_review,
                          color: Colors.black,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(30.0, 30.0, 0, 10),
                        child: Text(
                          "Rate and Review",
                          style: TextStyle(fontSize: 20.0),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(20.0, 30.0, 0, 10),
                        child: Icon(
                          Icons.flag,
                          color: Colors.black,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(30.0, 30.0, 0, 10),
                        child: Text(
                          "privacy and Policy",
                          style: TextStyle(fontSize: 20.0),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
