import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
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
  void checkAnswers(bool userPressed) {
    setState(() {
      questionNumber();
      if (!isFinished()) {
        if (userPressed == getQuestionAnswer()) {
          result.add(Icon(
            Icons.check,
            color: Colors.green,
          ));
        } else {
          result.add(Icon(
            Icons.close,
            color: Colors.red,
          ));
        }
      } else {
        Alert(
          context: context,
          type: AlertType.error,
          title: "No more Questions!",
          buttons: [
            DialogButton(
              child: Text(
                "Ok",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              onPressed: () {
                Navigator.pop(context);
              },
              width: 120,
            )
          ],
        ).show();

        reset();
        result.clear();
      }
    });
  }

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
                getQuestionText(),
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

                  checkAnswers(userPressed);
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
                  bool userPressed = false;

                  checkAnswers(userPressed);
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
