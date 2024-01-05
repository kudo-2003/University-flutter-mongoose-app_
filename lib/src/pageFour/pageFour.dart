//Flutter & Dart Library
import 'package:flutter/material.dart';
import 'package:flare_flutter/flare_actor.dart';
import 'index.dart';
import 'package:app_english_flutter_dart/src/pageFive/index.dart';

const brightYellow = Color(0xFFFFD300);
const darkYellow = Color(0xFFFFB900);

class PageFour extends State<IndexPageFour> {

  int flexFlexible8 = 8;
  int flexFlexible2 = 2;
  double elevationFlexible4 = 4;

  String imageFlareActor = 'images/English/bus.flr';
  String animationFlareActor = 'driving';
  String textText = 'We start to learn';

  final colorTextStyle = Colors.black54;
  final alignmentFlareActor = Alignment.center;
  final fitFlareActor = BoxFit.contain;
  final backgroundColorElevatedButton = darkYellow;
  final borderRadiusRoundedRectangleBorder = BorderRadius.circular(50);
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: brightYellow,
      body: Column(
        children: [
          Flexible(
            flex: flexFlexible8,
            child: FlareActor(
              imageFlareActor,
              alignment: alignmentFlareActor,
              fit: fitFlareActor,
              animation: animationFlareActor,
            ),
          ),
          Flexible(
            flex: flexFlexible2,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: backgroundColorElevatedButton,
                elevation: elevationFlexible4,
                shape: RoundedRectangleBorder(
                  borderRadius: borderRadiusRoundedRectangleBorder,
                ),
              ),
              child: Text(
                textText,
                style: TextStyle(
                  color: colorTextStyle,
                ),
              ),
              onPressed: () => Navigator.push(
                context, 
                MaterialPageRoute(
                  builder: (context) => const LogInPageFive(),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}