import 'package:flutter/material.dart';

class BackgroundClipperOne extends CustomClipper<Path> {
  @override
    Path getClip(Size size) {
      final path = Path()
        ..lineTo(0.0, size.height-10.0)
        ..lineTo(size.width, 0.0)
        ..close();
      return path;
    }

  @override
    bool shouldReclip(CustomClipper<Path> oldClipper) {
      return true;
    }
}