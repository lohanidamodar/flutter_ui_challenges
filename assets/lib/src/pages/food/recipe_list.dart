/**
 * Author: Damodar Lohani
 * profile: https://github.com/lohanidamodar
  */

import 'package:flutter/material.dart';
import 'dart:io';
import 'package:cached_network_image/cached_network_image.dart';

import 'package:flutter_ui_challenges/core/presentation/res/assets.dart';
import 'package:flutter_ui_challenges/src/pages/food/recipe_single.dart';

class RecipeListPage extends StatelessWidget {
  static final String path = "lib/src/pages/food/recipe_list.dart";
  final Color color1 = Color(0xffB5192F);
  final Color color2 = Color(0xffE21F3D);
  final Color color3 = Color(0xffFE1949);
  final Color color4 = Color(0xffF0631C);
  final List<String> images = [
    breakfast,
    burger,
    cupcake,
    frenchFries,
    fries,
    meal,
    pancake,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [color3, color4],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter)),
        ),
        Container(
          height: 450,
          width: 300,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(bottomRight: Radius.circular(30)),
              color: color2),
        ),
        Container(
          height: 100,
          width: 80,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(bottomRight: Radius.circular(30)),
              color: color1),
        ),
        SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 30.0),
              _buildHeader(context),
              SizedBox(height: 40.0),
              Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: Text(
                  "My Favorites".toUpperCase(),
                  style: TextStyle(color: Colors.white, fontSize: 16.0),
                ),
              ),
              SizedBox(height: 20.0),
              Container(
                height: 200,
                child: ListView.builder(
                  padding: const EdgeInsets.only(left: 16.0),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: _buildItem,
                ),
              ),
              SizedBox(height: 40.0),
              Container(
                height: 230,
                child: ListView.builder(
                  padding: const EdgeInsets.only(left: 16.0),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) =>
                      _buildItem(context, index, large: true),
                ),
              ),
              SizedBox(height: 20.0),
              Container(
                height: 230,
                child: ListView.builder(
                  padding: const EdgeInsets.only(left: 16.0),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) =>
                      _buildItem(context, index, large: true),
                ),
              ),
              SizedBox(height: 40.0),
            ],
          ),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: TextField(
            decoration: InputDecoration(
                fillColor: Colors.black87,
                suffixIcon: Icon(
                  Icons.search,
                  color: Colors.white70,
                ),
                filled: true,
                hintText: "Search your recipe",
                hintStyle: TextStyle(color: Colors.white70)),
          ),
        )
      ],
    ));
  }

  Widget _buildItem(BuildContext context, index, {bool large = false}) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (_) => RecipeSinglePage()));
      },
      child: Container(
        margin: EdgeInsets.only(right: 20),
        width: large ? 150 : 120,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  image: DecorationImage(
                    image: NetworkImage(
                      images[index % images.length],
                    ),
                    fit: BoxFit.cover,
                  )),
              height: large ? 180 : 150,
            ),
            SizedBox(height: 10.0),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Text(
                "French\nToast".toUpperCase(),
                style: TextStyle(color: Colors.white, fontSize: 14.0),
              ),
            )
          ],
        ),
      ),
    );
  }

  Row _buildHeader(BuildContext context) {
    return Row(
      children: <Widget>[
        IconButton(
          color: Colors.white,
          iconSize: 40.0,
          icon: Icon(Platform.isIOS ? Icons.arrow_back_ios : Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        SizedBox(width: 40.0),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "Your customised",
                style: TextStyle(color: Colors.white),
              ),
              Text(
                "Breakfast".toUpperCase(),
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
        OutlineButton(
          color: Colors.white,
          textColor: Colors.white,
          borderSide: BorderSide(color: Colors.white),
          child: Text("Filter".toUpperCase()),
          onPressed: () {},
        ),
        SizedBox(width: 16.0),
      ],
    );
  }
}
