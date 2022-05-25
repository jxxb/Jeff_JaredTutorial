import 'dart:ui';
import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;

  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Text(
        questionText,
        style: TextStyle(fontSize: 28, color: Color(0xff333531)),
        textAlign: TextAlign.center,
      ),
    );
  }
}
