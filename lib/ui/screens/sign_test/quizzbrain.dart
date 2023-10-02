import 'question.dart';

class QuizBrain {
  // here we make the questionBank instance to private
  int _questionNumber = 0;
  final List<Question> _questionBank = [
    Question('assets/signlanguage/A.jpg', 'A', 'B', 'D', 'A', 'C'),
    Question('assets/signlanguage/C.jpg', 'C', 'B', 'D', 'P', 'C'),
    Question('assets/signlanguage/F.jpg', 'F', 'F', 'D', 'A', 'Q'),
    Question('assets/signlanguage/H.jpg', 'H', 'B', 'D', 'H', 'W'),
    Question('assets/signlanguage/M.jpg', 'M', 'M', '9', '2', 'V'),
    Question('assets/signlanguage/U.jpg', 'U', 'P', 'U', 'M', 'C'),
    Question('assets/signlanguage/V.jpg', 'V', 'B', 'D', '3', 'V'),
    Question('assets/signlanguage/numbers/8.jpg', '8', '0', '8', 'H', 'C'),
    Question('assets/signlanguage/Q.jpg', 'Q', 'I', 'D', 'Q', 'J'),
    Question('assets/signlanguage/W.jpg', 'W', 'C', 'W', '5', 'H'),
    Question('assets/signlanguage/X.jpg', 'X', 'B', 'E', 'X', 'L'),
    Question('assets/signlanguage/S.jpg', 'S', 'S', 'D', 'H', 'C'),
    Question('assets/signlanguage/O.jpg', 'L', 'L', 'O', 'P', 'V'),
  ];

  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    }
  }

  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  String getOption1() {
    return _questionBank[_questionNumber].questionOption1;
  }

  String getOption2() {
    return _questionBank[_questionNumber].questionOption2;
  }

  String getOption3() {
    return _questionBank[_questionNumber].questionOption3;
  }

  String getOption4() {
    return _questionBank[_questionNumber].questionOption4;
  }

  String getQuestionAnswer() {
    return _questionBank[_questionNumber].questionAnswer1;
  }

  bool isFinished() {
    if (_questionNumber >= _questionBank.length - 1) {
      // print('Now returning true');
      return true;
    } else {
      return false;
    }
  }

  void reset() {
    _questionNumber = 0;
  }
}
