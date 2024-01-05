
import 'package:flutter/material.dart';
import 'buttonDart/signUp.dart';
import 'buttonDart/logIn.dart';
import 'headerSignUp.dart';
import 'inputSignUp.dart';
import 'index.dart';

Color orangeColors = const Color(0xffF5591F);
Color orangeLightColors = const Color(0xffF2861E);

class SignUpPageState extends State<SignUpPage> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  void buttonError() {
    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(bottom: 30),
        child: Column(
          children: <Widget>[
            const HeaderContainer("Welcome to English!"),
            Expanded(
              flex: 1,
              child: Container(
                margin: const EdgeInsets.only(left: 20, right: 20, top: 30),
                child: Form( 
                  key: _formKey,
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      SignUpInput().textInputName(controller: nameController, hint: "Fullname", icon: Icons.person),
                      SignUpInput().textInputEmail(controller: emailController, hint: "Email", icon: Icons.email),
                      SignUpInput().textInputPhone(controller: phoneController, hint: "Phone Number", icon: Icons.call),
                      SignUpInput().textInputPassword(controller: passwordController, hint: "Password", icon: Icons.vpn_key),
                      SignUpButton().build(context, _formKey, nameController, phoneController, emailController, passwordController),
                      LogInButton().build(context),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
