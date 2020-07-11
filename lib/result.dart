import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  const Result({
    Key key,
    @required int totalScore,
    @required Function() onResetQuiz,
  })  : _resultScore = totalScore,
        _onResetQuiz = onResetQuiz,
        super(key: key);

  final int _resultScore;
  final Function() _onResetQuiz;

  String get _resultPhrase {
    String resultText;
    if (_resultScore <= 8) {
      resultText = 'You are awesome and innocent!';
    } else if (_resultScore <= 12) {
      resultText = 'Pretty likeable!';
    } else if (_resultScore <= 16) {
      resultText = 'You are ... strange?!';
    } else {
      resultText = 'You are so bad!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            _resultPhrase,
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            child: Text('Restrat Quiz!'),
            onPressed: _onResetQuiz,
          ),
        ],
      ),
    );
  }
}
