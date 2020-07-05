/**
 * Author: Damodar Lohani
 * profile: https://github.com/lohanidamodar
  */
  
import 'package:flutter/material.dart';
import 'package:flutter_ui_challenges/src/widgets/loaders/loader2.dart';
import '../../widgets/loaders/loader1.dart';

class LoadersPage extends StatelessWidget {
  static final String path = "lib/src/pages/misc/loaders.dart";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Loaders"),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            LoaderOne(
              color: Colors.red
            ),
            SizedBox(height: 10.0,),
            LoaderTwo(),
            SizedBox(height: 10.0,),
          ],
        ),
      ),
    );
  }
}