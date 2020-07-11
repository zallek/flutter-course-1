import 'package:flutter/material.dart';

import './answer.dart';
import './question.dart';

class Quiz extends StatelessWidget {
  const Quiz({
    Key key,
    @required String questionText,
    @required List<Map<String, Object>> answers,
    @required Function(int score) onAnswerQuestion,
  })  : _questionText = questionText,
        _answers = answers,
        _onAnswerQuestion = onAnswerQuestion,
        super(key: key);

  final String _questionText;
  final List<Map<String, Object>> _answers;
  final Function(int score) _onAnswerQuestion;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          questionText: _questionText,
        ),
        ..._answers
            .map(
              (answer) => Answer(
                answerText: answer['text'],
                onClick: () => _onAnswerQuestion(answer['score']),
              ),
            )
            .toList(),
      ],
    );
  }
}
