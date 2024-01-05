//Flutter & Dart Library
import 'package:app_english_flutter_dart/src/pageThree/index.dart';
import 'package:flutter/material.dart';

class PageThree extends State<IndexPageThree>{

  final colorContainer = const Color.fromARGB(255, 232, 193, 49);
  final mainAxisAlignmentColumn = MainAxisAlignment.center;
  final double heightSizedBox = 400;
  final double widthSizedBox = 400;
  final double fontSizeTextStyle = 24;
  final borderRadiusClipRRect = BorderRadius.circular(20.0);
  final colorTextStyle = const Color.fromARGB(255, 0, 0, 0);
  final heightSizedBox20 = const SizedBox(height: 20);

  String imageClipRRect = 'images/English/liu-liu-english.gif';
  String textText = "Great learning is full of fun!";


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