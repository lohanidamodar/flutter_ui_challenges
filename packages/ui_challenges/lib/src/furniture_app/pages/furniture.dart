import '../utils/constant.dart';
import '../widgets/furniture/bottom_item.dart';
import '../widgets/furniture/furniture_category.dart';
import '../widgets/furniture/item_navigation.dart';
import '../widgets/furniture/lamp.dart';
import '../widgets/title_large.dart';
import '../widgets/title_small.dart';
import 'package:flutter/material.dart';

class Furniture extends StatelessWidget {
  Furniture({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Padding(
              padding: EdgeInsets.only(
                left: 20.0,
                right: 20.0,
                top: 20.0,
              ),
              child: TitleLarge(
                title: 'Furniture',
                icon: Icons.add_shopping_cart,
              ),
            ),
            buildFurnitureCategories,
            const Padding(
              padding: EdgeInsets.only(
                left: 20.0,
                right: 20.0,
              ),
              child: TitleSmall(
                subTitle: 'Good quality item',
                title: 'Modern',
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            buildLampsWithSlider(),
            const Padding(
              padding:
                  EdgeInsets.only(left: 20.0, right: 20.0, top: 10.0),
              child: TitleSmall(
                subTitle: 'In recent month',
                title: 'Popular',
              ),
            ),
            const SizedBox(
              height: 15.0,
            ),
            const BottomItem(),
            const SizedBox(height: 10.0),
          ],
        ),
      ),
    );
  }

  Widget buildLampsWithSlider() {
    return SizedBox(
      //color: Colors.yellow,
      height: 350,
      child: Stack(
        children: <Widget>[
          buildLamps,
          const Positioned(
            bottom: 40.0,
            right: 50.0,
            child: ItemNavigation(),
          )
        ],
      ),
    );
  }

  final buildLamps = ListView.builder(
    scrollDirection: Axis.horizontal,
    physics: const BouncingScrollPhysics(),
    shrinkWrap: true,
    itemCount: lampList.length,
    itemBuilder: (context, int index) => Lamp(
      item: lampList[index],
      index: index,
    ),
  );
  final buildFurnitureCategories = SizedBox(
    height: 100.0,
    //color: Colors.red,
    child: ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: furnitureCategoriesList.length,
      itemBuilder: (context, int index) => FurnitureCategory(
        item: furnitureCategoriesList[index],
      ),
    ),
  );
}
