/**
 * Author: Sudip Thapa  
 * profile: https://github.com/sudeepthapa
  */

import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_ui_challenges/core/presentation/res/assets.dart';
import 'package:flutter_ui_challenges/src/widgets/network_image.dart';

class ProfileSevenPage extends StatelessWidget {
  static const String path = "lib/src/pages/profile/profile7.dart";

  const ProfileSevenPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          child: Icon(Platform.isIOS ? Icons.arrow_back_ios : Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: const Color.fromRGBO(255, 255, 255, .9),
        body: SafeArea(
          child: ListView(
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Container(
                    width: double.infinity,
                    height: 330,
                    color: Colors.deepOrange,
                  ),
                  const Positioned(
                    top: 10,
                    right: 30,
                    child: Icon(
                      Icons.settings,
                      color: Colors.white,
                    ),
                  ),
                  Column(
                    children: <Widget>[
                      Container(
                          height: 90,
                          margin: const EdgeInsets.only(top: 60),
                          child: const CircleAvatar(
                            radius: 50,
                            backgroundColor: Colors.white,
                            child: PNetworkImage(rocket),
                          )),
                      const Padding(
                        padding: EdgeInsets.all(4),
                      ),
                      const Text(
                        "Sudip Thapa",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 20),
                        textAlign: TextAlign.center,
                      ),
                      const Padding(
                        padding: EdgeInsets.all(4),
                      ),
                      const Text(
                        "Kathmandu",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontSize: 16),
                        textAlign: TextAlign.center,
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 77),
                        padding: const EdgeInsets.all(10),
                        child: Card(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              Column(
                                children: <Widget>[
                                  Container(
                                      padding:
                                          const EdgeInsets.only(top: 15, bottom: 5),
                                      child: const Text("Photos",
                                          style: TextStyle(
                                              color: Colors.black54))),
                                  Container(
                                      padding: const EdgeInsets.only(bottom: 15),
                                      child: const Text("5,000",
                                          style: TextStyle(
                                              color: Colors.black87,
                                              fontSize: 16))),
                                ],
                              ),
                              Column(
                                children: <Widget>[
                                  Container(
                                      padding:
                                          const EdgeInsets.only(top: 15, bottom: 5),
                                      child: const Text("Followers",
                                          style: TextStyle(
                                              color: Colors.black54))),
                                  Container(
                                      padding: const EdgeInsets.only(bottom: 15),
                                      child: const Text("5,000",
                                          style: TextStyle(
                                              color: Colors.black87,
                                              fontSize: 16))),
                                ],
                              ),
                              Column(
                                children: <Widget>[
                                  Container(
                                      padding:
                                          const EdgeInsets.only(top: 10, bottom: 5),
                                      child: const Text("Followings",
                                          style: TextStyle(
                                              color: Colors.black54))),
                                  Container(
                                      padding: const EdgeInsets.only(bottom: 10),
                                      child: const Text("5,000",
                                          style: TextStyle(
                                              color: Colors.black87,
                                              fontSize: 16))),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      const UserInfo()
                    ],
                  )
                ],
              ),
            ],
          ),
        ));
  }
}

class UserInfo extends StatelessWidget {
  const UserInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: <Widget>[
          Card(
            child: Container(
              alignment: Alignment.topLeft,
              padding: const EdgeInsets.all(15),
              child: Column(
                children: <Widget>[
                  Container(
                    alignment: Alignment.topLeft,
                    child: const Text(
                      "User Information",
                      style: TextStyle(
                        color: Colors.black87,
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  const Divider(
                    color: Colors.black38,
                  ),
                  Column(
                    children: const <Widget>[
                  ListTile(
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                    leading: Icon(Icons.my_location),
                    title: Text("Location"),
                    subtitle: Text("Kathmandu"),
                  ),
                  ListTile(
                    leading: Icon(Icons.email),
                    title: Text("Email"),
                    subtitle: Text("sudeptech@gmail.com"),
                  ),
                  ListTile(
                    leading: Icon(Icons.phone),
                    title: Text("Phone"),
                    subtitle: Text("99--99876-56"),
                  ),
                  ListTile(
                    leading: Icon(Icons.person),
                    title: Text("About Me"),
                    subtitle: Text(
                        "This is a about me link and you can khow about me in this section."),
                  ),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
