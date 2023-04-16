/**
 * Author: Damodar Lohani
 * profile: https://github.com/lohanidamodar
  */

import 'package:flutter/material.dart';
import 'package:flutter_ui_challenges/core/presentation/res/assets.dart';

class MenuOnePage extends StatelessWidget {
  static const String path = "lib/src/pages/navigation/menu1.dart";
  final Color primary = const Color(0xff4BBEC0);
  final TextStyle style = const TextStyle(
    color: Colors.black,
    fontSize: 18.0,
    fontWeight: FontWeight.bold,
  );

  const MenuOnePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Stack(
        fit: StackFit.expand,
        children: [
          Ink(
            decoration: BoxDecoration(
              color: primary,
            ),
          ),
          Positioned(
            top: -100.0,
            left: 100.0,
            child: Transform.rotate(
              angle: -0.5,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Colors.white.withOpacity(0.3),
                ),
                width: 150,
                height: 300,
              ),
            ),
          ),
          Positioned(
            bottom: -120.0,
            right: 90.0,
            child: Transform.rotate(
              angle: -0.8,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Colors.white.withOpacity(0.3),
                ),
                width: 150,
                height: 300,
              ),
            ),
          ),
          Positioned(
            top: -50.0,
            left: 30.0,
            child: Transform.rotate(
              angle: -0.5,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Colors.white.withOpacity(0.3),
                ),
                width: 150,
                height: 200,
              ),
            ),
          ),
          Positioned(
            bottom: -80.0,
            right: 0.0,
            child: Transform.rotate(
              angle: -0.8,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Colors.white.withOpacity(0.3),
                ),
                width: 150,
                height: 200,
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Center(
                child: Container(
                  padding: const EdgeInsets.all(8.0),
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.0)),
                  child: Container(
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        image: DecorationImage(
                          image: NetworkImage(avatars[0]),
                          fit: BoxFit.cover,
                        )),
                  ),
                ),
              ),
              const SizedBox(height: 10.0),
              InkWell(
                onTap: () {},
                splashColor: primary,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    "Feed",
                    style: style,
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              InkWell(
                onTap: () {},
                splashColor: primary,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    "Activities",
                    style: style,
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              InkWell(
                onTap: () {},
                splashColor: primary,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Center(
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          "Chat",
                          style: style,
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(width: 5.0),
                        CircleAvatar(
                          radius: 15.0,
                          backgroundColor: Colors.white,
                          foregroundColor: primary,
                          child: const Text("5"),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () {},
                splashColor: primary,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    "Help",
                    style: style,
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              InkWell(
                onTap: () {},
                splashColor: primary,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    "Settings",
                    style: style,
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 50.0),
              child: MaterialButton(
                elevation: 0,
                padding: const EdgeInsets.all(16.0),
                shape: const CircleBorder(),
                onPressed: () {
                  Navigator.pop(context);
                },
                color: Colors.grey.shade800,
                child: Icon(
                  Icons.clear,
                  color: primary,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
