/**
 * Author: Damodar Lohani
 * profile: https://github.com/lohanidamodar
  */

import 'package:flutter/material.dart';
import 'package:flutter_ui_challenges/src/widgets/loaders/loader2.dart';
import '../../widgets/loaders/loader1.dart';

class LoadersPage extends StatelessWidget {
  static const String path = "lib/src/pages/misc/loaders.dart";

  const LoadersPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Loaders"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const <Widget>[
          LoaderOne(color: Colors.red),
          SizedBox(
            height: 10.0,
          ),
          LoaderTwo(),
          SizedBox(
            height: 10.0,
          ),
        ],
      ),
    );
  }
}
