import 'dart:ui';

import 'package:flutter/material.dart';

class myColor {
  static const Color jymRed = Color(0xffFF4936);
  static const Color jymBlack = Color(0xff191009);
  static const Color jymGrey = Color(0xff333531);
  static const Color jymBlue = Color(0xffA7DCD0);
  static const Color jymTan = Color(0xffFFE9D6);

  static final MaterialColor jymColor =
      MaterialColor(jymRed.value, const <int, Color>{
        50: jymRed,
        100: jymRed,
        200: jymRed,
        300: jymRed,
        400: jymRed,
        500: jymRed,
        600: jymRed,
        700: jymRed,
        800: jymRed,
        900: jymRed,
      });

  static final TextStyle jymText = TextStyle(
    color: jymTan,
  );
}

