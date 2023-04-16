/**
 * Author: Damodar Lohani
 * profile: https://github.com/lohanidamodar
  */

import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:flutter_ui_challenges/core/presentation/res/assets.dart';
import 'package:flutter_ui_challenges/src/pages/grocery/gwidgets/glistitem3.dart';

class GroceryCartTabView extends StatelessWidget {
  const GroceryCartTabView({super.key});

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
    return ClipPath(
      clipper: OvalTopBorderClipper(),
      child: Container(
        height: 180,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                blurRadius: 5.0,
                color: Colors.grey.shade700,
                spreadRadius: 80.0),
          ],
          color: Colors.white,
        ),
        padding:
            const EdgeInsets.only(left: 20.0, right: 20.0, top: 40.0, bottom: 10.0),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const <Widget>[
                Text("Subtotal"),
                Text("Rs. 1500"),
              ],
            ),
            const SizedBox(
              height: 10.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const <Widget>[
                Text("Delivery fee"),
                Text("Rs. 100"),
              ],
            ),
            const SizedBox(
              height: 10.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const <Widget>[
                Text("Total"),
                Text("Rs. 1600"),
              ],
            ),
            const SizedBox(
              height: 10.0,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
              ),
              onPressed: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const <Widget>[
                  Text("Continue to Checkout",
                      style: TextStyle(color: Colors.white)),
                  Text("Rs. 1600", style: TextStyle(color: Colors.white)),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
