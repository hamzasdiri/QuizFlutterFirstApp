import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questIndex = 0;

  final _questions = const [
    {
      'questionText': 'What is ur fav color ?',
      'answers': [
        {'text': 'Black', 'score': 5},
        {'text': 'Red', 'score': 10},
        {'text': 'White', 'score': 7},
        {'text': 'Blue', 'score': 12}
      ]
    },
    {
      'questionText': 'What is ur fav animal ?',
      'answers': [
        {'text': 'Cat', 'score': 1},
        {'text': 'Dog', 'score': 2},
        {'text': 'Snake', 'score': 3},
        {'text': 'Elephant', 'score': 4}
      ]
    },
  ];
  String res = '';
  int score = 0;

  void _reset() {
    setState(() {
      res = '';
      score = 0;
      _questIndex = 0;
    });
  }

  void _answerQuestion(String c, int a) {
    res += c + ' ';
    score += a;
    setState(() {
      //setState call build of widget againwhen u call it

      _questIndex += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(title: Text('My First App')),
          body: _questIndex < _questions.length
              ? Quiz(
                  answerQuestion: _answerQuestion,
                  questions: _questions,
                  questIndex: _questIndex)
              : Result(res, score, _reset)),
    );
  }
}
