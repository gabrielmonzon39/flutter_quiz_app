import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int score;
  final Function resetHandler;
  Result(this.score, this.resetHandler);

  String get resultPhrase {
    var phrase = 'Well done';
    if (score >= 50) {
      phrase = 'We have similar tastes';
    } else if (score >= 25) {
      phrase = 'We have something in common';
    }

    return phrase + "\nYour score: " + score.toString();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
          ),
          FlatButton(
            onPressed: resetHandler,
            child: Text('Take the quiz again!'),
            color: Colors.redAccent,
          )
        ],
      ),
    );
  }
}
