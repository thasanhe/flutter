import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FinalResult extends StatelessWidget{

  final List<String> _answers;
  final Function _resetQuiz;
  final int _score;

  FinalResult(this._answers, this._resetQuiz, this._score);

  @override
  Widget build(BuildContext context) {
      return Container(
          width: double.infinity,
          child: Column(
            children : [
              Container(child : Text("You have done it!", style: TextStyle(fontSize: 23, color: Colors.white), textAlign: TextAlign.center,), width: double.infinity, color: Colors.green,),
              ..._answers.map((selection) => Container(
                child : Text(selection, textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),),
                padding: EdgeInsets.all(5),
                margin: EdgeInsets.only(top: 5),color: Colors.blue, width: double.infinity,)).toList(),
              Text("Your score is : " + _score.toString()),
              RaisedButton(
                child: Text("Restart quiz"),
                onPressed: _resetQuiz,
              ),
              
            ]
          )
      );
    }
}