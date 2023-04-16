/**
 * Author: Damodar Lohani
 * profile: https://github.com/lohanidamodar
  */

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_ui_challenges/src/widgets/springy_slider/springy_slider.dart';

class SpringySliderPage extends StatelessWidget {
  static const String path = "lib/src/pages/misc/springy_slider_page.dart";

  const SpringySliderPage({super.key});
  _buildTextButton(String title, bool isOnLight) {
    return TextButton(
      style: TextButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
      ),
      onPressed: () {},
      child: Text(title.toUpperCase(),
          style: TextStyle(
              fontSize: 12.0,
              fontWeight: FontWeight.bold,
              color: isOnLight ? Colors.pink : Colors.white)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.all(Radius.circular(20.0)),
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          systemOverlayStyle: SystemUiOverlayStyle.light,
          backgroundColor: Colors.white,
          elevation: 0,
          titleTextStyle: const TextStyle(
              color: Colors.pink, fontWeight: FontWeight.bold, fontSize: 18.0),
          iconTheme: const IconThemeData(color: Colors.pink),
          leading: IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {},
          ),
          actions: <Widget>[_buildTextButton("Settings", true)],
        ),
        body: Column(
          children: <Widget>[
            const Expanded(
              child: Center(
                child: SpringySlider(
                    markCount: 12,
                    positiveColor: Colors.pink,
                    negativeColor: Colors.white),
              ),
            ),
            Container(
              color: Colors.pink,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  _buildTextButton("More", false),
                  _buildTextButton("Stats", false)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
