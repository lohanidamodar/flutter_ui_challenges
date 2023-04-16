/**
 * Author: Mausam Rayamajhi
 * profile: https://github.com/mausamRayamajhi
  */

import 'package:flutter/material.dart';
import '../util/constant.dart';

class ProfileImage extends StatelessWidget {
  final double height, width;
  final Color color;
  const ProfileImage(
      {super.key, this.height = 100.0, this.width = 100.0, this.color = primaryColor});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.red,
        image: const DecorationImage(
          image: AssetImage('assets/nicasiaassets/profile.jpg'),
          fit: BoxFit.contain,
        ),
        border: Border.all(
          color: color,
          width: 3.0,
        ),
      ),
    );
  }
}
