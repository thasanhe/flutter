import 'package:first_app/widgets/answer.dart';
import 'package:flutter/cupertino.dart';

class AnswerFactory {

  static List<Answer> createAnswers(Map<String, Object> questionsMap, Function function) {
    List<Answer> answers = List();

    List<String> answersList = questionsMap["answers"];

    for (String answer in answersList) {
     answers.add(Answer(answer, function));
    }
    return answers;
  }

}