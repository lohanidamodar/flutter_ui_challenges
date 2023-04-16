/**
 * Author: Damodar Lohani
 * profile: https://github.com/lohanidamodar
  */

import 'package:flutter/material.dart';
import 'package:flutter_ui_challenges/src/widgets/forms/checkbox.dart';

class FormElementPage extends StatefulWidget {
  static const String path = "lib/src/pages/misc/form_elements.dart";

  const FormElementPage({super.key});
  @override
  _FormElementPageState createState() => _FormElementPageState();
}

class _FormElementPageState extends State<FormElementPage> {
  bool downloadOverWifi = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Form Elements'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            PCheckboxListTile(
              title: "Download over wifi",
              value: downloadOverWifi,
              onChanged: (value) {
                setState(() {
                  downloadOverWifi = value;
                });
              },
            ),
            const Divider(),
            PCheckboxListTile(
              title: "Download over wifi",
              value: false,
              onChanged: (value) {},
            ),
            const Divider(),
            PCheckboxListTile(
              title: "Download over wifi",
              value: true,
              onChanged: (value) {},
            ),
            const Divider(),
          ],
        ),
      ),
    );
  }
}
