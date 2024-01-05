// Flutter & Dart Library
import 'package:flutter/material.dart';

class DataColor {

  static const beginLinearGradient = Alignment.topCenter;

  static final colorTwo = LinearGradient(
    colors: [
      Colors.orange[900]!,
      Colors.orange[800]!,
      Colors.orange[400]!,
    ],
    begin: beginLinearGradient,
  );
}