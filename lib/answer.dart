import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandler;
  Answer(this.selectHandler);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,

      // ignore: prefer_const_constructors
      child: ElevatedButton(
        child: Text('Answer 1'),
        onPressed: selectHandler,
      ),
    );
  }
}
