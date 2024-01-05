import 'package:app_english_flutter_dart/src/pageSix/index.dart';
import 'package:flutter/material.dart';

class SignUpButton {

  Widget build(BuildContext context) {
    return GestureDetector(
  onTap: () {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const SignUpPage()),
    );
  },
  child: const Text(
    'Sign Up',
    style: TextStyle(color: Colors.grey),
  ),
  );
}
}