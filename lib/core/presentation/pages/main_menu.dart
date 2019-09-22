/**
 * Author: Damodar Lohani
 * profile: https://github.com/lohanidamodar
  */

import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_ui_challenges/core/data/favorite_firestore_service.dart';
import 'package:flutter_ui_challenges/core/data/models/menu.dart';
import 'package:flutter_ui_challenges/core/presentation/widgets/preview.dart';
import 'package:flutter_ui_challenges/features/auth/data/model/user.dart';
import 'package:flutter_ui_challenges/features/auth/data/model/user_repository.dart';
import 'package:package_info/package_info.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../routes.dart';

class MainMenu extends StatefulWidget {
  @override
  _MainMenuState createState() => _MainMenuState();
}

class _MainMenuState extends State<MainMenu> {
  Map<String, bool> viewData = <String, bool>{};
  List<SubMenuItem> unseen;
  bool viewDataLoaded;
  bool dialogShowing;
  bool showNewUiDialog;
  @override
  void initState() {
    super.initState();
    unseen = [];
    viewDataLoaded = false;
    dialogShowing = false;
    showNewUiDialog = false;
    _getViewData();
  }

  _getViewData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      viewData = Map<String, bool>.from(json.decode(
          prefs.getString('page_view_data') != null
              ? prefs.getString('page_view_data')
              : "{}"));
      viewDataLoaded = true;
      showNewUiDialog = prefs.getBool('show_new_uis_dialog') ?? true;
    });
    return;
  }

  _writeViewData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString("page_view_data", json.encode(viewData));
  }

  @override
  Widget build(BuildContext context) => _buildMenuPage();

  ListView _buildMenuPage() {
    if (showNewUiDialog && viewDataLoaded) _checkToShowDialog(context);
    return ListView.builder(
      physics: BouncingScrollPhysics(),
      itemBuilder: (BuildContext context, int index) {
        dynamic page = pages[index];
        return page is MenuItem
            ? _buildExpandableMenu(page, context)
            : _buildSubMenu(page, context);
      },
      itemCount: pages.length,
    );
  }

  void _checkToShowDialog(BuildContext context) {
    unseen = [];
    pages.forEach((page) {
      if (page is SubMenuItem && viewData[page.title] != true) unseen.add(page);
      if (page is MenuItem) {
        page.items.forEach((item) {
          if (viewData[item.title] != true) unseen.add(item);
        });
      }
    });
    if (unseen.length > 0 && unseen.length < 8 && !dialogShowing)
      _showNewUisDialog(context);
  }

  _showNewUisDialog(pcontext) async {
    PackageInfo pkg = await PackageInfo.fromPlatform();
    dialogShowing = true;
    showDialog(
        barrierDismissible: false,
        context: pcontext,
        builder: (context) => AlertDialog(
              title: Text(
                "Flutter UI Challenges v${pkg.version}",
              ),
              content: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      "New UIs you have not viewed",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 10.0),
                    ...unseen.map(
                      (item) => ListTile(
                        title: Text(item.title),
                        onTap: () => _openPage(context, item, OpenMode.PREVIEW),
                        trailing: IconButton(
                          icon: Icon(Icons.code),
                          onPressed: () =>
                              _openPage(context, item, OpenMode.CODE),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              actions: <Widget>[
                FlatButton(
                  textColor: Colors.pink,
                  child: Text("Close & Never Display Again"),
                  onPressed: () async {
                    (await SharedPreferences.getInstance())
                        .setBool('show_new_uis_dialog', false);
                    Navigator.pop(context);
                  },
                ),
                FlatButton(
                  child: Text("Close"),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            ));
  }

  Widget _buildExpandableMenu(MenuItem page, BuildContext context) {
    bool hasChanges = false;
    page.items.forEach((item) {
      if (viewData[item.title] != true) {
        hasChanges = true;
        return;
      }
    });
    return ExpansionTile(
      leading: Icon(page.icon),
      title: Text(
        "${page.title} (${page.items.length} layouts)",
        style: TextStyle(
            fontWeight: FontWeight.bold,
            color: hasChanges ? Colors.deepOrange : Colors.black87),
      ),
      children: _buildSubMenus(page.items, context),
    );
  }

  List<Widget> _buildSubMenus(List<SubMenuItem> items, BuildContext context) {
    final List<Widget> subMenus = [];
    items.forEach((item) => subMenus.add(_buildSubMenu(item, context)));
    return subMenus;
  }

  Widget _buildSubMenu(SubMenuItem item, BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 32.0),
      child: ListTile(
        leading: Icon(Icons.arrow_right, color: Colors.deepOrange),
        contentPadding: EdgeInsets.all(0),
        dense: false,
        isThreeLine: false,
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            if (Provider.of<UserRepository>(context).user != null)
              IconButton(
                icon: Icon(
                  isFavorited(context, item.title)
                      ? Icons.favorite
                      : Icons.favorite_border,
                  color: isFavorited(context, item.title)
                      ? Colors.red
                      : Colors.black,
                ),
                onPressed: () => _addToFavorite(context, item.title),
              ),
            IconButton(
              icon: Icon(Icons.code),
              onPressed: () => _openPage(context, item, OpenMode.CODE),
            ),
          ],
        ),
        title: Text(
          item.title,
          style: Theme.of(context).textTheme.subhead.copyWith(
              color: viewData[item.title] != true
                  ? Colors.deepOrange
                  : Colors.black87),
        ),
        onTap: () => _openPage(context, item, OpenMode.PREVIEW),
      ),
    );
  }

  void _addToFavorite(BuildContext context, String key) {
    User user = Provider.of<User>(context);
    if (user != null) {
      if (isFavorited(context, key)) {
        FavoriteFirestoreService().removeFromFavorite(user.id, key);
      } else {
        FavoriteFirestoreService().addToFavorite(user.id, key);
      }
    }
  }

  bool isFavorited(BuildContext context, String key) {
    return Provider.of<User>(context) != null &&
        Provider.of<User>(context).favorites.contains(key);
  }

  void _openPage(BuildContext context, SubMenuItem item, OpenMode mode) {
    setState(() {
      viewData[item.title] = true;
    });
    _writeViewData();

    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => mode == OpenMode.CODE
              ? DesignPreviewsPage(
                  page: item.page, title: item.title, path: item.path)
              : item.page,
        ));
  }
}
