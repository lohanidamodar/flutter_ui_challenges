import '../../utils/constant.dart';
import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  final Catg? catg;
  const Category({super.key, this.catg});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Stack(
          clipBehavior: Clip.none,
          children: <Widget>[
            GestureDetector(
              onTap: () {
                if (catg!.name == listProfileCategories[0].name) {
                  Navigator.pushNamed(context, '/furniture');
                }
              },
              child: Container(
                padding: const EdgeInsets.all(10.0),
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: profileInfoCategoriesBackground,
                ),
                child: Icon(
                  catg!.icon,
                  // size: 20.0,
                ),
              ),
            ),
            catg!.number! > 0
                ? Positioned(
                    right: -5.0,
                    child: Container(
                      padding: const EdgeInsets.all(5.0),
                      decoration: const BoxDecoration(
                        color: profileInfoBackground,
                        shape: BoxShape.circle,
                      ),
                      child: Text(
                        catg!.number.toString(),
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 10.0,
                        ),
                      ),
                    ),
                  )
                : const SizedBox(),
          ],
        ),
        const SizedBox(
          height: 10.0,
        ),
        Text(
          catg!.name!,
          style: const TextStyle(
            fontSize: 13.0,
          ),
        )
      ],
    );
  }
}
