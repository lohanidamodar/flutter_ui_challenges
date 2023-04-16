/**
 * Author: Damodar Lohani
 * profile: https://github.com/lohanidamodar
  */

import 'package:flutter/material.dart';
import 'package:flutter_ui_challenges/core/presentation/res/assets.dart';
import 'package:flutter_ui_challenges/src/widgets/network_image.dart';

class LandingOnePage extends StatelessWidget {
  static const String path = "lib/src/pages/onboarding/landing1.dart";
  final String bgImage = photographer;
  final String image = ledge;

  const LandingOnePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
              alignment: Alignment.center,
              child: PNetworkImage(
                bgImage,
                fit: BoxFit.contain,
              )),
          Column(
            children: <Widget>[
              const SizedBox(height: 30.0),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.0),
                      boxShadow: const [
                        BoxShadow(
                            color: Colors.black38,
                            offset: Offset(5.0, 5.0),
                            blurRadius: 5.0)
                      ]),
                  margin: const EdgeInsets.all(48.0),
                  child: Column(
                    children: <Widget>[
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage(image),
                                  fit: BoxFit.cover),
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(10.0),
                                topRight: Radius.circular(10.0),
                              )),
                        ),
                      ),
                      const SizedBox(height: 20.0),
                      Text(
                        "How will you do?",
                        style: TextStyle(
                          color: Colors.grey.shade700,
                          fontSize: 24.0,
                        ),
                      ),
                      const SizedBox(height: 10.0),
                      Text(
                        "Lorem ipsuim is simply dummy text of the \nprinting and typesetting industry.\nLorem ipsum has been the",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.grey.shade400, fontSize: 14.0),
                      ),
                      const SizedBox(height: 30.0),
                    ],
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 80.0),
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.all(16.0),
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.lightGreen,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40.0)),
                  ),
                  onPressed: () {},
                  child: const Text(
                    "Get Started",
                    style:
                        TextStyle(fontWeight: FontWeight.w300, fontSize: 18.0),
                  ),
                ),
              ),
              const SizedBox(height: 40.0),
            ],
          )
        ],
      ),
    );
  }
}
