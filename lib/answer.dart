import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String answerText;
  final Function() onClick;

  Answer(this.answerText, this.onClick);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: RaisedButton(
        color: Colors.blue,
        child: Text(answerText),
        onPressed: onClick,
        textColor: Colors.white,
      ),
      width: double.infinity,
    );
  }
}
