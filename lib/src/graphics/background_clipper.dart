import 'package:flutter/material.dart';

class BackgroundClipper extends CustomClipper<Path> {
  @override
    Path getClip(Size size) {
      final path = Path()
        ..lineTo(0.0, size.height-80.0)
        ..lineTo(size.width, size.height)
        ..lineTo(size.width, 0.0)
        ..close();
      return path;
    }

  @override
    bool shouldReclip(CustomClipper<Path> oldClipper) {
      return true;
    }
}