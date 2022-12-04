/**
 * Author: Ambika Dulal
 * profile: https://github.com/Ambikadulal
 * design Source:Dribble.com
 * Images:Pixabay.com
  */
import 'package:flutter/material.dart';
import 'package:flutter_ui_challenges/src/travelui_clone/screens/home_screen.dart';

class TravelUiClone extends StatelessWidget {
    static const String path = 'lib/src/travelui_clone/main.dart';
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Travel UI',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xFF3EBACE),
        accentColor: Color(0xFFD8ECF1),
        scaffoldBackgroundColor: Color(0xFFF3F5F7),
      ),
      home: HomeScreen(),
    );
  }
}