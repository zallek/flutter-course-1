import 'package:course_1/answer.dart';
import 'package:flutter/material.dart';

import './question.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _questions = [
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

  void _answerQuestion() {
    setState(() {
      _questionIndex =
          _questionIndex >= _questions.length - 1 ? 0 : _questionIndex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          children: [
            Question(
              _questions[_questionIndex]['questionText'],
            ),
            ...(_questions[_questionIndex]['answers'] as List<String>)
                .map((answer) => Answer(answer, _answerQuestion))
                .toList()
          ],
        ),
      ),
    );
  }
}
