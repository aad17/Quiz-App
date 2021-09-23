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
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 6},
        {'text': 'Green', 'score': 4},
        {'text': 'White', 'score': 1}
      ]
    },
    {
      'questionText': "What is you favourite animal?",
      'answers': [
        {'text': 'Elephant', 'score': 7},
        {'text': 'Rabbit', 'score': 0},
        {'text': 'Lion', 'score': 10},
        {'text': 'Tiger', 'score': 9}
      ]
    },
    {
      'questionText': "Whon is your favourite instructor?",
      'answers': [
        {'text': 'ABC', 'score': 7},
        {'text': 'DEF', 'score': 0},
        {'text': 'GHI', 'score': 10},
        {'text': 'JKL', 'score': 9}
      ]
    },
  ];
  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;
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
          : Result(_totalScore, _resetQuiz),
    ));
  }
}
