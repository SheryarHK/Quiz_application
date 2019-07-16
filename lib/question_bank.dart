import 'question_brain.dart';

int _i = 0;

List<Questions> _Question_bank = [
  Questions('Stars are countable', false),
  Questions('Cows can fly', false),
  Questions('humans can live forever', false),
  Questions('Cars can fly', false),
  Questions('we only live once', false),
  Questions('iPhones are the best', true),
  Questions('Ps4 is greatest', true),
];

String getQuestionText() {
  return _Question_bank[_i].questionText;
}

bool getQuestionAnswer() {
  return _Question_bank[_i].questionAnswer;
}

void questionNumber() {
  if (_i < _Question_bank.length - 1) {
    _i++;
  } else {}
}

bool isFinished() {
  if (_i == _Question_bank.length - 1) {
    return true;
  } else {
    return false;
  }
}

void reset() {
  _i = 0;
}
