/**
 * Author: Damodar Lohani
 * profile: https://github.com/lohanidamodar
  */

import 'package:flutter/material.dart';
import 'package:flutter_ui_challenges/core/presentation/res/assets.dart';
import 'package:flutter_ui_challenges/src/widgets/network_image.dart';

class ArticleOnePage extends StatelessWidget {
  static const String path = "lib/src/pages/blog/article1.dart";

  const ArticleOnePage({super.key});
  @override
  Widget build(BuildContext context) {
    String image = images[1];
    return Scaffold(
      appBar: AppBar(
        title: const Text('Article One'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                SizedBox(
                    height: 300,
                    width: double.infinity,
                    child: PNetworkImage(
                      image,
                      fit: BoxFit.cover,
                    )),
                Positioned(
                  bottom: 20.0,
                  left: 20.0,
                  right: 20.0,
                  child: Row(
                    children: const <Widget>[
                      Icon(
                        Icons.slideshow,
                        color: Colors.white,
                      ),
                      SizedBox(width: 10.0),
                      Text(
                        "Technology",
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                )
              ],
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 16.0, right: 16.0, bottom: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      const Expanded(
                        child: Text("Oct 21, 2017"),
                      ),
                      IconButton(
                        icon: const Icon(Icons.share),
                        onPressed: () {},
                      )
                    ],
                  ),
                  Text(
                    "Lorem ipsum dolor sit amet",
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  const Divider(),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    children: const <Widget>[
                      Icon(Icons.favorite_border),
                      SizedBox(
                        width: 5.0,
                      ),
                      Text("20.2k"),
                      SizedBox(
                        width: 16.0,
                      ),
                      Icon(Icons.comment),
                      SizedBox(
                        width: 5.0,
                      ),
                      Text("2.2k"),
                    ],
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  const Text(
                    "Lorem ipsum dolor, sit amet consectetur adipisicing elit. Aperiam, ullam? Fuga doloremque repellendus aut sequi officiis dignissimos, enim assumenda tenetur reprehenderit quam error, accusamus ipsa? Officiis voluptatum sequi voluptas omnis. Lorem ipsum dolor, sit amet consectetur adipisicing elit. Aperiam, ullam? Fuga doloremque repellendus aut sequi officiis dignissimos, enim assumenda tenetur reprehenderit quam error, accusamus ipsa? Officiis voluptatum sequi voluptas omnis.",
                    textAlign: TextAlign.justify,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
