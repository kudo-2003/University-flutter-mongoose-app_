// Flutter & Dart Library
import 'package:flutter/material.dart';

class BlurRadiusBrown {

  static const colorBoxDecoration = Colors.white;
  static const colorBoxShadow = Color.fromRGBO(225, 95, 27, .3);

  static var borderRadius = BorderRadius.circular(10);
  static var offset = const Offset(0, 10);
  
  static double blurRadius = 20.0;

  static final myBlurRadiusBrown = BoxDecoration(
    color: colorBoxDecoration ,
    borderRadius: borderRadius,
    boxShadow: [
      BoxShadow(
        color: colorBoxShadow,
        blurRadius: blurRadius,
        offset: offset,
      ),
    ],
  );
}