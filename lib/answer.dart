import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandler;
  final String answerText;
  const Answer(this.selectHandler, this.answerText, {super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      margin: const EdgeInsets.all(10),
      color: Colors.blue,
      child: ElevatedButton(
          onPressed: selectHandler,
          child: Text(
            answerText,
            style: TextStyle(fontSize: 20),
          )),
    );
  }
}
