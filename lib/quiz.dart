import 'package:flutter/material.dart';

import './answer.dart';
import './question.dart';

class Quiz extends StatelessWidget {
  const Quiz({
    Key key,
    @required String questionText,
    @required List<String> answers,
    @required Function() onAnswerQuestion,
  })  : _questionText = questionText,
        _answers = answers,
        _onAnswerQuestion = onAnswerQuestion,
        super(key: key);

  final String _questionText;
  final List<String> _answers;
  final Function() _onAnswerQuestion;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          questionText: _questionText,
        ),
        ..._answers
            .map(
              (answerText) => Answer(
                answerText: answerText,
                onClick: _onAnswerQuestion,
              ),
            )
            .toList(),
      ],
    );
  }
}
