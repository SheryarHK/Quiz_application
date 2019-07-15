import 'package:flutter/material.dart';

void main() {
  return runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.white,
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

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            flex: 3,
            child: Center(
              child: Text(
                'Question',
                style: TextStyle(
                  fontSize: 21,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: FlatButton(
              shape: CircleBorder(),
              onPressed: () {},
              child: Text('TRUE'),
              color: Colors.green,
            ),
          ),
          Expanded(
            flex: 1,
            child: FlatButton(
              shape: CircleBorder(),
              onPressed: () {},
              child: Text('False'),
              color: Colors.red,
            ),
          )
        ],
      ),
    );
  }
}
