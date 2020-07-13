import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function function;
  final String text;

  Answer(this.function, this.text);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(left: 10, right: 10),
      child: RaisedButton(
        color: Colors.black,
        textColor: Colors.white,
        child: Text(text),
        onPressed: function,
      ),
    );
  }
}
