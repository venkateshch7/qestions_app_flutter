import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';
// void main(){
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = [
    {
      'questionText': 'What\'s your favourite color?',
      'answers': [
        {'text':'Black', 'score': 2},
        {'text':'Red', 'score': 4},
        {'text':'Green', 'score': 6},
        {'text':'White', 'score': 8}
      ]
    },
    {
      'questionText': 'What\'s your favourite animal?',
      'answers': [
        {'text':'Rabbit', 'score': 2},
        {'text':'Snake', 'score': 4},
        {'text':'elephant', 'score': 6},
        {'text':'Lion', 'score': 8}
      ]
    },
    {
      'questionText': 'Who\'s is your faviurite instructor?',
      'answers': [
        {'text':'Max', 'score': 2},
        {'text':'Max', 'score': 4},
        {'text':'Max', 'score': 6},
        {'text':'Max', 'score': 8}
      ]
    },
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void _restartQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: (_questionIndex < _questions.length) ?
        Quiz(
          answerQuestion:  _answerQuestion,
          questions: _questions,
          questionIndex: _questionIndex)
          : Result(_totalScore,_restartQuiz),
      ),
    );
  }
}
