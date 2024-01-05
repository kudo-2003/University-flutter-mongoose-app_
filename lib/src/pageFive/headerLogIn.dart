// Flutter & Dart Library
import 'package:flutter/material.dart';

class HeaderLogIn {

  static const paddingPadding = EdgeInsets.all(20);
  static const crossAxisAlignmentColumn = CrossAxisAlignment.start;
  static const String nameLogin = "Login";
  static const colorTextStyle = Colors.white;
  static const double fontSizeTextStyleLogin = 40;
  static const double fontSizeTextStyleEnglish = 18;
  static const heightSizedBox = SizedBox(height: 10,);
  static const String nameEnglish = "Welcome To English";

  static const myHeaderLogIn = Padding(
    padding: paddingPadding,
    child: Column(
      crossAxisAlignment: crossAxisAlignmentColumn,
      children: <Widget>[
        Text(
          nameLogin,
          style: TextStyle(
            color: colorTextStyle,
            fontSize: fontSizeTextStyleLogin,
          ),
        ),
        heightSizedBox,
        Text(
          nameEnglish,
          style: TextStyle(
            color: colorTextStyle,
            fontSize: fontSizeTextStyleEnglish,
          ),
        ),
      ],
    ),
  );
}