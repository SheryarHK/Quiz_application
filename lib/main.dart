import 'package:flutter/material.dart';
import 'question_brain.dart';
import 'question_bank.dart';

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
                Question_bank[i].questionText,
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
                  if (Question_bank[i].questionAnswer == userPressed) {
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
                  if (Question_bank[i].questionAnswer == userPressed) {
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
