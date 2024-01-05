// Flutter & Dart Library
import 'package:flutter/material.dart';

class Google {

  static double heightContainer = 50.0;

  static final borderRadiusBoxDecoration = BorderRadius.circular(50);

  static const String nameText = "Google";
  static const colorTextStyle = Colors.white;
  static const colorBoxDecoration = Color.fromARGB(255, 56, 234, 64);
  static const fontWeightTextStyle = FontWeight.bold;

  static final myGoogle = Expanded(
    child: Container(
      height: heightContainer,
      decoration: BoxDecoration(
        borderRadius: borderRadiusBoxDecoration,
        color: colorBoxDecoration,
        ),
      child: const Center(
        child: Text(
          nameText,
          style: TextStyle(
            color: colorTextStyle,
            fontWeight: fontWeightTextStyle,
          ),
        ),
      ),
    ),
  );
}