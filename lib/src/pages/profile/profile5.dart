/**
 * Author: Damodar Lohani
 * profile: https://github.com/lohanidamodar
  */

import 'package:flutter/material.dart';
import 'package:flutter_ui_challenges/core/presentation/res/assets.dart';
import 'package:flutter_ui_challenges/src/widgets/network_image.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProfileFivePage extends StatelessWidget {
  static const String path = "lib/src/pages/profile/profile5.dart";

  const ProfileFivePage({super.key});
  @override
  Widget build(BuildContext context) {
    const Color color1 = Color(0xffFC5CF0);
    const Color color2 = Color(0xffFE8852);
    final String image = avatars[0];
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            height: 360,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(50.0),
                    bottomRight: Radius.circular(50.0)),
                gradient: LinearGradient(
                    colors: [color1, color2],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight)),
          ),
          Container(
            margin: const EdgeInsets.only(top: 80),
            child: Column(
              children: <Widget>[
                const Text(
                  "Date mate",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 28,
                      fontStyle: FontStyle.italic),
                ),
                const SizedBox(height: 20.0),
                Expanded(
                  child: Stack(
                    children: <Widget>[
                      Container(
                        height: double.infinity,
                        margin: const EdgeInsets.only(
                            left: 30.0, right: 30.0, top: 10.0),
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(30.0),
                            child: PNetworkImage(
                              image,
                              fit: BoxFit.cover,
                            )),
                      ),
                      Container(
                        alignment: Alignment.topCenter,
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10.0, vertical: 5.0),
                          decoration: BoxDecoration(
                              color: Colors.yellow,
                              borderRadius: BorderRadius.circular(20.0)),
                          child: const Text("3.7mi away"),
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 10.0),
                const Text(
                  "Sasha - 22",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    const Icon(
                      Icons.location_on,
                      size: 16.0,
                      color: Colors.grey,
                    ),
                    Text(
                      "San Diego, California, USA",
                      style: TextStyle(color: Colors.grey.shade600),
                    )
                  ],
                ),
                const SizedBox(height: 5.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    IconButton(
                      color: Colors.grey,
                      icon: const Icon(FontAwesomeIcons.instagram),
                      onPressed: () {},
                    ),
                    IconButton(
                      color: Colors.grey,
                      icon: const Icon(FontAwesomeIcons.facebookF),
                      onPressed: () {},
                    ),
                    IconButton(
                      color: Colors.grey.shade600,
                      icon: const Icon(FontAwesomeIcons.twitter),
                      onPressed: () {},
                    ),
                  ],
                ),
                const SizedBox(height: 10.0),
                Stack(
                  children: <Widget>[
                    Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 5.0, horizontal: 16.0),
                      margin: const EdgeInsets.only(
                          top: 30, left: 20.0, right: 20.0, bottom: 20.0),
                      decoration: BoxDecoration(
                          gradient: const LinearGradient(
                            colors: [color1, color2],
                          ),
                          borderRadius: BorderRadius.circular(30.0)),
                      child: Row(
                        children: <Widget>[
                          IconButton(
                            color: Colors.white,
                            icon: const Icon(FontAwesomeIcons.user),
                            onPressed: () {},
                          ),
                          IconButton(
                            color: Colors.white,
                            icon: const Icon(Icons.location_on),
                            onPressed: () {},
                          ),
                          const Spacer(),
                          IconButton(
                            color: Colors.white,
                            icon: const Icon(Icons.add),
                            onPressed: () {},
                          ),
                          IconButton(
                            color: Colors.white,
                            icon: const Icon(Icons.message),
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ),
                    Center(
                      child: FloatingActionButton(
                        backgroundColor: Colors.white,
                        onPressed: () {},
                        child: const Icon(
                          Icons.favorite,
                          color: Colors.pink,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            actions: <Widget>[
              IconButton(
                icon: const Icon(Icons.notifications),
                onPressed: () {},
              ),
              IconButton(
                icon: const Icon(Icons.menu),
                onPressed: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}
