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
  int len = _Question_bank.length;
  if (_i < _Question_bank.length - 1) {
    _i++;

    print('user at $_i' + 'and the total length is $len');
  } else {
    print('No more questions');
  }
}
