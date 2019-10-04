import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: QuizApp(),
      ),
    ),
  );
}

class QuizApp extends StatefulWidget {
  @override
  _QuizAppState createState() => _QuizAppState();
}

class _QuizAppState extends State<QuizApp> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              flex: 5,
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('This is where the Question Text will go',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 30)),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: FlatButton(
                  onPressed: () {},
                  color: Colors.green,
                  child: Text(
                    "True",
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(12.0, 12.0, 12.0, 10.0),
                child: FlatButton(
                  color: Colors.red,
                  child: Text(
                    "False",
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                  onPressed: () {},
                ),
              ),
            ),
          ],
        ),
        backgroundColor: Colors.black87,
      ),
    );
  }
}
