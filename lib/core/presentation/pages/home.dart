/**
 * Author: Damodar Lohani
 * profile: https://github.com/lohanidamodar
  */

import 'package:flutter/material.dart';
import 'package:flutter_ui_challenges/core/presentation/pages/favorites.dart';
import 'package:flutter_ui_challenges/features/auth/data/model/user_repository.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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
    return Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(100),
            child: Container(
              padding: EdgeInsets.only(top: 30.0),
              height: 100,
              color: Colors.deepOrange,
              child: ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Image.asset(
                    'assets/icon/icon.png',
                    width: 20,
                  ),
                ),
                title: Text("Flutter UIs",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0)),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    IconButton(
                      color: Colors.white,
                      icon: Icon(FontAwesomeIcons.infoCircle),
                      onPressed: () {
                        Navigator.pushNamed(context, "about");
                      },
                    ),
                    IconButton(
                      color: Colors.white,
                      icon: Icon(FontAwesomeIcons.user),
                      onPressed: () {
                        (Provider.of<UserRepository>(context).user != null)
                          ? Navigator.pushNamed(context, "profile") : Navigator.pushNamed(context, 'auth_home');
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
          body: Provider.of<UserRepository>(context).user != null ? _pageIndex == 0 ? MainMenu() : FavoritesTab() : MainMenu(),
          bottomNavigationBar: Provider.of<UserRepository>(context).user == null ? null : BottomNavigationBar(
            selectedItemColor: Theme.of(context).primaryColor,
            showUnselectedLabels: false,
            showSelectedLabels: false,
            backgroundColor: Colors.grey.shade300,
            currentIndex: _pageIndex,
            onTap: (index) => setState((){
              _pageIndex = index;
            }),
            items: [
              BottomNavigationBarItem(
                title: Text(""),
                icon: Icon(Icons.home),
              ),
              BottomNavigationBarItem(
                title: Text(""),
                icon: Icon( _pageIndex == 1 ? Icons.favorite : Icons.favorite_border),
              ),
            ],
          ),
        );
  }
}
