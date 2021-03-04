/**
 * Author: Damodar Lohani
 * profile: https://github.com/lohanidamodar
  */

import 'package:flutter/material.dart';
import 'package:flutter_ui_challenges/core/presentation/res/text_styles.dart';

import 'main_menu.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _pageIndex;
  @override
  void initState() {
    super.initState();
    _pageIndex = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        primarySwatch: Colors.deepOrange,
        accentColor: Colors.indigo,
      ),
      child: Scaffold(
        backgroundColor: Colors.grey.shade300,
        appBar: AppBar(
          backgroundColor: Colors.grey.shade300,
          brightness: Brightness.light,
          iconTheme: IconThemeData(color: Colors.black),
          title: Text('Ui Challenges', style: blackText),
          elevation: 0,
        ),
        body: MainMenu(),
        bottomNavigationBar: null,
      ),
    );
  }
}
