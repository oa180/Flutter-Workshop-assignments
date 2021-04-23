import 'package:flutter/material.dart';
import 'package:my_quiz_app/quiz.dart';
import 'package:my_quiz_app/result.dart';
import 'question.dart';
import 'answer.dart';
import 'quiz.dart';
import 'result.dart';

main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _questionNumber = 0;
  final _Question = [
    "The square root of 100 is ?",
    "The sun of 4 + 10 ?",
    "120 mod 7 is ?",
  ];

  final _answers = [
    ["12", "40", "10", "25"],
    ["20", "55", "3", "14"],
    ["0", "1", "2", "3"]
  ];

  void chooseAnswer() {
    setState(() {
      _questionNumber++;
    });

    print(_questionNumber);
  }

  void _resetQuiz() {
    setState(() {
      _questionNumber = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text("Quizzer", style: TextStyle(color:Colors.black),),
          backgroundColor: Colors.amber,
        ),
        body: Container(
            child: _questionNumber < _Question.length
                ? Quiz(_Question, _answers, _questionNumber, chooseAnswer)
                : Result(_resetQuiz)),
      ),
    );
  }
}
