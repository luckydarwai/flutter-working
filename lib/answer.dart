import 'dart:html';

import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;

  const Answer(this.selectHandler);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
          onPressed: () => selectHandler,
          child: Text("Click Me"),
          style: ElevatedButton.styleFrom(
            primary: Colors.green,
          )),
    );
  }
}
