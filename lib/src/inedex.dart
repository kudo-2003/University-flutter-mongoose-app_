//Flutter & Dart Library
import 'package:flutter/material.dart';
import 'package:app_english_flutter_dart/src/pageZero/index.dart';

class MyApp extends StatelessWidget {

 const MyApp({Key? key}) : super(key: key);

 @override
 Widget build(BuildContext context) {
  
  const title = 'English';
  const primarySwatchThemeData = Colors.green;

    return MaterialApp(
      title: title,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: primarySwatchThemeData,
      ),
      home: const IndexFlutter(title: 'English'),
    );
 }
}