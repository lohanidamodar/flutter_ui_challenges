/**
 * Author: Damodar Lohani
 * profile: https://github.com/lohanidamodar
  */

import 'package:flutter/material.dart';

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

class PCheckboxListTile extends StatelessWidget {
  final bool value;
  final String title;
  final Function onChanged;
  final Color? selectedColor;
  final Color? color;

  const PCheckboxListTile(
      {Key? key,
      required this.value,
      required this.title,
      required this.onChanged,
      this.selectedColor,
      this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () => onChanged(!value),
      title: Text(title),
      trailing: CircleAvatar(
        backgroundColor: value
            ? selectedColor ?? Theme.of(context).primaryColor
            : color ?? Theme.of(context).primaryColor,
        radius: 14.0,
        child: CircleAvatar(
          radius: 12.0,
          backgroundColor: value
              ? (selectedColor != null)
                  ? selectedColor
                  : Theme.of(context).primaryColor
              : Colors.white,
          child: value
              ? const Icon(
                  Icons.check,
                  size: 14.0,
                )
              : Container(
                  width: 0,
                ),
        ),
      ),
    );
  }
}
