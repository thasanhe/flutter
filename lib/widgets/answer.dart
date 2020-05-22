import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String _title;
  final Function _answerQuestion;
  final int _score;

  Answer(this._title, this._answerQuestion, this._score);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        margin: EdgeInsets.only(left: 10, right: 10),
        child: RaisedButton(
          child: Text(_title),
          onPressed: () => _answerQuestion(_title,  ),
          color: Colors.blue,
          textColor: Colors.white,
    ));
  }
}
