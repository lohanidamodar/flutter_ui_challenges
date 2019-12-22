/**
 * Author: Damodar Lohani
 * profile: https://github.com/lohanidamodar
  */

import 'package:flutter/material.dart';
import 'package:flutter_ui_challenges/core/presentation/pages/favorites.dart';
import 'package:flutter_ui_challenges/features/auth/data/model/user_repository.dart';
import 'package:provider/provider.dart';

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
        appBar: AppBar(
          title: Text("UI Challenges"),
        ),
        body: Provider.of<UserRepository>(context).user != null
            ? _pageIndex == 0 ? MainMenu() : FavoritesTab()
            : MainMenu(),
        bottomNavigationBar: Provider.of<UserRepository>(context).user == null
            ? null
            : BottomNavigationBar(
                selectedItemColor: Theme.of(context).primaryColor,
                showUnselectedLabels: false,
                showSelectedLabels: false,
                backgroundColor: Colors.grey.shade300,
                currentIndex: _pageIndex,
                onTap: (index) => setState(() {
                  _pageIndex = index;
                }),
                items: [
                  BottomNavigationBarItem(
                    title: Text(""),
                    icon: Icon(Icons.home),
                  ),
                  BottomNavigationBarItem(
                    title: Text(""),
                    icon: Icon(_pageIndex == 1
                        ? Icons.favorite
                        : Icons.favorite_border),
                  ),
                ],
              ),
      ),
    );
  }
}
