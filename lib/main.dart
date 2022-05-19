import 'package:flutter/material.dart';
import './question.dart';
// void main() {
//   runApp(App());
// }

void main() => runApp(App());


class App extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    // throw UnimplementedError();
    return _AppState();
  }
}
class _AppState extends State<App> {
  var _questionIndex = 0;

  void answerQuestion() {
    setState(() {
      _questionIndex++;
      print(_questionIndex);
    });
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favorite genre Jeff?',
      'What\'s your favorite song Jeff?',
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Hi Jeff :)'
          ),
       ),
      body: Column(children: [
        Question(
        questions[_questionIndex]
        ),
        ElevatedButton(
          child: Text('Answer 1'),
          onPressed: answerQuestion,
        ),
        ElevatedButton(
          child: Text('Answer 2'),
          onPressed: () => print('Answer 2 chosen!'),
        ),
        ElevatedButton(
          child: Text('Answer 3'),
          onPressed: () {
            print('Pick number 3 mahLord');
        },
        ),
      ],
      ),
    ),
    );
  }
}