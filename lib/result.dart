import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final VoidCallback selectHandler;
  final int quizscore;
  Result(this.selectHandler, this.quizscore);
  String get score {
    String quiz;
    if (quizscore <= 60) {
      quiz = ('poor');
    } else if (quizscore <= 90) {
      quiz = ('Average');
    } else if (quizscore >= 150) {
      quiz = ('good');
    } else {
      quiz = ("Bad");
    }
    return quiz;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(score,
              style:
                  const TextStyle(fontWeight: FontWeight.bold, fontSize: 30)),
          SizedBox(height: 20),
          ElevatedButton(onPressed: selectHandler, child: const Text('Reset'))
        ],
      ),
    );
  }
}
