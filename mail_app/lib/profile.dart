import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  final String imageUrl;

  Profile(this.imageUrl);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromRGBO(100, 71, 110, 1),
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 180,
            decoration: BoxDecoration(
              color: Color.fromRGBO(169, 109, 173, 1),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(padding: EdgeInsets.all(20)),
                ListTile(
                  leading: CircleAvatar(
                    radius: 30,
                    backgroundImage: NetworkImage(imageUrl),
                  ),
                ),
                Container(
                    padding: EdgeInsets.fromLTRB(5, 10, 0, 0),
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
            width: double.infinity,
            child: Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(20.0, 30.0, 0, 10),
                      child: Icon(
                        Icons.dashboard_outlined,
                        color: Colors.white,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(30.0, 30.0, 0, 10),
                      child: Text(
                        "Dashboard",
                        style: TextStyle(
                          fontSize: 30.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(20.0, 30.0, 0, 10),
                      child: Icon(
                        Icons.clean_hands_rounded,
                        color: Colors.white,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(30.0, 30.0, 0, 10),
                      child: Text(
                        "Payment History",
                        style: TextStyle(
                          fontSize: 30.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(20.0, 30.0, 0, 10),
                      child: Icon(
                        Icons.format_indent_increase,
                        color: Colors.white,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(30.0, 30.0, 0, 10),
                      child: Text(
                        "Statics",
                        style: TextStyle(
                          fontSize: 30.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(20.0, 30.0, 0, 10),
                      child: Icon(
                        Icons.wine_bar,
                        color: Colors.white,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(30.0, 30.0, 0, 10),
                      child: Text(
                        "Rewards",
                        style: TextStyle(
                          fontSize: 30.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(20.0, 30.0, 0, 10),
                      child: Icon(
                        Icons.logout,
                        color: Colors.white,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(30.0, 30.0, 0, 10),
                      child: Text(
                        "Logout",
                        style: TextStyle(
                          fontSize: 30.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
