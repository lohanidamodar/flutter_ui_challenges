/**
 * Author: Damodar Lohani
 * profile: https://github.com/lohanidamodar
  */
  
import 'package:flutter/material.dart';
import 'package:flutter_ui_challenges/src/pages/grocery/gwidgets/gtypography.dart';

class GroceryListItemTwo extends StatelessWidget {
  const GroceryListItemTwo({
    Key key,
    @required this.title,
    @required this.subtitle,
    @required this.image,
  }) : super(key: key);

  final String title;
  final String subtitle;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Card(
        child: ListTile(
          leading: Container(
            height: 80.0,
            child: Image.asset(image, height: 80.0,)),
          title: Container(
            height: 100.0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                new GroceryTitle(text: title),
                new GrocerySubtitle(text: subtitle)
              ],
            ),
          ),
          trailing: Column(
            children: <Widget>[
              IconButton(icon: Icon(Icons.favorite_border), onPressed: (){},),
              IconButton(icon: Icon(Icons.add,), color: Colors.green, onPressed: (){},)
            ],
          ),
        ),
      );
  }
}