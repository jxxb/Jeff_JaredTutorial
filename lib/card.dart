import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_tutorial/question.dart';

class CardContainer extends StatelessWidget {
  const CardContainer(
      {Key? key, required this.question, required this.answerQuestion})
      : super(key: key);
  final String question;
  final Function() answerQuestion;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Card(
              color: Color(0xffA7DCD0),
              child: SizedBox(
                  width: 300,
                  height: 300,
                  child: Column(
                    children: [
                      Question(question),
                      ElevatedButton(

                        child: Text('Answer 1',style:TextStyle()),
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
                  )),
            ),
          ],
        ));
  }
}
