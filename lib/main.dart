import 'package:flutter/material.dart';
import './question_dynamic.dart';
import './finish.dart';

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  int _totalScore = 0;
  int _questionIndex = 0;
  final _question = const [
    {
      'question': 'What\'s your favourite dish',
      'answer': [
        {'text': 'Pasta', 'score': 10},
        {'text': 'Pizza', 'score': 6},
        {'text': 'Butter Chicken', 'score': 8},
        {'text': 'French Fries', 'score': 9}
      ],
    },
    {
      'question': 'What\'s your favourite place',
      'answer': [
        {'text': 'India', 'score': 10},
        {'text': 'Switzerland', 'score': 7},
        {'text': 'Paris', 'score': 9},
        {'text': 'Europe', 'score': '8'}
      ],
    },
    {
      'question': 'What\'s your favourite colour',
      'answer': [
        {'text': 'Red', 'score': 8},
        {'text': 'Blue', 'score': 10},
        {'text': 'Green', 'score': 5},
        {'text': 'White', 'score': 9}
      ],
    },
    {
      'question': 'What\'s your favourite animal',
      'answer': [
        {'text': 'Dog', 'score': 8},
        {'text': 'Tiger', 'score': 10},
        {'text': 'Cat', 'score': 9}
      ],
    },
  ];
  void _reset() {
    setState(() {
      _totalScore = 0;
      _questionIndex = 0;
    });
  }

  void _answer(int score) {
    setState(() {
      _questionIndex += 1;
      _totalScore += score;
      if (_questionIndex == 4) {
        print('Index out');
      }
    });
    print('yooo its me');
    print(_totalScore);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quizzer'),
        ),
        body: _questionIndex < _question.length
            ? Dynamic(_question, _answer, _questionIndex)
            : Finish(_totalScore, _reset),
      ),
    );
  }
}

void main() => runApp(MyApp());
