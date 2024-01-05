// Flutter & Dart Library
import 'package:app_english_flutter_dart/src/pageFive/button/buttonSignUp.dart';
import 'package:flutter/material.dart';
import 'button/buttonForgotPassword.dart';
import 'blurRadiusBrown.dart';
import 'borderRadiusWhite.dart';
import 'boxColor.dart';
import 'headerLogIn.dart';
import 'button/buttonFacebook.dart';
import 'button/buttonGoogle.dart';
import 'button/buttonLogIn.dart';
import 'index.dart';
class LogInPageTwoState extends State<LogInPageFive>{
  var gradient = DataColor.colorTwo;
  var header = HeaderLogIn.myHeaderLogIn;
  //border
  var decorationBorderWhite = BorderWhite.myBorderWhite;
  var decorationBlurRadiusBrown = BlurRadiusBrown.myBlurRadiusBrown;
  //button
  var facebook = Facebook.myFacebook;
  var google = Google.myGoogle;
  //configuration
  var crossAxisAlignment = CrossAxisAlignment.start;
  var textColorGrey = const TextStyle(color: Colors.grey);
  var width = double.infinity;
  var padding = const EdgeInsets.all(30);
  //width
  var sizeWidth30 = const SizedBox(width: 30,);
  //height
  var sizeHeight20 = const SizedBox(height: 20);
  var sizeHeight30 = const SizedBox(height: 30,);
  var sizeHeight40 = const SizedBox(height: 40,);
  var sizeHeight50 = const SizedBox(height: 50,);
  var sizeHeight60 = const SizedBox(height: 60,);
  var sizeHeight80 = const SizedBox(height: 80,);
  final contentText = 'Login from social networks';

  final _formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold (
      body: Container (
        width: width,
        decoration: BoxDecoration ( gradient: gradient, ),
        child: Column (
          crossAxisAlignment: crossAxisAlignment,
          children: <Widget> [ sizeHeight80, header, sizeHeight20,
            Expanded (
              child: Container (
                decoration: decorationBorderWhite,
                child: SingleChildScrollView(
                  child: Padding (
                    padding: padding,
                    child: Column (
                      children: <Widget> [ 
                        sizeHeight60,
                        Container (
                          decoration: decorationBlurRadiusBrown,
                          child:
                            Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              InputField(
                hint: "Email or Phone number",
                icon: Icons.email,
                controller: emailController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter email or phone number!🤔';
                  }
                  if (!RegExp(r'^[\w-]+(\.[\w-]+)*@([\w-]+\.)+[a-zA-Z]{2,7}$').hasMatch(value)) {
                    return 'The email address is not in the correct format!🙄';
                  }
                  return '';
                },
              ),
              InputField(
                hint: "Password",
                icon: Icons.vpn_key,
                controller: passwordController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a password!🤔';
                  }
                  if (value.length < 8) {
                    return 'Password must be at least 8 characters!🙄';
                  }
                  return '';
                },
              ),
            ],
          ),
        ),  
                        ),        
                        sizeHeight40,
                        ForgotPassword().build(context),
                        sizeHeight20,
                        SignUpButton().build(context),
                        sizeHeight20,
                        ButtonLogIn().myButtonLogIn(context, _formKey, emailController, passwordController),
                        sizeHeight50,
                        Text( contentText, style: textColorGrey, ),
                        sizeHeight30,
                        Row ( children: <Widget> [ facebook, sizeWidth30, google, ], ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}



class InputField extends StatelessWidget {
  final String hint;
  final IconData icon;
  final TextEditingController controller;
  final String Function(String?) validator;

  InputField({
    required this.hint,
    required this.icon,
    required this.controller,
    required this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Colors.grey[200]!,
          ),
        ),
      ),
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
          hintText: hint,
          hintStyle: const TextStyle(
            color: Colors.grey,
          ),
          prefixIcon: Icon(icon),
          border: InputBorder.none,
        ),
        validator: validator,
      ),
    );
  }
}

