import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int score;
  final VoidCallback reset;

  const Result({Key? key, required this.score, required this.reset}) : super(key: key);

  String get resultPhrase {
    String resultText = 'oge';
    if (score <= 8) {
      resultText = 'hahaha';
    } else if (score <= 12) {
      resultText = 'likeable';
    } else if (score <= 16) {
      resultText = 'you are strenge';
    } else {
      resultText = 'you are so bad';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
        ),
        TextButton(child: Text('Restart Quiz!'),onPressed: reset,style: TextButton.styleFrom(primary: Colors.blue),)
      ],
    );
  }
}
