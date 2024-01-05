//Flutter & Dart Library
import 'package:flutter/material.dart';
import 'package:app_english_flutter_dart/src/pageOne/index.dart';
import 'package:app_english_flutter_dart/src/pageTwo/index.dart';
import 'package:app_english_flutter_dart/src/pageThree/index.dart';
import 'package:app_english_flutter_dart/src/pageFour/index.dart';
import 'index.dart';
// import 'package:onboarding/onboarding.dart';

class PageZeroState extends State<PageZero>{

  int _currentPage = 0;
  final PageController _pageController = PageController(initialPage: 0);
  final List<Widget> _pages = [
    // Page 1
    const IndexPageOne(),
    // Page 2
    const IndexPageTwo(),
    // Page 3
    const IndexPageThree(),
  ];

  @override
  Widget build(BuildContext context) {

    void onPageChangedPageView(int page){
      setState(() { _currentPage = page; });
    }

    void onPressedFloatingActionButton1() {
      setState(() { _currentPage -= 1; });
      _pageController.previousPage(
        duration: const Duration(milliseconds: 500),
        curve: Curves.ease,
      );
    }

    void onPressedFloatingActionButton2(){
      setState(() { _currentPage += 1; });
      _pageController.nextPage(
        duration: const Duration(milliseconds: 500),
        curve: Curves.ease);
    }

    const floatingActionButtonLocation = FloatingActionButtonLocation.centerFloat;
    const fitStack = StackFit.expand;
    const iconleft = Icon(Icons.arrow_left, size: 40, );
    const heroTagFloatingActionButtonPrevious = 'previous';
    const null0 = null;
    final yellow = Colors.yellow[400];
    const grey = Colors.grey;
    double sizeIcon = 40;
    double leftPositioned = 30;
    double bottomPositioned = 20;
    var borderRadiusRoundedRectangleBorder = BorderRadius.circular(10);
    String heroTagFloatingActionButtonNext = 'next';
    final even = _pages.length - 1;
    int zero = 0;


    return Scaffold(
        body: PageView(
          controller: _pageController,
          onPageChanged: onPageChangedPageView,
          children: _pages,
        ),
        floatingActionButtonLocation: floatingActionButtonLocation,
        floatingActionButton: Stack(
          fit: fitStack,
          children: [
            Positioned(
              left: leftPositioned,
              bottom: bottomPositioned,
              child: FloatingActionButton(
                heroTag: heroTagFloatingActionButtonPrevious,
                backgroundColor: _currentPage > zero ? yellow : grey,
                onPressed: _currentPage > zero
                    ? onPressedFloatingActionButton1
                    : null0,
                shape: RoundedRectangleBorder(
                  borderRadius: borderRadiusRoundedRectangleBorder,
                ),
                child: iconleft,
              ),
            ),
            Positioned(
              bottom: leftPositioned,
              right: bottomPositioned,
              child: FloatingActionButton(
                heroTag: heroTagFloatingActionButtonNext,
                onPressed: _currentPage < even
                    ? onPressedFloatingActionButton2
                    : () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const IndexPageFour(),
                        ),
                        ),
                shape: RoundedRectangleBorder(
                  borderRadius: borderRadiusRoundedRectangleBorder,
                ),
                child: Icon( _currentPage < even ? Icons.arrow_right : Icons.done, size: sizeIcon, ),
            ),
          ),
        ],
      ),
    );
  }
}

