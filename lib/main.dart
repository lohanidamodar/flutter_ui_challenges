import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_analytics/observer.dart';
/**
 * Author: Damodar Lohani
 * profile: https://github.com/lohanidamodar
  */

import 'package:flutter/material.dart';
import 'package:flutter_ui_challenges/features/auth/presentation/pages/home.dart';
import 'package:flutter_ui_challenges/features/auth/presentation/pages/profile_page.dart';
import 'package:flutter_ui_challenges/features/auth/presentation/pages/signup.dart';
import 'package:provider/provider.dart';

import 'core/presentation/pages/about.dart';
import 'core/presentation/pages/home.dart';
import 'features/auth/data/model/user_repository.dart';
import 'features/auth/data/service/firestore_service.dart';

FirebaseAnalytics analytics = FirebaseAnalytics();

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => UserRepository.instance(),
      child: Consumer<UserRepository>(
        builder: (_, user, __) => StreamProvider.value(
          value: user != null && user.user != null
              ? AuthFirestoreService().getUser(user.user?.uid)
              : null,
          child: MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Flutter UIs',
            theme: ThemeData(
                primarySwatch: Colors.deepOrange, accentColor: Colors.indigo),
            home: user.loginSkipped ? HomePage() : AuthHomePage(),
            routes: {
              "auth_home": (_) => AuthHomePage(),
              "home": (_) => HomePage(),
              "about": (_) => AboutPage(),
              "signup": (_) => SignupPage(),
              "profile": (_) => ProfilePage(),
            },
            navigatorObservers: [
              FirebaseAnalyticsObserver(analytics: analytics),
            ],
          ),
        ),
      ),
    );
  }
}
