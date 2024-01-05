// Flutter & Dart Library
import 'package:flutter/material.dart';

class Facebook {

  static const String nameText = "Facebook";
  static const colorTextStyle = Colors.white;
  static const fontWeightTextStyle = FontWeight.bold;
  static const colorBoxDecoration = Colors.blue;
  
  static final borderRadiusBoxDecoration = BorderRadius.circular(50);

  static final myFacebook = Expanded(
    child: Container(
    height: 50,
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