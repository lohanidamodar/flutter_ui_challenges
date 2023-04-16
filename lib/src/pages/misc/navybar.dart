/**
 * Author: Siddhartha Joshi
 * profile: https://github.com/cimplesid
  */

import 'package:flutter/material.dart';
import 'dart:async';

class FancyBottomBarPage extends StatefulWidget {
  static const String path = "lib/src/pages/misc/navybar.dart";

  const FancyBottomBarPage({super.key});
  @override
  _FancyBottomBarPageState createState() => _FancyBottomBarPageState();
}

class _FancyBottomBarPageState extends State<FancyBottomBarPage> {
  @override
  void dispose() {
    indexcontroller.close();
    super.dispose();
  }

  PageController pageController = PageController(initialPage: 0);
  StreamController<int> indexcontroller = StreamController<int>.broadcast();
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bottom navigation fancy'),
      ),
      body: PageView(
        physics: const NeverScrollableScrollPhysics(),
        onPageChanged: (index) {
          indexcontroller.add(index);
        },
        controller: pageController,
        children: const <Widget>[
          Center(
            child: Text('Home'),
          ),
          Center(
            child: Text('user'),
          ),
          Center(
            child: Text('Security'),
          ),
          Center(
            child: Text('Message'),
          ),
        ],
      ),
      bottomNavigationBar: StreamBuilder<Object>(
          initialData: 0,
          stream: indexcontroller.stream,
          builder: (context, snapshot) {
            int? cIndex = snapshot.data as int?;
            return FancyBottomNavigation(
              currentIndex: cIndex,
              items: <FancyBottomNavigationItem>[
                FancyBottomNavigationItem(
                    icon: const Icon(Icons.home), title: const Text('Home')),
                FancyBottomNavigationItem(
                    icon: const Icon(Icons.person), title: const Text('User')),
                FancyBottomNavigationItem(
                    icon: const Icon(Icons.security), title: const Text('Security')),
                FancyBottomNavigationItem(
                    icon: const Icon(Icons.message), title: const Text('Message')),
              ],
              onItemSelected: (int value) {
                indexcontroller.add(value);
                pageController.jumpToPage(value);
              },
            );
          }),
    );
  }
}

class FancyBottomNavigation extends StatefulWidget {
  final int? currentIndex;
  final double iconSize;
  final Color? activeColor;
  final Color? inactiveColor;
  final Color? backgroundColor;
  final List<FancyBottomNavigationItem> items;
  final ValueChanged<int> onItemSelected;

  const FancyBottomNavigation(
      {super.key, 
      this.currentIndex = 0,
      this.iconSize = 24,
      this.activeColor,
      this.inactiveColor,
      this.backgroundColor,
      required this.items,
      required this.onItemSelected});

  @override
  _FancyBottomNavigationState createState() {
    return _FancyBottomNavigationState(
        items: items,
        backgroundColor: backgroundColor,
        currentIndex: currentIndex,
        iconSize: iconSize,
        activeColor: activeColor,
        inactiveColor: inactiveColor,
        onItemSelected: onItemSelected);
  }
}

class _FancyBottomNavigationState extends State<FancyBottomNavigation> {
  final int? currentIndex;
  final double? iconSize;
  Color? activeColor;
  Color? inactiveColor;
  Color? backgroundColor;
  List<FancyBottomNavigationItem> items;
  int? _selectedIndex;
  ValueChanged<int> onItemSelected;

  _FancyBottomNavigationState(
      {required this.items,
      this.currentIndex,
      this.activeColor,
      this.inactiveColor = Colors.black,
      this.backgroundColor,
      this.iconSize,
      required this.onItemSelected}) {
    _selectedIndex = currentIndex;
  }

  Widget _buildItem(FancyBottomNavigationItem item, bool isSelected) {
    return AnimatedContainer(
      width: isSelected ? 124 : 50,
      height: double.maxFinite,
      duration: const Duration(milliseconds: 250),
      padding: const EdgeInsets.fromLTRB(12, 8, 12, 8),
      decoration: !isSelected
          ? null
          : BoxDecoration(
              color: activeColor,
              borderRadius: const BorderRadius.all(Radius.circular(50)),
            ),
      child: ListView(
        shrinkWrap: true,
        padding: const EdgeInsets.all(0),
        physics: const NeverScrollableScrollPhysics(),
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(right: 8),
                child: IconTheme(
                  data: IconThemeData(
                      size: iconSize,
                      color: isSelected ? backgroundColor : inactiveColor),
                  child: item.icon,
                ),
              ),
              isSelected
                  ? DefaultTextStyle.merge(
                      style: TextStyle(color: backgroundColor),
                      child: item.title,
                    )
                  : const SizedBox.shrink()
            ],
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    activeColor =
        (activeColor == null) ? Theme.of(context).colorScheme.secondary : activeColor;

    backgroundColor = (backgroundColor == null)
        ? Theme.of(context).bottomAppBarTheme.color
        : backgroundColor;

    return Container(
      width: MediaQuery.of(context).size.width,
      height: 56,
      padding: const EdgeInsets.only(left: 8, right: 8, top: 6, bottom: 6),
      decoration: BoxDecoration(
          color: backgroundColor,
          boxShadow: const [BoxShadow(color: Colors.black12, blurRadius: 2)]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: items.map((item) {
          var index = items.indexOf(item);
          return GestureDetector(
            onTap: () {
              onItemSelected(index);

              setState(() {
                _selectedIndex = index;
              });
            },
            child: _buildItem(item, _selectedIndex == index),
          );
        }).toList(),
      ),
    );
  }
}

class FancyBottomNavigationItem {
  final Icon icon;
  final Text title;

  FancyBottomNavigationItem({
    required this.icon,
    required this.title,
  });
}
