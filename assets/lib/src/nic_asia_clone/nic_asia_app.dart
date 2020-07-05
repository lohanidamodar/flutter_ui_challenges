/**
 * Author: Mausam Rayamajhi
 * profile: https://github.com/mausamRayamajhi
  */
  

import 'package:flutter/material.dart';
import 'pages/dashboard.dart';
import 'pages/login.dart';
import 'util/constant.dart';

class NicAsiaApp extends StatelessWidget {
  static final String path = "lib/src/nic_asia_clone/nic_asia_app.dart";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'NIC ASIA',
      theme: ThemeData(
        primaryColor: primaryColor,
        accentColor: primaryColorLight,
      ),
      initialRoute: '/',
      routes: <String, WidgetBuilder>{
        '/': (BuildContext context) => SafeArea(
              top: true,
              child: Login(),
            ),
        '/dashboard': (context) => SafeArea(
              top: true,
              child: Dashboard(),
            ),
      },
      onUnknownRoute: (RouteSettings settings) {
        print('INSIDE Unknown routes');
        return MaterialPageRoute(
          builder: (BuildContext context) => Login(),
        );
      },
    );
  }
}
