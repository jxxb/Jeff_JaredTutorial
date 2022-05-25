import 'package:flutter/material.dart';
import './question.dart';
import 'card.dart';
import './colors.dart';
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
      theme: ThemeData(
        primarySwatch: myColor.jymColor,
          // buttonTheme: ButtonThemeData(
          //     buttonColor: Color(0xff333531)
            // primaryColor: Color(0xffFF4936),
          // primaryColorDark: Color(0xff191009),
          // accentColor: Color(0xffA7DCD0),
          // backgroundColor: Color(0xffFFE9D6),
          // )
      ),

      home: Scaffold(
        backgroundColor: Color(0xffFFE9D6),
        appBar: AppBar(
          backgroundColor: Color(0xffFF4936),
          title: Text(
              'myJym', style: myColor.jymText,
          ),
        ),
        body: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              CardContainer(
                question: questions[_questionIndex],
                answerQuestion: answerQuestion,
              ),
              CardContainer(
                question: questions[_questionIndex],
                answerQuestion: answerQuestion,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
