import 'package:flutter/material.dart';
import './quiz.dart';
import './results.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'Are you procastinating?',
      'answers': [
        {'text': 'yes', 'score': 10},
        {'text': 'no', 'score': 0},
        {'text': 'on the verge of temptation', 'score': 5},
      ]
    },
    {
      'questionText': 'what are you doing then?',
      'answers': [
        {'text': 'valorant', 'score': 10},
        {'text': 'sinned today', 'score': 20},
        {'text': 'Trying to get away from it', 'score': -20},
      ]
    }
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestions(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex += 1;
    });

    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print('More questions incoming');
    } else {
      print('No more questions');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'quiz app',
        home: Scaffold(
            appBar: AppBar(title: Text('Quiz app')),
            body: _questionIndex < _questions.length
                ? Quiz(
                    questions: _questions,
                    questionIndex: _questionIndex,
                    answerQuestion: _answerQuestions)
                : Result(_totalScore, _resetQuiz)));
  }
}
