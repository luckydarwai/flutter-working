import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String
      questionText; // to initialize with final it will never change can't assign new value.
  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity, // to take full width of the screen
      margin: EdgeInsets.all(10),

      child: Text(
        questionText,
        style: TextStyle(fontSize: 30),
        textAlign: TextAlign.center,
      ),
    );
  }
}
