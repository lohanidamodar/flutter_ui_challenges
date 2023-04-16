/**
 * Author: Damodar Lohani
 * profile: https://github.com/lohanidamodar
  */

import 'package:flutter/material.dart';
import 'package:flutter_ui_challenges/core/presentation/res/assets.dart';
import 'package:flutter_ui_challenges/src/pages/grocery/gwidgets/glistitem3.dart';

class GroceryWishlistTabView extends StatelessWidget {
  const GroceryWishlistTabView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          child: ListView(
            padding: const EdgeInsets.all(10.0),
            children: const <Widget>[
              GroceryListItemThree(
                image: pineapple,
                subtitle: "4 in a pack",
                title: "Pineapple",
              ),
              GroceryListItemThree(
                image: cabbage,
                subtitle: "1 kg",
                title: "cabbage",
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 10.0,
        ),
        _buildTotals()
      ],
    );
  }

  Widget _buildTotals() {
    return Container(
        padding: const EdgeInsets.only(left: 20.0, right: 20.0),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.green,
          ),
          onPressed: () {},
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const <Widget>[
              Text("Add to Wishlist", style: TextStyle(color: Colors.white)),
            ],
          ),
        ));
  }
}
