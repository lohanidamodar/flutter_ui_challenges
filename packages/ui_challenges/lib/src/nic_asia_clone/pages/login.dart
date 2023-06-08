/**
 * Author: Mausam Rayamajhi
 * profile: https://github.com/mausamRayamajhi
  */

import 'package:flutter/material.dart';
import '../util/constant.dart';
import '../widget/login/login_container.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const LoginContainer(),
      backgroundColor: Colors.white,
      floatingActionButton: FloatingActionButton(
        backgroundColor: primaryColor,
        onPressed: () {},
        child: Image.asset(
          'assets/nicasiaassets/nicLogo.png',
          color: Colors.white,
        ),
      ),
    );
  }
}
