import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  const Answer({
    Key key,
    @required String answerText,
    @required Function() onClick,
  })  : _answerText = answerText,
        _onClick = onClick,
        super(key: key);

  final String _answerText;
  final Function() _onClick;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: RaisedButton(
        color: Colors.blue,
        child: Text(_answerText),
        onPressed: _onClick,
        textColor: Colors.white,
      ),
      width: double.infinity,
    );
  }
}
