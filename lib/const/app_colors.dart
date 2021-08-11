import 'package:flutter/material.dart';
import 'dart:ui' as ui;

class MyAppColors {
  static final primaryColor = Color(0xFFe53935);
  static final secondaryColor = Color(0xFFffee58);

  static final redColorSplash = Color(0xFFCB1616);
  static final yellowColorSplash = Color(0xFFFF851B);

  static final bgSplashScreen = LinearGradient(
    colors: [
      yellowColorSplash,
      redColorSplash,
    ],
    begin: Alignment.topRight,
    end: Alignment.bottomLeft,
  );

  static final List<Color> orangeGradients = [
    Color(0xFFFF9844),
    Color(0xFFFE8853),
    Color(0xFFFD7267),
  ];
}