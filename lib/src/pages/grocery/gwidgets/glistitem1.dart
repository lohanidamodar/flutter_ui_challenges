/**
 * Author: Damodar Lohani
 * profile: https://github.com/lohanidamodar
  */
  
import 'package:flutter/material.dart';
import 'package:flutter_ui_challenges/src/pages/grocery/gwidgets/gtypography.dart';
import 'package:flutter_ui_challenges/src/widgets/network_image.dart';

class GroceryListItemOne extends StatelessWidget {
  final String? image, title, price, subtitle;
  const GroceryListItemOne({
    Key? key,
    required this.image,
    required this.title,
    required this.subtitle,
    this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(topLeft: Radius.circular(5.0), topRight: Radius.circular(5.0)),
        boxShadow: [
          BoxShadow(blurRadius: 10.0,color: Colors.grey.shade200,spreadRadius: 2.0)
        ]
      ),
      margin: EdgeInsets.all(10.0),
      child: Column(
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Center(child: PNetworkImage(image, height: 150.0,)),
                  new GroceryTitle(text: title),
                  new GrocerySubtitle(text: subtitle),
                ],
              ),
            ),
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: InkWell(
                  onTap: (){},
                  child: Container(
                    padding: EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                      color: Colors.yellow,
                      borderRadius: BorderRadius.only(bottomLeft: Radius.circular(5.0), bottomRight: Radius.circular(5.0))
                    ),
                    child: Text("Add to Cart", textAlign: TextAlign.center,),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}