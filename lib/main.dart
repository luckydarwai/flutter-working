import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/answer.dart';
import './Question.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  State<StatefulWidget> createState() {
    return MyState();
  }
}

class MyState extends State<MyApp> {
  var _questionIndex =
      0; // _ used to make private to count properties of class MyState
  void _answerQuestion() {
    setState(() {
      _questionIndex++;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      {
        'questionText': 'what\'s your favorite color?',
        'answer': ['red', 'green', 'blue', 'black']
      },
      {
        'questionText': 'what\'s your favorite animal?',
        'answer': ['lion', 'elephant', 'tiger', 'monkey']
      },
      {
        'questionText': 'what\'s your favorite Game?',
        'answer': ['FreeFire', 'pubG', 'Ycd', 'wwe']
      },
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text('MY First App')),
        ),
        body: Column(
          children: [
            Question(
              questions[_questionIndex]['questionText'] as String,
            ),
            //... used to list of list
            ...(questions[_questionIndex]['answer'] as List<String>)
                .map((answer) {
              return Answer(_answerQuestion, answer);
            }).toList()
          ],
        ),
      ),
    );
  }
}
