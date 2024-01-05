// Flutter & Dart Library
import 'package:flutter/material.dart';
import 'package:app_english_flutter_dart/src/API/api_evenClick.dart';

class ButtonLogIn {
  static double heightContainer = 50;
  static final borderRadiusBoxDecoration = BorderRadius.circular(50);
  static const marginContainer = EdgeInsets.symmetric(horizontal: 50);
  static final colorBoxDecoration = Colors.orange[900];
  static const String nameText = "Log in";
  static const colorText = Colors.white;
  static const fontWeightText = FontWeight.bold;

   Widget myButtonLogIn(BuildContext context, GlobalKey<FormState> _formKey, TextEditingController emailController, TextEditingController passwordController) {
    return Container(
      height: heightContainer,
      margin: marginContainer,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: colorBoxDecoration,
          shape: RoundedRectangleBorder(
            borderRadius: borderRadiusBoxDecoration,
          ),
        ),
        onPressed:
      () async {
            if (_formKey.currentState!.validate()) {
              await ButtonLogInAPI().evenButton(emailController.text, passwordController.text, context);
            } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Vui lòng nhập email và mật khẩu')),
      );
    }
            
          },
        child: const Center(
          child: Text(
            nameText,
            style: TextStyle(
              color: colorText,
              fontWeight: fontWeightText,
            ),
          ),
        ),
      ),
    );
  }
}