/**
 * Author: Damodar Lohani
 * profile: https://github.com/lohanidamodar
  */

import 'package:flutter/material.dart';
import 'package:flutter_ui_challenges/core/presentation/res/assets.dart';
import 'package:flutter_ui_challenges/src/pages/grocery/gdetails.dart';
import 'package:flutter_ui_challenges/src/pages/grocery/gwidgets/gcategory.dart';
import 'package:flutter_ui_challenges/src/pages/grocery/gwidgets/glistitem1.dart';
import 'package:flutter_ui_challenges/src/pages/grocery/gwidgets/glistitem2.dart';

class GroceryHomeTabView extends StatelessWidget {
  const GroceryHomeTabView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        _buildCategories(),
        const SizedBox(
          height: 10.0,
        ),
        _buildListHeader("NEW ARRIVALS", "SEE ALL"),
        _buildNewArrivalsRow(context),
        const SizedBox(
          height: 10.0,
        ),
        _buildListHeader("DAILY NEEDS", "SEE ALL"),
        const SizedBox(
          height: 10.0,
        ),
        InkWell(
            onTap: () => _openDetailPage(context),
            child: const GroceryListItemTwo(
                title: "Cabbage", image: cabbage, subtitle: "1 kg")),
        InkWell(
            onTap: () => _openDetailPage(context),
            child: const GroceryListItemTwo(
                title: "Red/yellow Capsicum",
                image: capsicum,
                subtitle: "1 kg")),
        InkWell(
            onTap: () => _openDetailPage(context),
            child: const GroceryListItemTwo(
                title: "Pineapple", image: pineapple, subtitle: "4 in a pack")),
      ],
    );
  }

  Widget _buildNewArrivalsRow(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      height: 290.0,
      child: Row(
        children: <Widget>[
          Expanded(
            child: InkWell(
              onTap: () => _openDetailPage(context),
              child: const GroceryListItemOne(
                image: mango,
                subtitle: "1 kg",
                title: "Local Mango",
              ),
            ),
          ),
          Expanded(
            child: InkWell(
              onTap: () => _openDetailPage(context),
              child: const GroceryListItemOne(
                image: brocoli,
                subtitle: "6 in a pack",
                title: "Broccoli",
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _openDetailPage(BuildContext context) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (BuildContext context) => const GroceryDetailsPage()));
  }

  Widget _buildListHeader(String left, String right) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
    Container(
      margin: const EdgeInsets.only(left: 10),
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
      color: Colors.red,
      child: Text(
        left,
        style: const TextStyle(
          color: Colors.white,
        ),
      ),
    ),
    Container(
      margin: const EdgeInsets.only(right: 10.0),
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
      child: InkWell(
        onTap: () {},
        child: Text(
          right,
          style: const TextStyle(
            color: Colors.red,
          ),
        ),
      ),
    ),
      ],
    );
  }

  Widget _buildCategories() {
    return SizedBox(
      height: 100,
      child: Row(
        children: const <Widget>[
          SizedBox(
            width: 10.0,
          ),
          GroceryCategory(
            backgroundColor: Color.fromRGBO(11, 200, 0, 0.15),
            image: vegetables,
            title: "Vegetables",
          ),
          SizedBox(
            width: 10.0,
          ),
          GroceryCategory(
            backgroundColor: Color.fromRGBO(200, 0, 11, 0.15),
            title: "Fruite",
            image: fruit,
          ),
          SizedBox(
            width: 10.0,
          ),
          GroceryCategory(
            image: mortar,
            backgroundColor: Color.fromRGBO(20, 20, 15, 0.15),
            title: "Masala",
          )
        ],
      ),
    );
  }
}
