import 'package:flutter/material.dart';

class BackgroundClipperOne extends CustomClipper<Path> {
  @override
    Path getClip(Size size) {
      final path = Path()
        ..lineTo(0.0, size.height)
        ..lineTo(size.width, size.height)
        ..lineTo(size.width, 0.0)
        ..quadraticBezierTo(size.width, 0.0, size.width-20.0, 0.0)
        ..lineTo(40.0, 70.0)
        ..quadraticBezierTo(10.0, 85.0, 0.0, 120.0)
        ..close();
      return path;
    }

  @override
    bool shouldReclip(CustomClipper<Path> oldClipper) {
      return true;
    }
}