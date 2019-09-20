import 'package:flutter/material.dart';
import 'package:flutter_ui_challenges/core/presentation/res/assets.dart';
import 'package:flutter_ui_challenges/core/presentation/res/colors.dart';

class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CircleAvatar(
          radius: 80,
          backgroundColor: borderColor,
          child: CircleAvatar(
            radius: 70,
            backgroundColor: Colors.white,
            child: CircleAvatar(
              radius: 50,
              child: Image.asset(appLogo),
              backgroundColor: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
