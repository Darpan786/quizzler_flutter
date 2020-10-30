import 'question.dart';

int _questionNumber = 0;

class QuizBrain {
  List<Question> _questionBank = [
    Question('Some cats are actually allergic to humans', a: true),
    Question('You can lead a cow down stairs but not up stairs.', a: false),
    Question('Approximately one quarter of human bones are in the feet.',
        a: true)
  ];

  void nextQuestion() {
    if (_questionNumber < _questionBank.length) {
      _questionNumber++;
    }
  }

  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  bool getCorrectAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
  }
}
