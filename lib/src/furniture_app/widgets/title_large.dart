import '../utils/constant.dart';
import 'package:flutter/material.dart';

class TitleLarge extends StatelessWidget {
  final String title;
  final IconData icon;

  TitleLarge({@required this.title, this.icon});
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: icon != null
          ? MainAxisAlignment.spaceBetween
          : MainAxisAlignment.start,
      children: <Widget>[
        Text(
          title,
          style: TextStyle(
            color: Colors.black,
            fontSize: 40.0,
            letterSpacing: 2.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        if (icon != null)
          Stack(
            overflow: Overflow.visible,
            children: <Widget>[
              Icon(icon),
              Positioned(
                right: -7.0,
                top: -7.0,
                child: Container(
                  padding: EdgeInsets.all(4.0),
                  decoration: BoxDecoration(
                    color: profile_info_background,
                    shape: BoxShape.circle,
                  ),
                  child: Text(
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
