import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': "What is your favourite colour?",
      'answers': ['Black', 'Red', 'Green', 'White']
    },
    {
      'questionText': "What is you favourite animal?",
      'answers': ['Elephant', 'Rabbit', 'Lion', 'Tiger']
    },
    {
      'questionText': "Whon is your favourite instructor?",
      'answers': ['ABC', 'DEF', 'GHI', 'JKL']
    },
  ];
  var _questionIndex = 0;
  void _answerQuestion() {
    // if (_questionIndex < questions.length) {}
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('My First App'),
      ),
      body: _questionIndex < _questions.length
          ? Quiz(
              answerQuestion: _answerQuestion,
              questionIndex: _questionIndex,
              questions: _questions,
            )
          : Result(),
    ));
  }
}
