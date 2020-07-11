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
      'answers': ['Black', 'Red', 'Yellow', 'White'],
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': ['Rabbit', 'Snake', 'Elephant', 'Lion'],
    },
    {
      'questionText': 'Who\'s your favorite instructor?',
      'answers': ['Me', 'You', 'Chirac', 'Toto'],
    },
  ];
  bool hasRemainingQuestions() => _questionIndex < _questions.length;

  void _onAnswerQuestion() {
    setState(() {
      _questionIndex = _questionIndex = _questionIndex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: hasRemainingQuestions()
            ? Quiz(
                questionText: _questions[_questionIndex]['questionText'],
                answers: _questions[_questionIndex]['answers'],
                onAnswerQuestion: _onAnswerQuestion,
              )
            : Result(),
      ),
    );
  }
}
