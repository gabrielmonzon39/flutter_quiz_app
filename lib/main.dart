import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() => runApp(QuizApp());

class QuizApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _QuizAppState();
  }
}

class _QuizAppState extends State<QuizApp> {
  static const _questions = [
    {
      'question': 'What\'s your Favorite Color?',
      'answers': [
        {'text': 'Blue', 'score': 5},
        {'text': 'Red', 'score': 15},
        {'text': 'Orange', 'score': 25},
      ],
    },
    {
      'question': 'Favorite PS4 game?',
      'answers': [
        {'text': 'Siege', 'score': 5},
        {'text': 'Rocket League', 'score': 15},
        {'text': 'TLOU', 'score': 25},
      ],
    },
    {
      'question': 'Favorite R6 Operator',
      'answers': [
        {'text': 'Blackbeard', 'score': 5},
        {'text': 'Vigil', 'score': 15},
        {'text': 'Doc', 'score': 25},
      ],
    }
  ];
  var _questionIndex = 0;
  var _totalScore = 0;

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex += 1;
    });
    print(_questionIndex);
  }

  void _resetQuiz(){
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(title: Text("My first app")),
          body: _questionIndex < _questions.length
              ? Quiz(
                  answerQuestion: _answerQuestion,
                  questionIndex: _questionIndex,
                  questions: _questions,
                )
              : Result(_totalScore, _resetQuiz)),
    );
  }
}
