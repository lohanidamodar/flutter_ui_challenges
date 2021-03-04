/**
 * Author: Mausam Rayamajhi
 * profile: https://github.com/mausamRayamajhi
  */
  
import 'package:flutter/material.dart';
import '../util/constant.dart';
import '../widget/login/login_container.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LoginContainer(),
      backgroundColor: Colors.white,
      floatingActionButton: FloatingActionButton(
        child: Image.asset(
          'assets/nicasiaassets/nicLogo.png',
          color: Colors.white,
        ),
        backgroundColor: primaryColor,
        onPressed: () {},
      ),
    );
  }
}
