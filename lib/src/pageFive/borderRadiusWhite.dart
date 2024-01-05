// Flutter & Dart Library
import 'package:flutter/material.dart';

class BorderWhite {

  static const colorBoxDecoration = Colors.white;
  static const topLeftBorderRadius = Radius.circular(60);
  static const topRightBorderRadius = Radius.circular(60);

  static const myBorderWhite = BoxDecoration(
    color: colorBoxDecoration,
    borderRadius: BorderRadius.only(
      topLeft: topLeftBorderRadius,
      topRight: topRightBorderRadius,
    ),
  );
}