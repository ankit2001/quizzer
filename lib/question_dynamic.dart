import 'package:flutter/material.dart';
import 'question.dart';
import 'answer.dart';

class Dynamic extends StatelessWidget {
  final List<Map<String, Object>> _question;
  final int _questionIndex;
  final Function _answer;
  Dynamic(this._question, this._answer, this._questionIndex);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(_question[_questionIndex]['question']),
        ...(_question[_questionIndex]['answer'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(() => _answer(answer['score']), answer['text']);
        }).toList()
      ],
    );
  }
}
