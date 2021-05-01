import 'package:flutter/material.dart';
import 'profile.dart';

class screen3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Profile(
          'https://cdn.icon-icons.com/icons2/2292/PNG/512/nurse_white_female_people_avatar_icon_141449.png',
        ),
      ),
    );
  }
}
