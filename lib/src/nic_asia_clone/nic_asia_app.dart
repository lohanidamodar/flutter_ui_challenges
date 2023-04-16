/**
 * Author: Mausam Rayamajhi
 * profile: https://github.com/mausamRayamajhi
  */

import 'package:flutter/material.dart';
import 'pages/dashboard.dart';
import 'pages/login.dart';
import 'util/constant.dart';

class NicAsiaApp extends StatelessWidget {
  static const String path = "lib/src/nic_asia_clone/nic_asia_app.dart";

  const NicAsiaApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'NIC ASIA',
      theme: ThemeData(
        primaryColor: primaryColor, colorScheme: ColorScheme.fromSwatch().copyWith(secondary: primaryColorLight),
      ),
      initialRoute: '/',
      routes: <String, WidgetBuilder>{
        '/': (BuildContext context) => const SafeArea(
              top: true,
              child: Login(),
            ),
        '/dashboard': (context) => SafeArea(
              top: true,
              child: Dashboard(),
            ),
      },
      onUnknownRoute: (RouteSettings settings) {
        return MaterialPageRoute(
          builder: (BuildContext context) => const Login(),
        );
      },
    );
  }
}
