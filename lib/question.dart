import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  const Question({
    Key key,
    @required String questionText,
  })  : _questionText = questionText,
        super(key: key);

  final String _questionText;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        _questionText,
        style: TextStyle(
          fontSize: 24,
        ),
        textAlign: TextAlign.center,
      ),
      margin: EdgeInsets.all(10),
      width: double.infinity,
    );
  }
}
