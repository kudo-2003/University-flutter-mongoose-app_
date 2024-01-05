import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '../pageSeven/index.dart';

class ButtonLogInAPI {
   Future<void> evenButton( String emailController, String passwordController, BuildContext context) async { 
    var response = await http.post(
        Uri.parse('http://localhost:3000/api/login'),
        body: {
          'email': emailController,
          'password': passwordController,
        },
      );

      print('text log in ');
      if (response.statusCode == 200) {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const HomePage (),
          ),
        );
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Email hoặc mật khẩu không chính xác')),
        );
      }
  }
}