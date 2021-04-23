import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String _questions;

  Question(this._questions);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        margin: EdgeInsets.all(40.0),
        child: Text(
          _questions,
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
          ),
          textAlign: TextAlign.center,
        ));
  }
}
