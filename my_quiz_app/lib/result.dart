import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final Function resetQuiz;

  Result(this.resetQuiz);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(100),

        child: Column(
      children: [
        Container(
          margin: EdgeInsets.fromLTRB(0, 50, 0, 50),
          child: Text(
            "Your Result is : ",
            style: TextStyle(
                fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          alignment: Alignment.bottomRight,

          child: FloatingActionButton.extended(
            onPressed: resetQuiz,
            backgroundColor: Colors.amber,
            icon: Icon(Icons.settings_backup_restore),
            label: Text(
              "Back Home",
              style: TextStyle(color: Colors.black),
            ),
          ),
        )
      ],
    ));
  }
}

