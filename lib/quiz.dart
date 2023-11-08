import 'package:flutter/material.dart';
import 'package:quiz_app/question.dart';

import 'Answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function questionAnswer;
  Quiz(
      {required this.questions,
      required this.questionIndex,
      required this.questionAnswer});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Questions(questions[questionIndex]["questionText"] as String),
      
        ...(questions[questionIndex]["answers"] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(
              () => questionAnswer(answer["Score"]), answer["Text"] as String);
        })
      ],
    );
  }
}
