/**
 * Author: Damodar Lohani
 * profile: https://github.com/lohanidamodar
  */

import 'package:flutter/material.dart';
import 'dart:io';

import 'package:flutter_ui_challenges/core/presentation/res/assets.dart';
import 'package:flutter_ui_challenges/src/pages/food/recipe_single.dart';

class RecipeListPage extends StatelessWidget {
  static const String path = "lib/src/pages/food/recipe_list.dart";
  final Color color1 = const Color(0xffB5192F);
  final Color color2 = const Color(0xffE21F3D);
  final Color color3 = const Color(0xffFE1949);
  final Color color4 = const Color(0xffF0631C);
  final List<String> images = [
    breakfast,
    burger,
    cupcake,
    frenchFries,
    fries,
    meal,
    pancake,
  ];

  RecipeListPage({super.key});
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
              borderRadius: const BorderRadius.only(bottomRight: Radius.circular(30)),
              color: color2),
        ),
        Container(
          height: 100,
          width: 80,
          decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(bottomRight: Radius.circular(30)),
              color: color1),
        ),
        SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const SizedBox(height: 30.0),
              _buildHeader(context),
              const SizedBox(height: 40.0),
              Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: Text(
                  "My Favorites".toUpperCase(),
                  style: const TextStyle(color: Colors.white, fontSize: 16.0),
                ),
              ),
              const SizedBox(height: 20.0),
              SizedBox(
                height: 200,
                child: ListView.builder(
                  padding: const EdgeInsets.only(left: 16.0),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: _buildItem,
                ),
              ),
              const SizedBox(height: 40.0),
              SizedBox(
                height: 230,
                child: ListView.builder(
                  padding: const EdgeInsets.only(left: 16.0),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) =>
                      _buildItem(context, index, large: true),
                ),
              ),
              const SizedBox(height: 20.0),
              SizedBox(
                height: 230,
                child: ListView.builder(
                  padding: const EdgeInsets.only(left: 16.0),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) =>
                      _buildItem(context, index, large: true),
                ),
              ),
              const SizedBox(height: 40.0),
            ],
          ),
        ),
        const Positioned(
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
            context, MaterialPageRoute(builder: (_) => const RecipeSinglePage()));
      },
      child: Container(
        margin: const EdgeInsets.only(right: 20),
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
            const SizedBox(height: 10.0),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Text(
                "French\nToast".toUpperCase(),
                style: const TextStyle(color: Colors.white, fontSize: 14.0),
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
        const SizedBox(width: 40.0),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Text(
                "Your customised",
                style: TextStyle(color: Colors.white),
              ),
              Text(
                "Breakfast".toUpperCase(),
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
        OutlinedButton(
          style: OutlinedButton.styleFrom(
            backgroundColor: Colors.white,
            foregroundColor: Colors.white,
            side: const BorderSide(color: Colors.white),
          ),
          child: Text("Filter".toUpperCase()),
          onPressed: () {},
        ),
        const SizedBox(width: 16.0),
      ],
    );
  }
}
