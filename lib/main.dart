/// Author: Damodar Lohani
/// profile: https://github.com/lohanidamodar

import 'package:flutter/material.dart';
import 'package:flutter_ui_challenges/features/home/presentation/pages/new_home.dart';
import 'core/presentation/pages/about.dart';
import 'core/presentation/pages/home.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // https://stackoverflow.com/questions/44004451/navigator-operation-requested-with-a-context-that-does-not-include-a-navigator
  final _navKey = GlobalKey<NavigatorState>();

  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: _navKey,
      debugShowCheckedModeBanner: false,
      title: 'Flutter UIs',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.grey.shade300,
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.red)
            .copyWith(secondary: Colors.indigo),
      ),
      home: const NewHomePage(),
      routes: {
        // "auth_home": (_) => AuthHomePage(),
        "challenge_home": (_) => const HomePage(),
        "about": (_) => const AboutPage(),
        // "signup": (_) => SignupPage(),
        // "profile": (_) => ProfilePage(),
      },
    );
  }
}
