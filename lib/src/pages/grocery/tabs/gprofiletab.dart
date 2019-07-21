/**
 * Author: Damodar Lohani
 * profile: https://github.com/lohanidamodar
  */
  
import 'package:flutter/material.dart';
import 'package:flutter_ui_challenges/src/pages/grocery/gwidgets/gtypography.dart';

class GroceryProfileTabView extends StatelessWidget {
  @override
    Widget build(BuildContext context) {
      return Container(
        color: Colors.white,
        child: ListView(
          padding: EdgeInsets.all(10.0),
          children: <Widget>[
            ListTile(
              onTap: (){},
              leading: Icon(Icons.edit),
              title: GroceryTitle(text: "My Orders"),
            ),
            ListTile(
              onTap: (){},
              leading: Icon(Icons.favorite_border),
              title: GroceryTitle(text: "My Favorite"),
            ),
            ListTile(
              onTap: (){},
              leading: Icon(Icons.account_balance_wallet),
              title: GroceryTitle(text: "Payment Details"),
            ),
            ListTile(
              onTap: (){},
              leading: Icon(Icons.settings),
              title: GroceryTitle(text: "My Account"),
            ),
          ],
        ),
      );
    }
}