import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  // const result({Key? key}) : super(key: key);

  final int resultScore;
  final Function resetHandlar;

  Result(this.resultScore, this.resetHandlar);

  String get resultPhrase {
    var resultText = 'You did it!!';
    if (resultScore <= 8) {
      resultText = 'You are GOOD';
    } else if (resultScore <= 12) {
      resultText = 'Pretty likable';
    } else if (resultScore <= 16) {
      resultText = 'Pretty Strange';
    } else {
      resultText = 'Bad Boy';
    }

    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            onPressed: resetHandlar,
            child: Text('Restart Quiz'),
            textColor: Colors.blue[400],
          )
        ],
      ),
    );
  }
}
