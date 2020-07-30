import 'package:flutter/material.dart';

import './quize.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _question = const [
    {
      'questionText': 'What\'s your favorite Color',
      'answers': ['Black', 'Red', 'Green', 'White']
    },
    {
      'questionText': 'What\'s your favorite Animals',
      'answers': ['Tiger', 'Lion', 'Cow', 'Dog']
    },
    {
      'questionText': 'Who\'s your favorite instructor',
      'answers': ['janmesh', 'janmesh', 'janmesh', 'janmesh']
    },
  ];
  var _questionIndex = 0;

  void _answerquestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });

    if (_questionIndex < _question.length) {
      print('we have more question');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
          backgroundColor: Colors.green,
        ),
        body: _questionIndex < _question.length
            ? Quize(
                answerquestion: _answerquestion,
                question: _question,
                questionIndex: _questionIndex,
              )
            : Result(),
      ),
    );
  }
}
