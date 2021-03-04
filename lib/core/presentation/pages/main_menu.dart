/**
 * Author: Damodar Lohani
 * profile: https://github.com/lohanidamodar
  */

import 'package:flutter/material.dart';
import 'package:flutter_ui_challenges/core/data/models/menu.dart';
import 'package:flutter_ui_challenges/core/presentation/widgets/preview.dart';
import 'package:flutter_ui_challenges/core/presentation/widgets/rounded_bordered_container.dart';
import 'package:flutter_ui_challenges/src/pages/bike/bike_details.dart';
import '../routes.dart';

class MainMenu extends StatefulWidget {
  @override
  _MainMenuState createState() => _MainMenuState();
}

class _MainMenuState extends State<MainMenu> {
  Map<String, bool> _expandedData;
  @override
  void initState() {
    super.initState();
    _expandedData = {};
  }

  @override
  Widget build(BuildContext context) => _buildMenuPage();

  ListView _buildMenuPage() {
    return ListView(
      physics: BouncingScrollPhysics(),
      children: <Widget>[
        ...pages.map((page) => page is MenuItem
            ? _buildExpandableMenu(page, context)
            : BorderedContainer(
                margin: const EdgeInsets.symmetric(
                  vertical: 4.0,
                  horizontal: 8.0,
                ),
                padding: const EdgeInsets.all(0),
                child: _buildSubMenu(page, context)))
      ],
    );
  }

  Widget _buildExpandableMenu(MenuItem page, BuildContext context) {
    return RoundedContainer(
      margin: EdgeInsets.symmetric(
          horizontal:
              _expandedData[page.title] != null && _expandedData[page.title]
                  ? 0
                  : 8.0,
          vertical: 4.0),
      padding: const EdgeInsets.all(0),
      elevation: 0,
      child: ExpansionTile(
        onExpansionChanged: (val) {
          setState(() {
            _expandedData[page.title] = val;
          });
        },
        leading: Icon(page.icon),
        title: Text(
          "${page.title} (${page.items.length} layouts)",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black87),
        ),
        children: _buildSubMenus(page.items, context),
      ),
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
            IconButton(
              icon: Icon(Icons.code),
              onPressed: () => _openPage(context, item, OpenMode.CODE),
            ),
          ],
        ),
        title: Text(
          item.title,
          style: Theme.of(context)
              .textTheme
              .subtitle1
              .copyWith(color: Colors.black87),
        ),
        onTap: () => _openPage(context, item, OpenMode.PREVIEW),
      ),
    );
  }

  void _openPage(BuildContext context, SubMenuItem item, OpenMode mode) {
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
