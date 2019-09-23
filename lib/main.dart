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

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      builder: (_) => UserRepository.instance(),
      child: Consumer<UserRepository>(
        builder: (_, user, __) => StreamProvider.value(
          value: user != null && user.user != null ? AuthFirestoreService().getUser(user.user?.uid):null,
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
              "signup": (_)=> SignupPage(), 
              "profile": (_)=> ProfilePage(), 
            },
          ),
        ),
      ),
    );
  }
}
