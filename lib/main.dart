import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  int _questionIndex = 0;
  var question = [
    'What\'s your name',
    'What\'s your favourite dish',
    'What\'s your favourite animal'
  ];
  void _answer() {
    setState(() {
      _questionIndex += 1;
      if (_questionIndex == 3) {
        _questionIndex = 0;
      }
    });
    print('yooo its me');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Tere bhai kaa app'),
        ),
        body: Column(
          children: [
            Text(question[_questionIndex]),
            RaisedButton(
              child: Text('Answer 1'),
              onPressed: _answer,
            ),
            RaisedButton(
              child: Text('Answer 2'),
              onPressed: _answer,
            ),
            RaisedButton(
              child: Text('Answer 2'),
              onPressed: _answer,
            ),
          ],
        ),
      ),
    );
  }
}

void main() => runApp(MyApp());
