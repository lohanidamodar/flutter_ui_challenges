import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui_challenges/src/furniture_app/utils/constant.dart';

class ProfileImage extends StatelessWidget {
  final double height, width;
  final Color color;
  ProfileImage(
      {this.height = 100.0, this.width = 100.0, this.color = Colors.white});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.red,
        image: DecorationImage(
          image: NetworkImage(devMausam),
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
