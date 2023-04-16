/**
 * Author: Damodar Lohani
 * profile: https://github.com/lohanidamodar
  */

import 'package:flutter/material.dart';
import 'package:flutter_ui_challenges/core/presentation/res/assets.dart';
import 'package:flutter_ui_challenges/src/widgets/network_image.dart';

class LoginOnePage extends StatelessWidget {
  static const String path = "lib/src/pages/login/login1.dart";

  const LoginOnePage({super.key});
  Widget _buildPageContent() {
    return Container(
      padding: const EdgeInsets.all(20.0),
      color: Colors.grey.shade800,
      child: ListView(
        children: <Widget>[
          Column(
            children: <Widget>[
              const SizedBox(
                height: 50,
              ),
              const SizedBox(
                width: 200,
                child: PNetworkImage(rocket),
              ),
              const SizedBox(
                height: 50,
              ),
              const ListTile(
                  title: TextField(
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                    hintText: "Email address:",
                    hintStyle: TextStyle(color: Colors.white70),
                    border: InputBorder.none,
                    icon: Icon(
                      Icons.email,
                      color: Colors.white30,
                    )),
              )),
              Divider(
                color: Colors.grey.shade600,
              ),
              const ListTile(
                  title: TextField(
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                    hintText: "Password:",
                    hintStyle: TextStyle(color: Colors.white70),
                    border: InputBorder.none,
                    icon: Icon(
                      Icons.lock,
                      color: Colors.white30,
                    )),
              )),
              Divider(
                color: Colors.grey.shade600,
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.cyan,
                      ),
                      onPressed: () {},
                      child: const Text(
                        'Login',
                        style: TextStyle(color: Colors.white70, fontSize: 16.0),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              Text(
                'Forgot your password?',
                style: TextStyle(color: Colors.grey.shade500),
              )
            ],
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildPageContent(),
    );
  }
}
