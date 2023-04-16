/**
 * Author: Damodar Lohani
 * profile: https://github.com/lohanidamodar
  */

import 'package:flutter/material.dart';
import 'package:flutter_ui_challenges/core/presentation/res/assets.dart';
import 'package:flutter_ui_challenges/src/pages/travel/tdestination.dart';
import 'package:flutter_ui_challenges/src/widgets/network_image.dart';

class TravelHomePage extends StatelessWidget {
  static const String path = "lib/src/pages/travel/thome.dart";

  const TravelHomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      const Text("Hello Raj Kumar,",
                          style: TextStyle(
                              fontSize: 18.0, fontWeight: FontWeight.bold)),
                      Text(
                        "Where do you want to go?",
                        style: TextStyle(color: Colors.grey.shade700),
                      )
                    ],
                  ),
                  CircleAvatar(
                    backgroundImage: NetworkImage(avatars[3]),
                    radius: 40,
                  )
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 16.0, right: 16.0, bottom: 8.0),
              child: const Material(
                elevation: 5.0,
                child: TextField(
                  decoration: InputDecoration(
                      hintText: "Find destination",
                      prefixIcon: Icon(Icons.location_on),
                      border: InputBorder.none),
                ),
              ),
            ),
            GestureDetector(
                onTap: () => _openDestinationPage(context),
                child: _buildFeaturedItem(
                    image: kathmandu1,
                    title: "Kathmandu",
                    subtitle: "90 places worth to visit")),
            GestureDetector(
                onTap: () => _openDestinationPage(context),
                child: _buildFeaturedItem(
                    image: fewalake,
                    title: "Pokhara",
                    subtitle: "40 places worth to visit")),
            _buildItem(title: "Jomsom"),
            _buildItem(title: "Palpa"),
            _buildItem(title: "Namche"),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        fixedColor: Colors.red,
        currentIndex: 0,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.location_searching), label: "Discover"),
          BottomNavigationBarItem(
              icon: Icon(Icons.location_on), label: "Popular"),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: "Settings"),
        ],
      ),
    );
  }

  Widget _buildItem({required String title}) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Material(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
        elevation: 5.0,
        child: Container(
          padding: const EdgeInsets.all(16.0),
          child: Text(title,
              style: const TextStyle(
                fontSize: 20.0,
              )),
        ),
      ),
    );
  }

  Container _buildFeaturedItem(
      {String? image, required String title, required String subtitle}) {
    return Container(
      padding: const EdgeInsets.only(left: 16.0, top: 8.0, right: 16.0, bottom: 16.0),
      child: Material(
        elevation: 5.0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
        child: Stack(
          children: <Widget>[
            ClipRRect(
                borderRadius: BorderRadius.circular(5.0),
                child: PNetworkImage(
                  image!,
                  fit: BoxFit.cover,
                )),
            Positioned(
              right: 10.0,
              top: 10.0,
              child: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.favorite_border, color: Colors.white),
              ),
            ),
            Positioned(
              bottom: 20.0,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                color: Colors.black.withOpacity(0.7),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Text(title,
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold)),
                    Text(subtitle, style: const TextStyle(color: Colors.white))
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  _openDestinationPage(BuildContext context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (_) => const DestinationPage()));
  }
}
