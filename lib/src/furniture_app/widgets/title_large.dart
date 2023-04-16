import '../utils/constant.dart';
import 'package:flutter/material.dart';

class TitleLarge extends StatelessWidget {
  final String title;
  final IconData? icon;

  const TitleLarge({super.key, required this.title, this.icon});
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: icon != null
          ? MainAxisAlignment.spaceBetween
          : MainAxisAlignment.start,
      children: <Widget>[
        Text(
          title,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 40.0,
            letterSpacing: 2.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        if (icon != null)
          Stack(
            clipBehavior: Clip.none,
            children: <Widget>[
              Icon(icon),
              Positioned(
                right: -7.0,
                top: -7.0,
                child: Container(
                  padding: const EdgeInsets.all(4.0),
                  decoration: const BoxDecoration(
                    color: profileInfoBackground,
                    shape: BoxShape.circle,
                  ),
                  child: const Text(
                    '2',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 10.0,
                    ),
                  ),
                ),
              ),
            ],
          ),
      ],
    );
  }
}
