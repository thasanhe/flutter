import 'package:first_app/widgets/answer.dart';

class AnswerFactory {

  static List<Answer> createAnswers(Map<String, Object> questionsMap, Function function) {
    List<Answer> answers = List();

    List<Map<String, Object>> answersMapList = questionsMap["answers"];

    for (Map<String, Object> answerMap in answersMapList) {
      answers.add(Answer(answerMap["text"], function, answerMap["score"]));
    }
    return answers;
  }
}