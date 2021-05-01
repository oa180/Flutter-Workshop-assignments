import 'package:flutter/material.dart';
import 'mail.dart';

class screen2 extends StatelessWidget {
  final List<Emails> homeNews = [
    Emails(
      name1: "Omar Abderahman",
      mailText: 'Italy to lift coronavirus travel restrictions',
      imageUrl:
          'https://cdn.icon-icons.com/icons2/2228/PNG/512/mask_wearing_avatar_man_covid_coronavirus_air_pollution_icon_134542.png',
    ),
    Emails(
      name1: "Alaa Mostafa",
      mailText: 'White House Operation Warp Speed to look for Covid jab',
      imageUrl:
          'https://cdn.icon-icons.com/icons2/2292/PNG/512/doctor_white_male_people_avatar_icon_141431.png',
    ),
    Emails(
      name1: "Nada Emad",
      mailText: 'Two Americas in the nations capital',
      imageUrl:
          'https://cdn.icon-icons.com/icons2/582/PNG/512/asistante_icon-icons.com_55049.png',
    ),
    Emails(
      name1: "Manar Yousef",
      mailText: 'Kobe Bryant helicopter crash post-mortem released',
      imageUrl:
          'https://cdn.icon-icons.com/icons2/582/PNG/512/woen-2_icon-icons.com_55032.png',
    ),
    Emails(
      name1: "Ahmed Ezz",
      mailText: 'Little things people are doing while socially distanced',
      imageUrl:
          'https://cdn.icon-icons.com/icons2/1879/PNG/512/iconfinder-12-avatar-2754577_120517.png',
    ),
    Emails(
      name1: "Gemy nabil",
      mailText: 'The last normal photo on your phone',
      imageUrl:
          'https://cdn.icon-icons.com/icons2/2121/PNG/512/avatar_boy_man_child_person_people_icon_131284.png',
    ),
    Emails(
      name1: "Asmaa Mohsen",
      mailText: 'They came to kill the mothers',
      imageUrl:
          'https://cdn.icon-icons.com/icons2/582/PNG/512/woen-2_icon-icons.com_55032.png',
    ),
    Emails(
      name1: "Nagham Wagih",
      mailText: 'EU-UK Brexit trade talks in trouble',
      imageUrl:
          'https://cdn.icon-icons.com/icons2/2292/PNG/512/nurse_white_female_people_avatar_icon_141449.png',
    ),
    Emails(
      name1: "Omar Taha",
      mailText: 'Trial starts to see if dogs can sniff out virus',
      imageUrl:
          'https://cdn.icon-icons.com/icons2/2292/PNG/512/doctor_white_male_people_avatar_icon_141431.png',
    ),
    Emails(
      name1: "Amr Elarabi",
      mailText: 'Beatles photographer Astrid Kirchherr dies aged 81',
      imageUrl:
          'https://cdn.icon-icons.com/icons2/2121/PNG/512/avatar_boy_man_child_person_people_icon_131284.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // ignore: missing_return
        child: ListView.builder(
          itemBuilder: (ctx, i) => homeNews[i],
          itemCount: homeNews.length,
        ),
      ),
    );
  }
}
