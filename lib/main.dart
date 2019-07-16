import 'package:flutter/material.dart';
import 'question_brain.dart';

void main() {
  return runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'Quiz App',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Body(),
    ),
  ));
}

List<Icon> result = [];

List<Questions> question_bank = [
  Questions('Stars are countable', false),
  Questions('Cows can fly', false),
  Questions('humans can live forever', false),
  Questions('Cars can fly', false),
  Questions('we only live once', false),
  Questions('iPhones are the best', true),
  Questions('Ps4 is greatest', true),
];

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int i = 0;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            flex: 5,
            child: Center(
              child: Text(
                question_bank[i].questionText,
                style: TextStyle(
                  fontSize: 21,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: FlatButton(
                onPressed: () {
                  bool userPressed = true;
                  if (question_bank[i].questionAnswer == userPressed) {
                    print('correct');
                  } else {
                    print('Wrong');
                  }

                  setState(() {
                    i = i + 1;
                  });
                },
                child: Text(
                  'True',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 21,
                  ),
                ),
                color: Colors.green,
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: FlatButton(
                onPressed: () {
                  bool userPressed = true;
                  if (question_bank[i].questionAnswer == userPressed) {
                    print('Wrong');
                  } else {
                    print('correct');
                  }
                  setState(() {
                    i = i + 1;
                  });
                },
                child: Text(
                  'False',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 21,
                  ),
                ),
                color: Colors.red,
              ),
            ),
          ),
          SizedBox(
            height: 2,
          ),
          Row(
            children: result,
          )
        ],
      ),
    );
  }
}
