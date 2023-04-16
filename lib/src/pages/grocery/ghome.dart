/**
 * Author: Damodar Lohani
 * profile: https://github.com/lohanidamodar
  */

import 'package:flutter/material.dart';
import 'package:flutter_ui_challenges/core/presentation/res/assets.dart';
import 'package:flutter_ui_challenges/src/pages/grocery/tabs/gcarttab.dart';
import 'package:flutter_ui_challenges/src/pages/grocery/tabs/ghometab.dart';
import 'package:flutter_ui_challenges/src/pages/grocery/tabs/gprofiletab.dart';
import 'package:flutter_ui_challenges/src/pages/grocery/tabs/gwishlisttab.dart';
import 'package:flutter_ui_challenges/src/widgets/network_image.dart';

class GroceryHomePage extends StatefulWidget {
  static const String path = "lib/src/pages/grocery/ghome.dart";

  const GroceryHomePage({super.key});

  @override
  GroceryHomePageState createState() {
    return GroceryHomePageState();
  }
}

class GroceryHomePageState extends State<GroceryHomePage> {
  int _currentIndex = 0;
  final List<Widget> _children = [];
  final List<PreferredSizeWidget> _appBars = [];

  @override
  void initState() {
    _children.add(const GroceryHomeTabView());
    _children.add(const GroceryCartTabView());
    _children.add(const GroceryWishlistTabView());
    _children.add(const GroceryProfileTabView());

    _appBars.add(_buildAppBar());
    _appBars.add(_buildAppBarOne("Your Cart"));
    _appBars.add(_buildAppBarOne("Your Wishlist"));
    _appBars.add(_buildAppBarOne("You"));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBars[_currentIndex],
      body: _children[_currentIndex],
      bottomNavigationBar: _buildBottomNavigationBar(),
    );
  }

  PreferredSizeWidget _buildAppBar() {
    return PreferredSize(
      preferredSize: const Size.fromHeight(90.0),
      child: Container(
        margin: const EdgeInsets.only(top: 20.0),
        child: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: Card(
            child: TextField(
              decoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(
                      horizontal: 20.0, vertical: 15.0),
                  hintText: "Search products",
                  border: InputBorder.none,
                  suffixIcon: IconButton(
                      onPressed: () {}, icon: const Icon(Icons.search))),
            ),
          ),
          leading: const PNetworkImage(deliveryIcon),
        ),
      ),
    );
  }

  PreferredSizeWidget _buildAppBarOne(String title) {
    return AppBar(
      bottom: PreferredSize(
          preferredSize: const Size.fromHeight(1.0),
          child: Container(
            color: Colors.grey.shade200,
            height: 1.0,
          )),
      automaticallyImplyLeading: false,
      backgroundColor: Colors.white,
      elevation: 0,
      title: Text(title, style: const TextStyle(color: Colors.black)),
    );
  }

  BottomNavigationBar _buildBottomNavigationBar() {
    return BottomNavigationBar(
      onTap: _onTabTapped,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: "Cart"),
        BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border), label: "Wishlist"),
        BottomNavigationBarItem(icon: Icon(Icons.person_outline), label: "You"),
      ],
      type: BottomNavigationBarType.fixed,
      currentIndex: _currentIndex,
    );
  }

  _onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
