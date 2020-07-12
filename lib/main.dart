import 'package:flutter/material.dart';

import 'quiz.dart';
import 'result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  static const _questions = const [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 5},
        {'text': 'Green', 'score': 3},
        {'text': 'White', 'score': 1},
      ],
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        {'text': 'Rabbit', 'score': 3},
        {'text': 'Snake', 'score': 11},
        {'text': 'Elephant', 'score': 5},
        {'text': 'Lion', 'score': 9},
      ],
    },
    {
      'questionText': 'Who\'s your favorite instructor?',
      'answers': [
        {'text': 'Max', 'score': 1},
        {'text': 'Max', 'score': 1},
        {'text': 'Max', 'score': 1},
        {'text': 'Max', 'score': 1},
      ],
    },
  ];
  bool hasRemainingQuestions() => _questionIndex < _questions.length;
  var _totalScore = 0;

  void _onAnswerQuestion(int score) {
    setState(() {
      _questionIndex = _questionIndex = _questionIndex + 1;
      _totalScore += score;
    });
  }

  void onResetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quiz',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz'),
        ),
        body: hasRemainingQuestions()
            ? Quiz(
                questionText: _questions[_questionIndex]['questionText'],
                answers: _questions[_questionIndex]['answers'],
                onAnswerQuestion: _onAnswerQuestion,
              )
            : Result(
                totalScore: _totalScore,
                onResetQuiz: onResetQuiz,
              ),
      ),
    );
  }
}
