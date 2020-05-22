import 'package:first_app/factory/answerFactory.dart';
import 'package:first_app/widgets/answer.dart';
import 'package:first_app/widgets/question.dart';
import 'package:flutter/cupertino.dart';

class QuestionsWithAnswers extends StatelessWidget {

  final Map<String, Object> questionMap;
  final Function _answerQuestion;

  QuestionsWithAnswers(this.questionMap, this._answerQuestion);

  @override
  Widget build(BuildContext context) {
      return Column(
        children: getColumnChildren(questionMap, _answerQuestion),
      );
  }

  List<Widget> getColumnChildren(Map<String, Object> questionMap, Function _answerQuestion) {
    List<Widget> widgets = List();
    widgets.add(Question(questionMap["questionText"]));
    widgets.addAll(AnswerFactory.createAnswers(questionMap,_answerQuestion));
    return widgets;
  }

}