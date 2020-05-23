import 'package:first_app/widgets/final_result.dart';
import 'package:first_app/widgets/questions_with_answers.dart';
import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
   return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: getScaffolding(),);
  }

  var _questionIndex = 0;
  bool _isReset = true;

  List<String> answers = [];
  int _totalScore = 0;

  static const questions = [
    {"questionText" : 'What is your favorite color?',  "answers" : [{"text" : "Red", "score": 10 }, {"text" : "Blue", "score" : 20}, {"text" : "Green", "score": 13}, {"text":"Yellow", "score":15}]},
    {"questionText" : 'What is your pet\'s name?',  "answers" : [{"text":"Frank", "score":1}, {"text":"Leo", "score":2}, {"text":"Tomy", "score":3}]},
    {"questionText" : 'What is your favorite car?',  "answers" : [{"text":"Mazda", "score":4}, {"text":"BMW", "score":5}, {"text":"Toyota", "score":1}, {"text":"Audi", "score":3}, {"text":"Benz", "score":5}]},
  ];


  void _answerQuestion(String name, int score) {
    _isReset = false;
    _totalScore  += score;
    setState(() => _questionIndex = _questionIndex + 1);
    print("Answer is chosen : " + name);
    answers.add(name);
  }

  void _resetQuiz() {
    _isReset = true;
    _totalScore = 0;
    setState(() {
      _questionIndex = 0;
      answers = [];
    });
    print ("Quiz reset");
  }

  Widget getScaffolding() {
    return Scaffold(
      appBar: AppBar(
        title: Text("My First App"),
      ),
      body: _questionIndex < questions.length || _isReset ? QuestionsWithAnswers(questions[_questionIndex], _answerQuestion) : FinalResult(answers, _resetQuiz, _totalScore) ,
    );
  }
}