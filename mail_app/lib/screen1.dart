import 'package:flutter/material.dart';
import 'contact_cards.dart';


class screen1 extends StatelessWidget {
  final List<ContactCard> li = [
    ContactCard(
        name: "Omar",
        mail: "om@gmail.com",
        phone: "1212151",
        imageUrl:
        'https://cdn.icon-icons.com/icons2/2228/PNG/512/mask_wearing_avatar_man_covid_coronavirus_air_pollution_icon_134542.png',
        jobTitle: "Developer"),
    ContactCard(
        name: "Alaa",
        mail: "al@gmail.com",
        phone: "1584521",
        imageUrl:
        'https://cdn.icon-icons.com/icons2/2292/PNG/512/doctor_white_male_people_avatar_icon_141431.png',
        jobTitle: "Doctor"),
    ContactCard(
        name: "Nada",
        mail: "na@gmail.com",
        phone: "1005420",
        imageUrl:
        'https://cdn.icon-icons.com/icons2/582/PNG/512/asistante_icon-icons.com_55049.png',
        jobTitle: "Nurse"),
    ContactCard(
        name: "Manar",
        mail: "ma@gmail.com",
        phone: "011151",
        imageUrl:
        'https://cdn.icon-icons.com/icons2/582/PNG/512/woen-2_icon-icons.com_55032.png',
        jobTitle: "lawyer"),
    ContactCard(
        name: "Ahmed",
        mail: "ah@gmail.com",
        phone: "154541",
        imageUrl:
        'https://cdn.icon-icons.com/icons2/1879/PNG/512/iconfinder-12-avatar-2754577_120517.png',
        jobTitle: "Tester"),
    ContactCard(
        name: "Gamy",
        mail: "ga@gmail.com",
        phone: "4841010",
        imageUrl:
        'https://cdn.icon-icons.com/icons2/2121/PNG/512/avatar_boy_man_child_person_people_icon_131284.png',
        jobTitle: "Gamer"),
    ContactCard(
        name: "Asmaa",
        mail: "as@gmail.com",
        phone: "0182333",
        imageUrl:
        'https://cdn.icon-icons.com/icons2/582/PNG/512/woen-2_icon-icons.com_55032.png',
        jobTitle: "Teacher"),
    ContactCard(
        name: "Nagham",
        mail: "na@gmail.com",
        phone: "5441203132",
        imageUrl:
        'https://cdn.icon-icons.com/icons2/2292/PNG/512/nurse_white_female_people_avatar_icon_141449.png',
        jobTitle: "Dentist"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color.fromRGBO(169, 109, 173, 1),
        child: ListView(
          children: [
            ...li.map((x) {
              return Container(
                child: Card(
                  child: Column(
                    children: [
                      ContactCard(
                        name: x.name,
                        mail: x.mail,
                        phone: x.phone,
                        imageUrl: x.imageUrl,
                        jobTitle: x.jobTitle,
                      )
                    ],
                  ),
                ),
              );
            }).toList(),
          ],
        ),
      ),
    );
  }
}
