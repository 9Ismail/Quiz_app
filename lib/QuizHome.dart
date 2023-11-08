import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/quiz.dart';
import 'package:quiz_app/result.dart';

class QuizHome extends StatefulWidget {
  const QuizHome({super.key});

  @override
  State<QuizHome> createState() => _QuizHomeState();
}

class _QuizHomeState extends State<QuizHome> {
  var _questionIndex = 0;
  var _totalScore = 0;

  void _questionAnswer(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex++;
      // print(_questionIndex);
    });
  }

  void _reset() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
      // print(_questionIndex);
    });
  }

  final _questions = [
    {
      "questionText": "what is your favorite food ?",
      "answers": [
        {"Text": "chicken", "Score": 10},
        {"Text": "noddles", "Score": 20},
        {"Text": "maggie", "Score": 30},
        {"Text": "maggie", "Score": 40}
      ]
    },
    {
      "questionText": "what is your favorite food ?",
      "answers": [
        {"Text": "noodles", "Score": 10},
        {"Text": "snacks", "Score": 20},
        {"Text": "maggiee", "Score": 30},
        {"Text": "pizza", "Score": 40}
      ],
    },
    {
      "questionText": "which is your favorite car ?",
      "answers": [
        {"Text": "audi", "Score": 10},
        {"Text": "bmw", "Score": 20},
        {"Text": "mg", "Score": 30},
        {"Text": "tayota", "Score": 40}
      ],
    },
    {
      "questionText": "which is your favorite place ?",
      "answers": [
        {"Text": "hyderabad", "Score": 10},
        {"Text": "banglore", "Score": 20},
        {"Text": "mumbai", "Score": 30},
        {"Text": "delhi", "Score": 40}
      ],
    },
    {
      "questionText": "which is your favorite country ?",
      "answers": [
        {"Text": "USA", "Score": 10},
        {"Text": "UAE", "Score": 20}, 
        {"Text": "AUS", "Score": 30},
        {"Text": "IND", "Score": 40}
      ],
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            centerTitle: true,
            elevation: 0.0,
            title: Text(
              "Quiz App",
              style: GoogleFonts.adamina(
                  fontSize: 30, fontWeight: FontWeight.bold),
            )),
        body: _questionIndex < _questions.length
            ? Quiz(
                questions: _questions,
                questionIndex: _questionIndex,
                questionAnswer: _questionAnswer)
            : Result(_reset, _totalScore));
  }
}
