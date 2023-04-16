import '../../utils/constant.dart';
import 'package:flutter/material.dart';

class ItemNavigation extends StatelessWidget {
  const ItemNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Container(
          height: 6.0,
          width: 6.0,
          decoration: const BoxDecoration(
            color: furnitureCateDisableColor,
            shape: BoxShape.circle,
          ),
        ),
        const SizedBox(
          width: 5.0,
        ),
        Container(
          height: 5.0,
          width: 20.0,
          decoration: BoxDecoration(
              color: Colors.blue[700],
              borderRadius: BorderRadius.circular(10.0)),
        ),
        const SizedBox(
          width: 5.0,
        ),
        Container(
          height: 6.0,
          width: 6.0,
          decoration: const BoxDecoration(
            color: furnitureCateDisableColor,
            shape: BoxShape.circle,
          ),
        ),
        const SizedBox(
          width: 5.0,
        ),
        Container(
          height: 6.0,
          width: 6.0,
          decoration: const BoxDecoration(
            color: furnitureCateDisableColor,
            shape: BoxShape.circle,
          ),
        ),
      ],
    );
  }
}
