
import 'package:flutter/material.dart';
import '../write_object/buttonWidget.dart'; 
import '../../API/api_SignUp.dart';

class SignUpButton {
  Widget build(BuildContext context, GlobalKey<FormState> _formKey,  nameController,  phoneController,  emailController,  passwordController) { // Thêm kiểu dữ liệu cho _formKey
    return Expanded(
      child: Center(
        child: ButtonWidget(
          btnText: "Sign Up",
          onClick: () async {
            if (_formKey.currentState!.validate()) {
              await addUser(nameController.text, phoneController.text, emailController.text, passwordController.text);
              ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Sign Up Success!😊')),
              );
            };
            
          },
        ),
      ),
    );
  }
}
