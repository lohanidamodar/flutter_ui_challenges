/**
 * Author: Damodar Lohani
 * profile: https://github.com/lohanidamodar
  */

import 'package:flutter/material.dart';
import 'package:flutter_swiper_null_safety/flutter_swiper_null_safety.dart';
import 'package:flutter_ui_challenges/core/presentation/res/assets.dart';
import 'package:flutter_ui_challenges/src/widgets/network_image.dart';

class SlidersPage extends StatelessWidget {
  static const String path = "lib/src/pages/misc/sliders.dart";
  final List<String> images = [
    avatars[0],
    breakfast,
    fishtail,
    avatars[2],
    pancake,
    fewalake,
    avatars[3],
    fries,
    kathmandu1,
    avatars[1],
    burger,
    pashupatinath,
  ];

   SlidersPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sliders'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              height: 300,
              color: Colors.grey.shade800,
              padding: const EdgeInsets.all(16.0),
              child: Swiper(
                itemBuilder: (BuildContext context, int index) {
                  return ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: PNetworkImage(
                      images[index],
                      fit: BoxFit.cover,
                    ),
                  );
                },
                itemCount: 10,
                viewportFraction: 0.8,
                scale: 0.9,
                pagination: const SwiperPagination(),
              ),
            ),
            const SizedBox(height: 20.0),
            Container(
              height: 300,
              color: Colors.grey.shade800,
              padding: const EdgeInsets.all(16.0),
              child: Swiper(
                itemBuilder: (BuildContext context, int index) {
                  return ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: PNetworkImage(
                      images[index],
                      fit: BoxFit.cover,
                    ),
                  );
                },
                itemWidth: 300,
                itemCount: 10,
                layout: SwiperLayout.STACK,
              ),
            ),
            const SizedBox(height: 20.0),
            Container(
              height: 340,
              color: Colors.grey.shade800,
              padding: const EdgeInsets.all(16.0),
              child: Swiper(
                fade: 0.0,
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    children: <Widget>[
                      Container(
                        height: 200,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(10.0),
                                topRight: Radius.circular(10.0)),
                            image: DecorationImage(
                                image: NetworkImage(images[index]),
                                fit: BoxFit.cover)),
                      ),
                      Container(
                          decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(10.0),
                                  bottomRight: Radius.circular(10.0))),
                          child: const ListTile(
                            subtitle: Text("awesome image caption"),
                            title: Text("Awesome image"),
                          ))
                    ],
                  );
                },
                itemCount: 10,
                scale: 0.9,
                pagination: const SwiperPagination(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
