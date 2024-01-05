//Flutter & Dart Library
import 'package:app_english_flutter_dart/src/pageOne/index.dart';
import 'package:flutter/material.dart';

class PageOne extends State<IndexPageOne>{

  final colorContainer = const Color.fromARGB(255, 237, 219, 152);
  final mainAxisAlignmentColumn = MainAxisAlignment.center;
  final borderRadiusClipRRect = BorderRadius.circular(20.0);
  final colorTextStyle = Colors.black;

  String imageClipRRect = 'images/English/welcome-english.gif';
  String textText = "Welcome to English!";

  final heightSizedBox20 = const SizedBox(height: 20,);

  double heightSizedBox = 400;
  double widthSizedBox = 400;
  double fontSizeTextStyle = 24;
  

  @override
  Widget build(BuildContext context) {
    return Container(
      color: colorContainer,
      child: Column(
        mainAxisAlignment: mainAxisAlignmentColumn,
        children: [
        SizedBox(
          height: heightSizedBox,
          width: widthSizedBox,
          child: ClipRRect(
            borderRadius: borderRadiusClipRRect,
            child: Image.asset(
              imageClipRRect,
            ),
          ),
        ),
        heightSizedBox20,
        Text(
          textText,
          style: TextStyle(
            color: colorTextStyle, 
            fontSize: fontSizeTextStyle,
            ),
          ),
        ],
      ),
    );
  }
}