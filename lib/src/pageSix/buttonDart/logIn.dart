import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import '/src/pageFive/index.dart';

class LogInButton {
  
  Widget build(BuildContext context) {

    //API chuyển trang
    void reatunLogIn() {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const LogInPageFive(),
        ),
      );
    }

    const textTextSpan1 = "Do you need to request anything else? ";
    const styleTextSpan1 = TextStyle(color: Colors.black);
    const textTextSpan2 = 'Log In';
    const styleTextSpan2 = TextStyle(color: Colors.orange);

    return RichText(
      text: TextSpan(
        children: [
          const TextSpan(
            text: textTextSpan1,
            style: styleTextSpan1,
          ),
          TextSpan(
            text: textTextSpan2,
            style: styleTextSpan2,
            recognizer: TapGestureRecognizer()
            ..onTap = () => reatunLogIn(),
          ),
        ],
      ),
    );
  }
}