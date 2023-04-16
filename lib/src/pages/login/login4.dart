/**
 * Author: Damodar Lohani
 * profile: https://github.com/lohanidamodar
  */

import 'package:flutter/material.dart';
import 'package:flutter_ui_challenges/core/presentation/res/assets.dart';

class LoginFourPage extends StatelessWidget {
  static const String path = "lib/src/pages/login/login4.dart";
  final String background = loginBack;

  const LoginFourPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(20.0),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(background), fit: BoxFit.cover)),
          ),
          Container(
            padding: const EdgeInsets.all(20.0),
            color: Colors.black.withOpacity(0.7),
          ),
          SingleChildScrollView(
            padding: const EdgeInsets.all(20.0),
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.vertical,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                const SizedBox(
                  height: 100.0,
                ),
                const Text(
                  "Welcome Back",
                  style: TextStyle(color: Colors.white, fontSize: 28.0),
                ),
                const Text(
                  "Sign in to continue",
                  style: TextStyle(color: Colors.white, fontSize: 16.0),
                ),
                const SizedBox(
                  height: 30.0,
                ),
                const TextField(
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                      hintText: "Username",
                      hintStyle: TextStyle(color: Colors.white70),
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white54))),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                const TextField(
                  obscureText: true,
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                      hintText: "Password",
                      hintStyle: TextStyle(color: Colors.white70),
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white54))),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                GestureDetector(
                  onTap: () {},
                  child: const Text(
                    "Forgot your password?",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(),
                    child: Text("Sigi In".toUpperCase()),
                    onPressed: () {},
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const Text(
                      "Dont have an account?",
                      style: TextStyle(color: Colors.white, fontSize: 16.0),
                    ),
                    const SizedBox(
                      width: 10.0,
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: const Text(
                        "SIGN UP",
                        style:
                            TextStyle(color: Colors.white, fontSize: 16.0),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
