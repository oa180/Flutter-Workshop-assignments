import 'package:flutter/material.dart';
import 'question.dart';
import 'answer.dart';
class Quiz extends StatelessWidget {
  final _answers;
  final _Question;
  int _questionNumber;
  final Function chooseAnswer;

  Quiz(this._Question, this._answers, this._questionNumber,this.chooseAnswer);
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Question(_Question[_questionNumber]),
      Answer(chooseAnswer, _answers[_questionNumber][0]),
      Answer(chooseAnswer, _answers[_questionNumber][1]),
      Answer(chooseAnswer, _answers[_questionNumber][2]),
      Answer(chooseAnswer, _answers[_questionNumber][3]),
    ]);

  }
}
