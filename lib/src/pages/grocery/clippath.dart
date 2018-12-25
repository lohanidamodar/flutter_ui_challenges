import 'package:flutter/material.dart';

class ArcClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path()
      ..lineTo(0.0, size.height)
      ..quadraticBezierTo(0.0, size.height/2, size.width, size.height)
      ..lineTo(size.width, 0.0)
      ..close();
    return path;;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }

}