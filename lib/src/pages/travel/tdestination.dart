import 'dart:io';

/**
 * Author: Damodar Lohani
 * profile: https://github.com/lohanidamodar
  */

import 'package:flutter/material.dart';
import 'package:flutter_ui_challenges/core/presentation/res/assets.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_ui_challenges/src/widgets/network_image.dart';

class DestinationPage extends StatelessWidget {
  static final String path = "lib/src/pages/travel/tdestination.dart";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            height: 300,
            decoration: BoxDecoration(
                // color: Colors.blue,
                image: DecorationImage(
                    image: NetworkImage(kathmandu1), fit: BoxFit.cover)),
          ),
          ListView(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(top: 200, left: 40),
                child: Card(
                  elevation: 5.0,
                  child: Container(
                    child: Column(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            IconButton(
                              icon: Icon(Platform.isIOS
                                  ? Icons.arrow_back_ios
                                  : Icons.arrow_back),
                              onPressed: () {
                                Navigator.pop(context);
                              },
                            ),
                            Text("Kathmandu",
                                style: TextStyle(
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold)),
                            IconButton(
                              icon: Icon(Icons.star_border),
                              onPressed: () {},
                            )
                          ],
                        ),
                        Container(
                            padding: EdgeInsets.fromLTRB(20.0, 0, 20.0, 16.0),
                            child: Text(
                              "Kathmandu, worlds spiritual capital mixes the traditional cultures of Nepal as well as the modern technology.",
                              textAlign: TextAlign.justify,
                            ))
                      ],
                    ),
                  ),
                ),
              ),
              Row(
                children: <Widget>[
                  Expanded(child: Text("Places to visit")),
                  FlatButton(
                      textColor: Colors.red,
                      onPressed: () {},
                      child: Text("See All")),
                ],
              ),
              Container(
                height: 150.0,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    _buildPlaceToVisit(
                        image: pashupatinath, title: "Pashupatinath"),
                    SizedBox(
                      width: 20.0,
                    ),
                    _buildPlaceToVisit(
                        image: kathmandu2, title: "Swoyambhunath"),
                    SizedBox(
                      width: 20.0,
                    ),
                    _buildPlaceToVisit(
                        image: kathmandu1, title: "Durbar Square"),
                    SizedBox(
                      width: 20.0,
                    ),
                    _buildPlaceToVisit(
                        image: pashupatinath, title: "Pashupatinath"),
                    SizedBox(
                      width: 20.0,
                    ),
                    _buildPlaceToVisit(
                        image: kathmandu2, title: "Swoyambhunath"),
                  ],
                ),
              ),
              Container(
                height: 250,
                child: Row(
                  children: <Widget>[
                    Expanded(
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(5.0),
                            child: PNetworkImage(kathmandu2,
                                height: 180, fit: BoxFit.cover))),
                    SizedBox(
                      width: 20.0,
                    ),
                    Expanded(
                      child: GridView(
                        shrinkWrap: true,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 10.0,
                            mainAxisSpacing: 10.0),
                        children: <Widget>[
                          ClipRRect(
                              borderRadius: BorderRadius.circular(5.0),
                              child:
                                  PNetworkImage(kathmandu1, fit: BoxFit.cover)),
                          ClipRRect(
                              borderRadius: BorderRadius.circular(5.0),
                              child: PNetworkImage(pashupatinath,
                                  fit: BoxFit.cover)),
                          ClipRRect(
                              borderRadius: BorderRadius.circular(5.0),
                              child: PNetworkImage(pashupatinath,
                                  fit: BoxFit.cover)),
                          ClipRRect(
                              borderRadius: BorderRadius.circular(5.0),
                              child:
                                  PNetworkImage(kathmandu1, fit: BoxFit.cover)),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildPlaceToVisit({String? image, required String title}) {
    return Column(
      children: <Widget>[
        ClipRRect(
          borderRadius: BorderRadius.circular(5.0),
          child: PNetworkImage(
            image,
            height: 80,
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(
          height: 5.0,
        ),
        Text(title)
      ],
    );
  }
}
