// Flutter & Dart Library
import 'package:flutter/material.dart';
import 'package:app_english_flutter_dart/src/indexPage/index.dart';

class IndexFlutter extends StatefulWidget {

 const IndexFlutter({Key? key, required this.title}) : super(key: key);
 final String title;

 @override
 State<IndexFlutter> createState() => HomePageZero();
 
}
class HomePageZero extends State<IndexFlutter> with TickerProviderStateMixin{

  late final AnimationController _controller;
  late final Animation<double> _animation;

  @override void initState() {

    super.initState();

    _controller = AnimationController(
      duration: const Duration(seconds: 3),
      vsync: this,
    )..repeat();

    _animation = CurvedAnimation(
      parent: _controller, 
      curve: Curves.fastOutSlowIn,
    );
    
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const PageZero(),
        ),
      );
    }
  );
}

  @override
  void dispose(){ _controller.dispose(); super.dispose(); }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizeTransition(
        sizeFactor: _animation,
        axis: Axis.horizontal,
        axisAlignment: -1,
        child: Center(
          child: SizedBox(
            width: 400,
            height: 400,
            child: Image.asset('images/English/logo-english.png'),
          ),
        ),
      ),
    );
  }
}