import 'package:flutter/material.dart';


Color orangeColors = const Color(0xffF5591F);
Color orangeLightColors = const Color(0xffF2861E);

class HeaderContainer extends StatelessWidget {
  final String text;
  const HeaderContainer(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.4,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [orangeColors, orangeLightColors],
              end: Alignment.bottomCenter,
              begin: Alignment.topCenter),
          borderRadius:
              const BorderRadius.only(bottomLeft: Radius.circular(100))),
      child: Stack(
        children: <Widget>[
          Positioned(
              bottom: 20,
              right: 20,
              child: Text(
                text,
                style: const TextStyle(color: Colors.white, fontSize: 20),
              )),
          const Center(
            child: Text('Sign Up', style: TextStyle(fontSize: 40, color: Colors.white)),
          ),
        ],
      ),
    );
  }
}
