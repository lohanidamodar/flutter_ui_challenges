/**
 * Author: Damodar Lohani
 * profile: https://github.com/lohanidamodar
  */

import 'package:flutter/material.dart';
import 'package:flutter_ui_challenges/src/pages/grocery/gwidgets/gtypography.dart';

class GroceryProfileTabView extends StatelessWidget {
  const GroceryProfileTabView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: ListView(
        padding: const EdgeInsets.all(10.0),
        children: <Widget>[
          ListTile(
            onTap: () {},
            leading: const Icon(Icons.edit),
            title: const GroceryTitle(text: "My Orders"),
          ),
          ListTile(
            onTap: () {},
            leading: const Icon(Icons.favorite_border),
            title: const GroceryTitle(text: "My Favorite"),
          ),
          ListTile(
            onTap: () {},
            leading: const Icon(Icons.account_balance_wallet),
            title: const GroceryTitle(text: "Payment Details"),
          ),
          ListTile(
            onTap: () {},
            leading: const Icon(Icons.settings),
            title: const GroceryTitle(text: "My Account"),
          ),
        ],
      ),
    );
  }
}
