/**
 * Author: Mausam Rayamajhi
 * profile: https://github.com/mausamRayamajhi
  */

import 'package:flutter/material.dart';
import '../../util/constant.dart';
import '../../widget/dashboard/category.dart';

import '../heading.dart';

class Categories extends StatelessWidget {
  const Categories({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        const SizedBox(
          height: 10.0,
        ),
        const Heading(
          title: 'would you like to?',
        ),
        const SizedBox(
          height: 25.0,
        ),
        Flexible(
          fit: FlexFit.loose,
          child: GridView.count(
            crossAxisCount: 3,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            // primary: true,
            children: categories
                .map((item) => Category(
                      title: item['title'],
                      image: item['image'],
                    ))
                .toList(),
          ),
        ),
      ],
    );
  }
}
