import 'package:flutter/material.dart';

class Questions extends StatelessWidget {
  final String questionText;
  const Questions(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(10),
      child: Text(
        questionText,
        style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
      ),
    );
  }
}
