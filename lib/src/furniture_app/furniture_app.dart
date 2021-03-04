/**
 * Author: Mausam Rayamajhi
 * profile: https://github.com/mausamRayamajhi
  */
  import 'package:flutter/material.dart';

import 'pages/furniture.dart';
import 'pages/profile.dart';

class FurnitureApp extends StatelessWidget {
  static final String path = "lib/src/furniture_app/furniture_app.dart";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      initialRoute: '/',
      routes: <String, WidgetBuilder>{
        '/': (BuildContext context) => SafeArea(
              child: SafeArea(
                child: Profile(),
              ),
            ),
        '/furniture': (BuildContext context) => SafeArea(
              child: SafeArea(
                child: Furniture(),
              ),
            ),
      },
    );
  }
}
