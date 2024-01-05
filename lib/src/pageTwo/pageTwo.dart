//Flutter & Dart Library
import 'package:app_english_flutter_dart/src/pageTwo/index.dart';
import 'package:flutter/material.dart';

class PageTwo extends State<IndexPageTwo>{

  final colorContainer = const Color.fromARGB(255, 234, 226, 91);
  final mainAxisAlignmentColumn = MainAxisAlignment.center;
  final borderRadiusClipRRect = BorderRadius.circular(20.0);
  final double heightSizedBox = 400.0;
  final double widthSizedBox = 400.0;
  final colorTextStyle = const Color.fromARGB(255, 0, 0, 0);
  final double fontSizeTextStyle = 24;

  final contentText = "The class is fun and full of knowledge";
  String clipRRectImage = 'images/English/fun-english.gif';

  var heightSizedBox20 = const SizedBox(height: 20);

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
                clipRRectImage,
              ),
            ),
          ),
          heightSizedBox20,
           Text(
            contentText,
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