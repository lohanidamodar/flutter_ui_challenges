/**
 * Author: Damodar Lohani
 * profile: https://github.com/lohanidamodar
  */
  
import 'package:flutter/material.dart';
import 'package:flutter_ui_challenges/src/widgets/network_image.dart';

class GroceryCategory extends StatelessWidget {
  final String image, title;
  final Color? backgroundColor;

  const GroceryCategory({
    Key? key,
    required String this.image,
    required String this.title,
    Color? this.backgroundColor
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){},
      child: Container(
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.all(Radius.circular(5.0))
        ),
        margin: EdgeInsets.symmetric(vertical: 10.0),
        padding: EdgeInsets.all(10.0),
        width: 100,
        child: Column(
          children: <Widget>[
            PNetworkImage(image),
            Text(title)
          ],
        ),
      ),
    );
  }
}