import 'file:///D:/dev/flutter/first_app/lib/widgets/answer.dart';
import 'file:///D:/dev/flutter/first_app/lib/factory/answerFactory.dart';
import 'file:///D:/dev/flutter/first_app/lib/widgets/question.dart';
import 'package:first_app/widgets/final_result.dart';
import 'package:first_app/widgets/questions_with_answers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
   return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {

  var _questionIndex = 0;
  bool _isReset = true;

  List<String> answers = [];

  static const questions = [
    {"questionText" : 'What is your favorite color?',  "answers" : ["Red", "Blue", "Green", "Yellow"]},
    {"questionText" : 'What is your pet\'s name?',  "answers" : ["Frank", "Leo", "Tomy"]},
    {"questionText" : 'What is your favorite car?',  "answers" : ["Mazda", "BMW", "Toyota", "Audi", "Benz"]},
  ];


  void _answerQuestion(String name) {
    _isReset = false;
    setState(() => _questionIndex = _questionIndex + 1);
    print("Answer is chosen : " + name);
    answers.add(name);
  }

  void _resetQuiz() {
    _isReset = true;
    setState(() {
      _questionIndex = 0;
      answers = [];
    });
    print ("Quiz reset");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: getScaffolding(),);
  }

  Widget getScaffolding() {
    return Scaffold(
      appBar: AppBar(
        title: Text("My First App"),
      ),
      body: _questionIndex < questions.length || _isReset ? QuestionsWithAnswers(questions[_questionIndex], _answerQuestion) : FinalResult(answers, _resetQuiz) ,
    );
  }
}