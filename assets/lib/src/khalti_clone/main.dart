/**
 * Author: Damodar Lohani
 * profile: https://github.com/lohanidamodar
  */
import 'package:flutter/material.dart';
import 'res/colors.dart';
import 'ui/pages/auth/login.dart';
import 'ui/pages/auth/recover.dart';
import 'ui/pages/auth/register.dart';
import 'ui/pages/home.dart';
import 'ui/pages/intro.dart';
import 'ui/pages/payment.dart';
import 'ui/widgets/slide_right_route.dart';

class KhaltiApp extends StatelessWidget {
  static const String path = 'lib/src/khalti_clone/main.dart';
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Khalti',
      debugShowCheckedModeBanner: false,
      color: primary,
      theme: ThemeData(primaryColor: primary, accentColor: accent),
      routes: {
        "/": (_) => IntroPage(),
        "home": (_) => HomePage(),
        "payment": (_) => Payment(),
      },
      onGenerateRoute: (RouteSettings settings) {
        switch(settings.name) {
          case "login":
            return SlideRightRoute(widget: LoginPage());
            break;
          case "recover":
            return SlideRightRoute(widget: RecoverPasswordPage());
            break;
          case "register":
            return SlideRightRoute(widget: RegisterPage());
            break;
          default:
            return null;
        }
      },
    );
  }
}
