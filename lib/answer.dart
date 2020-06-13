import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function _myFunction;
  final String _ans;
  Answer(this._myFunction, this._ans);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(23),
      child: RaisedButton(
        color: Colors.blue,
        child: Text(_ans),
        onPressed: _myFunction,
      ),
    );
  }
}
