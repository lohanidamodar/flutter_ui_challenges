/**
 * Author: Damodar Lohani
 * profile: https://github.com/lohanidamodar
  */

import 'package:flutter/material.dart';
import 'package:flutter_ui_challenges/core/presentation/res/assets.dart';
import 'package:flutter_ui_challenges/src/pages/food/recipe_details.dart';
import 'package:flutter_ui_challenges/src/widgets/network_image.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RecipeSinglePage extends StatelessWidget {
  static const String path = "lib/src/pages/food/recipe_single.dart";
  final Color icon = const Color(0xffEF412D);
  final Color color1 = const Color(0xffCF3529);
  final Color color2 = const Color(0xffE1372F);
  final Color color3 = const Color(0xffFF6C1C);

  const RecipeSinglePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: double.infinity,
        child: Stack(
          children: <Widget>[
            Positioned(
                top: 350,
                left: 0,
                right: 0,
                bottom: 0,
                child: Container(
                  height: 200,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: [color2, color3],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter)),
                )),
            Positioned(
                top: 350,
                left: 0,
                right: 150,
                bottom: 80,
                child: Container(
                  height: 200,
                  decoration: BoxDecoration(
                      color: color1,
                      borderRadius: const BorderRadius.only(
                          bottomRight: Radius.circular(50.0))),
                )),
            Positioned(
              top: 350,
              left: 0,
              right: 0,
              child: Container(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    const SizedBox(height: 40.0),
                    Text(
                      "French\nToast".toUpperCase(),
                      style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 30.0),
                    ),
                    const SizedBox(height: 20.0),
                    const Text(
                      "In a small bowl, combine,\ncinnamon, nutmeg and sugar and \nset aside briefly.",
                      style: TextStyle(color: Colors.white70),
                    ),
                    const SizedBox(height: 50.0),
                    SizedBox(
                      height: 30.0,
                      width: double.infinity,
                      child: Row(
                        children: const <Widget>[
                          Icon(FontAwesomeIcons.fire, color: Colors.white),
                          SizedBox(width: 5.0),
                          Text(
                            "65%",
                            style:
                                TextStyle(color: Colors.white, fontSize: 18.0),
                          ),
                          Spacer(),
                          VerticalDivider(color: Colors.white),
                          Spacer(),
                          Text(
                            "Vegetarian",
                            style:
                                TextStyle(color: Colors.white, fontSize: 18.0),
                          ),
                          Spacer(),
                          VerticalDivider(color: Colors.white),
                          Spacer(),
                          Icon(FontAwesomeIcons.stopwatch, color: Colors.white),
                          SizedBox(width: 5.0),
                          Text(
                            "10 min",
                            style:
                                TextStyle(color: Colors.white, fontSize: 18.0),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
              height: 380,
              alignment: Alignment.topCenter,
              decoration: const BoxDecoration(boxShadow: [
                BoxShadow(color: Colors.black38, blurRadius: 30.0)
              ]),
              child: const SizedBox(
                height: 350,
                child: PNetworkImage(
                  meal,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              top: 325,
              left: 20,
              child: CircleAvatar(
                backgroundColor: Colors.white,
                radius: 25,
                child: IconButton(
                    color: icon,
                    onPressed: () {},
                    icon: const Icon(
                      Icons.play_arrow,
                    )),
              ),
            ),
            Positioned(
              top: 325,
              right: 20,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0)),
                ),
                child: Text("Read More".toUpperCase()),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => const RecipeDetailsPage()));
                },
              ),
            ),
            SizedBox(
                height: 70.0,
                child: AppBar(
                  backgroundColor: Colors.transparent,
                  elevation: 0,
                )),
          ],
        ),
      ),
    );
  }
}
