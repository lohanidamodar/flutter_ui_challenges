/**
 * Author: Damodar Lohani
 * profile: https://github.com/lohanidamodar
  */

import 'package:flutter/material.dart';
import 'package:flutter_ui_challenges/core/presentation/res/assets.dart';
import 'package:flutter_ui_challenges/src/pages/grocery/gwidgets/glistitem2.dart';
import 'package:flutter_ui_challenges/src/pages/grocery/gwidgets/gtypography.dart';
import 'package:flutter_ui_challenges/src/widgets/network_image.dart';

class GroceryDetailsPage extends StatelessWidget {
  static const String path = "lib/src/pages/grocery/gdetails.dart";

  const GroceryDetailsPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.green,
        title: const Text("Details"),
      ),
      body: _buildPageContent(context),
    );
  }

  Widget _buildPageContent(context) {
    return Column(
      children: <Widget>[
        Expanded(
          child: ListView(
            children: <Widget>[
              _buildItemCard(context),
              Container(
                  padding: const EdgeInsets.all(30.0),
                  child: const GrocerySubtitle(
                      text:
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras scelerisque nibh ut eros suscipit, vel cursus dolor imperdiet. Proin volutpat ligula eget purus maximus tristique. Pellentesque ullamcorper libero vitae metus feugiat fringilla. Ut luctus neque sed tortor placerat, faucibus mollis risus ullamcorper. Cras at nunc et odio ultrices tempor et.")),
              Container(
                  padding: const EdgeInsets.only(left: 20.0, bottom: 10.0),
                  child: const GroceryTitle(text: "Related Items")),
              const GroceryListItemTwo(
                  title: "Broccoli", image: brocoli, subtitle: "1 kg"),
              const GroceryListItemTwo(
                  title: "Cabbage", image: cabbage, subtitle: "1 kg"),
            ],
          ),
        ),
        Row(
          children: <Widget>[
            Expanded(
              child: Container(
                color: Colors.green,
                child: TextButton(
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.green,
                  ),
                  onPressed: () {},
                  child: const Text("Add to Cart"),
                ),
              ),
            )
          ],
        )
      ],
    );
  }

  Widget _buildItemCard(context) {
    return Stack(
      children: <Widget>[
        Card(
          margin: const EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
          child: Container(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.favorite_border),
                    )
                  ],
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: const PNetworkImage(
                    cabbage,
                    height: 200,
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                const GroceryTitle(text: "Local Cabbage"),
                const SizedBox(
                  height: 5.0,
                ),
                const GrocerySubtitle(text: "1 kg")
              ],
            ),
          ),
        ),
      ],
    );
  }
}
