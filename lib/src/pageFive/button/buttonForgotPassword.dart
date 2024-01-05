// Flutter & Dart Library
import 'package:flutter/material.dart';
class ForgotPassword {
  
  Widget build(BuildContext context) {

    const forgotPassword = 'Forgot Password?';
    const headerforgotPassword = Text('Forgot Password');
    const inputEmail = Text('Please enter your email:');
    const buttonSend = Text('Send');
    const contentSent = Text('Sent successfully');
    const textCancel = Text('Cancel');
    const colorText = TextStyle(color: Colors.grey);
    const hintTextInputDecoration = "Email";
    double widthSizedBox = 300;
    double heightSizedBox = 400;
    //API
    void onPressedSend() { Navigator.of(context).pop(); }
    void onPressedCancel(){ Navigator.of(context).pop(); }
    

    return GestureDetector(
      onTap: () {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return Dialog(
              child: SizedBox(
                width: widthSizedBox,
                height: heightSizedBox,
                child: AlertDialog(
                  title: headerforgotPassword,
                  content: const Column(
                    children: <Widget>[
                      inputEmail,
                      TextField(
                        decoration: InputDecoration(
                          hintText: hintTextInputDecoration,
                        ),
                      ),
                    ],
                  ),
                  actions: <Widget>[
                    TextButton(
                      child: buttonSend,
                      onPressed: () {
                        onPressedSend();
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: contentSent,
                          ),
                        );
                      },
                    ),
                    TextButton(
                      child: textCancel,
                      onPressed: () {
                       onPressedCancel();
                      },
                    ),
                  ],
                ),
              ),
            );
          },
        );
      },
      child: const Text(
        forgotPassword,
        style: colorText,
      ),
    );
  }
}