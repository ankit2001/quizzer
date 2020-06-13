import 'package:flutter/material.dart';

class Finish extends StatelessWidget {
  final Function _reset;
  final _totalScore;
  Finish(this._totalScore, this._reset);
  String get phrase {
    String phrase;
    if (_totalScore >= 30) {
      phrase = 'You are literally awesome';
    } else if (_totalScore >= 20) {
      phrase = 'You are good enough';
    } else if (_totalScore >= 10) {
      phrase = 'You need to check your priorities right';
    } else {
      phrase = 'I literally hate you';
    }
    return phrase;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: double.infinity,
        margin: EdgeInsets.only(top: 180),
        child: Column(
          children: <Widget>[
            Text(
              phrase,
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            Container(
              margin: EdgeInsets.only(top: 44),
              child: FlatButton(
                child: Text('Restart the quiz'),
                onPressed: _reset,
                color: Colors.blue,
              ),
            )
          ],
        ),
      ),
    );
  }
}
