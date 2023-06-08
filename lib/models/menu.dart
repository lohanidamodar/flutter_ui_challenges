import 'package:flutter/material.dart';

class MenuItem {
  final String title;
  final List<SubMenuItem>? items;
  final IconData icon;

  MenuItem(
      {Key? key,
      required this.title,
      this.items,
      this.icon = Icons.label_important});
}

class SubMenuItem {
  final String title;
  final Widget page;
  final IconData icon;
  final String? path;

  SubMenuItem(this.title, this.page, {this.icon = Icons.block, this.path});
}

enum OpenMode { code, preview }
