import 'dart:math';

import '../../utils/constant.dart';
import 'package:flutter/material.dart';

class FurnitureCategory extends StatelessWidget {
  final FurnitureCatg item;
  const FurnitureCategory({super.key, required this.item});
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 25.0),
        child: Transform.rotate(
          angle: pi / 4,
          child: Container(
            padding: const EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              boxShadow: [
                if (item.elivation!)
                  const BoxShadow(
                    color: Color(0xFFD1DCFF),
                    blurRadius: 5.0, // has the effect of softening the shadow
                    spreadRadius:
                        -1.0, // has the effect of extending the shadow
                    offset: Offset(10.0, 10.0),
                  )
              ],
              color: item.elivation!
                  ? profileInfoBackground
                  : profileInfoCategoriesBackground,
              borderRadius: const BorderRadius.all(Radius.circular(10.0)),
            ),
            child: Transform.rotate(
              angle: -pi / 4,
              child: Icon(
                item.icon,
                size: 30.0,
                color:
                    item.elivation! ? Colors.white : furnitureCateDisableColor,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
