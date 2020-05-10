import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

import 'question.dart';

class Quiz {
  List<Question> _questions = [
    Question('You can lead a cow down stairs but not up stairs.', false),
    Question('Approximately one quarter of human bones are in the feet.', true),
    Question('A slug\'s blood is green.', true)
  ];
  int _index = 0;
  int _points = 0;
  List<Icon> scoreKeeper = [];

  String getQuestionText() {
    return _questions[_index].text;
  }

  void _nextQuestion(BuildContext context) {
    if (_index < _questions.length - 1) {
      _index++;
    } else {
      Alert(
        context: context,
        title: 'Finished!',
        desc: 'You\'ve reached the end of the quiz. Your score: $_points',
      ).show();
      reset();
    }
  }

  void reset() {
    _index = 0;
    _points = 0;
    scoreKeeper = [];
  }

  void checkAnswerQuestion(bool userPickedAnswer, BuildContext context) {
    Question q = _questions[_index];
    if (q.check(userPickedAnswer)) {
      scoreKeeper.add(
        Icon(
          Icons.check,
          color: Colors.green,
        ),
      );
      _points++;
    } else {
      scoreKeeper.add(
        Icon(
          Icons.close,
          color: Colors.red,
        ),
      );
    }

    _nextQuestion(context);
  }
}
