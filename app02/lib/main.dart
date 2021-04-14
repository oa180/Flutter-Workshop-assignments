import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'contact_card.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Contact Cards',
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.black,
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ContactCard(
                  name: 'Omar Abd El-Rahman',
                  mail: 'oa@gmail.com',
                  phone: '215213425415',
                  jobTitle: 'not boss',
                  imageUrl:
                      'https://cdn.icon-icons.com/icons2/2643/PNG/512/male_boy_person_people_avatar_icon_159358.png',
                ),
                ContactCard(
                    name: 'Alaa ALi',
                    mail: 'Al@gmail.com',
                    phone: '546846846',
                    jobTitle: 'boss',
                    imageUrl:
                        'https://cdn.icon-icons.com/icons2/2643/PNG/512/male_man_boy_black_tone_people_person_avatar_icon_159356.png'),
                ContactCard(
                    name: 'Mariam Amin',
                    mail: 'MA@gmail.com',
                    phone: '454654665',
                    jobTitle: 'maybe\nboss',
                    imageUrl:
                        'https://cdn.icon-icons.com/icons2/2643/PNG/512/female_woman_person_people_avatar_icon_159366.png'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
