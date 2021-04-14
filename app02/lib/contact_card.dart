import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ContactCard extends StatelessWidget {
  String name, mail, phone, imageUrl, jobTitle;

  ContactCard({this.name, this.mail, this.phone, this.imageUrl, this.jobTitle});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350.0,
      height: 150.0,
      margin: EdgeInsets.symmetric(vertical: 30.0),
      decoration: BoxDecoration(
        color: Color.fromRGBO(18, 100, 22, 1),
        borderRadius: BorderRadius.all(Radius.circular(12.0)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ListTile(
            leading: CircleAvatar(
              radius: 30.0,
              backgroundImage: NetworkImage(imageUrl),
            ),
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  this.name,
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                  children: [
                    Icon(
                      Icons.mail,
                      color: Colors.black,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10.0),
                      child: Text(
                        this.mail,
                        style: TextStyle(fontSize: 18.0),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      CupertinoIcons.phone,
                      color: Colors.black,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10.0),
                      child: Text(
                        this.phone,
                        style: TextStyle(fontSize: 18.0),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      Icons.favorite,
                      color: Colors.red,
                      size: 24,
                    ),
                    Icon(
                      Icons.favorite,
                      color: Colors.red,
                      size: 24,
                    ),  Icon(
                      Icons.favorite,
                      color: Colors.red,
                      size: 24,
                    ),
                    Padding(
                        padding: EdgeInsets.only(left: 10.0),
                        child: Column(
                          children: [
                            Icon(
                              CupertinoIcons.tag,
                              color: Colors.black,
                            )
                          ],
                        )),
                    Padding(
                      padding: EdgeInsets.only(left: 5.0),
                      child: Text(
                        jobTitle,
                        style: TextStyle(fontSize: 18.0,),
                      ),
                    ),

                    Padding(
                        padding: EdgeInsets.only(left: 37.0),
                        child: Column(
                          children: [
                            Icon(
                              CupertinoIcons.delete,
                              color: Colors.white,
                              size: 24,
                            )
                          ],
                        )),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
