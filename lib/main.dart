import 'package:flutter/material.dart';

// void main() {
//   runApp(QuizApp());
// }

void main() => runApp(QuizApp());

class QuizApp extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return QuizAppState();
  }
}
class QuizAppState extends State<QuizApp> {
  var questions = [
    'Question #1',
    'Question #2',
    'Question #3'
  ];
  var question_index = 0;

  void answerQuestion(){
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
            Text(questions[question_index]),
            RaisedButton(
              child: Text('answer 1'),
              onPressed: answerQuestion,
            ),
            RaisedButton(
              child: Text('answer 2'),
              onPressed: answerQuestion,
            ),
            RaisedButton(
              child: Text('answer 3'),
              onPressed: answerQuestion,
            ),
          ],
        ),
      ),
    );
  }
}
