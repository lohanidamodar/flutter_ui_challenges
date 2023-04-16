/**
 * Author: Damodar Lohani
 * profile: https://github.com/lohanidamodar
 * UI Credit: Shyam Adhikari (http://uilearner.com)
 * 
  */

import 'package:flutter/material.dart';
import 'package:flutter_swiper_null_safety/flutter_swiper_null_safety.dart';
import 'package:flutter_ui_challenges/core/presentation/res/assets.dart';
import 'package:flutter_ui_challenges/core/presentation/res/text_styles.dart';
import 'package:flutter_ui_challenges/core/presentation/widgets/rounded_bordered_container.dart';
import 'package:flutter_ui_challenges/src/widgets/network_image.dart';

class NewsHomeOnePage extends StatelessWidget {
  static const String path = "lib/src/pages/blog/news1.dart";

  const NewsHomeOnePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: <Widget>[
          _buildFeaturedNews(),
          const SizedBox(height: 10.0),
          _buildHeading("Popular posts"),
          _buildListItem(Colors.green.shade200),
          _buildListItem(Colors.red.shade200),
          _buildListItem(Colors.blue.shade200),
          _buildListItem(Colors.red.shade200),
          _buildHeading("Browse by category"),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4.0),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                    height: 100,
                    width: 100,
                    margin: const EdgeInsets.symmetric(horizontal: 4.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.green.shade200,
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 100,
                    width: 100,
                    margin: const EdgeInsets.symmetric(horizontal: 4.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.green.shade200,
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 100,
                    width: 100,
                    margin: const EdgeInsets.symmetric(horizontal: 4.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.green.shade200,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                    height: 100,
                    width: 100,
                    margin: const EdgeInsets.symmetric(horizontal: 4.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.green.shade200,
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 100,
                    width: 100,
                    margin: const EdgeInsets.symmetric(horizontal: 4.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.green.shade200,
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 100,
                    width: 100,
                    margin: const EdgeInsets.symmetric(horizontal: 4.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.green.shade200,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildListItem(Color color) {
    return InkWell(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
        child: Row(
          children: <Widget>[
            Container(
              height: 100,
              width: 100,
              margin: const EdgeInsets.only(right: 10.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: color,
              ),
            ),
            Expanded(
              child: Column(
                children: const <Widget>[
                  Text(
                    "Lorem ipsum dolor sit amet, consecteutur adsd Ut adipisicing dolore incididunt minim",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10.0),
                  Text(
                      "Mollit aliquip fugiat veniam reprehenderit irure commodo eu aute ex commodo."),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Padding _buildHeading(String title) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Text(
              title,
              style: shadedTitle,
            ),
          ),
          MaterialButton(
            elevation: 0,
            textColor: Colors.white,
            color: Colors.teal.shade300,
            height: 0,
            minWidth: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5.0),
            ),
            padding: const EdgeInsets.all(2.0),
            onPressed: () {},
            child: const Icon(Icons.keyboard_arrow_right),
          ),
        ],
      ),
    );
  }

  RoundedContainer _buildFeaturedNews() {
    return RoundedContainer(
      height: 270,
      borderRadius: BorderRadius.circular(0),
      color: Colors.blue,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const Text(
            "Featured News",
            style: TextStyle(
                fontSize: 28.0,
                color: Colors.white,
                fontWeight: FontWeight.bold),
          ),
          Expanded(
            child: Swiper(
              pagination: const SwiperPagination(margin: EdgeInsets.only()),
              viewportFraction: 0.9,
              itemCount: 4,
              loop: false,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: RoundedContainer(
                    borderRadius: BorderRadius.circular(4.0),
                    margin: const EdgeInsets.only(bottom: 20),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          flex: 3,
                          child: Text(
                            "A complete set of design elements, and their intitutive design.",
                            style: Theme.of(context).textTheme.titleLarge,
                          ),
                        ),
                        const SizedBox(width: 10.0),
                        Expanded(
                          flex: 2,
                          child: Container(
                            color: Colors.red,
                            child: PNetworkImage(
                              images[1],
                              fit: BoxFit.cover,
                              height: 210,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
