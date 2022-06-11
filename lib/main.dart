import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';
// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {

  final questions = const [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {'text':'Black','score':2},
        {'text':'Red','score':5},
        {'text': 'Green','score':10},
        {'text':'White','score':1}],
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        {'text':'Black','score':2},
        {'text':'Red','score':5},
        {'text': 'Green','score':10},
        {'text':'White','score':1}],
    },
    {
      'questionText': 'Who\'s your favorite instructor?',
      'answers': [
        {'text':'Black','score':2},
        {'text':'Red','score':5},
        {'text': 'Green','score':10},
        {'text':'White','score':1}],
    },
  ];
  var _questionIndex = 0;
  var _totalScore = 0;

  void _answerQuestion(int score) {

    setState(() {
      _totalScore += score;
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    if (_questionIndex < questions.length) {
      print('we have  more question');
    } else {
      print('we dont have');
    }
  }

  void _resetQuestion(){
    setState((){
      _questionIndex = 0 ;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My First App'),
        ),
        body: _questionIndex < questions.length
            ? Quiz(questions:questions,questionIndex: _questionIndex,answerQuestion: _answerQuestion,)
            : Result(score:_totalScore,reset: _resetQuestion,)
      ),
    );
  }
}
