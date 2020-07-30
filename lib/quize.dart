import 'package:flutter/material.dart';
import './answer.dart';
import './question.dart';

class Quize extends StatelessWidget {
  final List<Map<String, Object>> question;
  final int questionIndex;
  final Function answerquestion;

  Quize(
      {@required this.answerquestion,
      @required this.question,
      @required this.questionIndex});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(question[questionIndex]['questionText']),
        ...(question[questionIndex]['answers'] as List<String>).map((answer) {
          return Answer(answerquestion, answer);
        }).toList()
      ],
    );
  }
}
