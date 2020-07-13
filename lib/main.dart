import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

void main() => runApp(QuizApp());

class QuizApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _QuizAppState();
  }
}

class _QuizAppState extends State<QuizApp> {
  static const questions = [
    {
      'question': 'What\'s your Favorite Color?',
      'answers': ['Blued', 'Red', 'Orange'],
    },
    {
      'question': 'Favorite PS4 game?',
      'answers': ['Siege', 'Rocket League', 'TLOU'],
    },
    {
      'question': 'Favorite R6 Operator',
      'answers': ['Blackbeard', 'Vigil', 'Doc'],
    }
  ];
  var question_index = 0;

  void _answerQuestion() {
    setState(() {
      question_index += 1;
    });
    print(question_index);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("My first app")),
        body: Column(
          children: [
            Question(
              questions[question_index]['question'],
            ),
            ...(questions[question_index]['answers'] as List<String>).map((answer){
              return Answer(_answerQuestion, answer);
            }).toList()
          ],
        ),
      ),
    );
  }
}
