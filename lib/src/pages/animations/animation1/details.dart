import 'dart:io';

/**
 * Author: Damodar Lohani
 * profile: https://github.com/lohanidamodar
  */

import 'package:flutter/material.dart';
import './animation1.dart';
import 'package:flutter_ui_challenges/src/widgets/network_image.dart';

class AnimationOneDetails extends StatelessWidget {
  static const String path = "lib/src/pages/animations/animation1/details.dart";
  final int index;

  const AnimationOneDetails({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Hero(
              tag: "image$index",
              child: PNetworkImage(images[index], fit: BoxFit.cover)),
          Container(
            padding: const EdgeInsets.all(16.0),
            width: double.infinity,
            height: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const SizedBox(height: 20.0),
                IconButton(
                  color: Colors.white,
                  icon: Icon(
                      Platform.isIOS ? Icons.arrow_back_ios : Icons.arrow_back),
                  onPressed: () => Navigator.pop(context),
                ),
                const Spacer(),
                const SizedBox(height: 10.0),
                Hero(
                  tag: "title$index",
                  child: Material(
                    type: MaterialType.transparency,
                    child: Text(
                      dummy[index]["title"],
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                const SizedBox(height: 20.0),
                Hero(
                  tag: "price$index",
                  child: Material(
                    type: MaterialType.transparency,
                    child: Text(
                      dummy[index]['price'],
                      textAlign: TextAlign.start,
                      style: const TextStyle(
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                ),
                const SizedBox(height: 20.0),
              ],
            ),
          )
        ],
      ),
    );
  }
}
