import 'package:flutter/material.dart';
import 'package:flutter_ui_challenges/src/pages/ecommerce/cart1.dart';
import 'package:flutter_ui_challenges/src/pages/ecommerce/ecommerce1.dart';
import 'package:flutter_ui_challenges/src/pages/ecommerce/ecommerce2.dart';
import 'package:flutter_ui_challenges/src/pages/ecommerce/ecommerce_detail1.dart';
import 'package:flutter_ui_challenges/src/pages/ecommerce/ecommerce_detail2.dart';
import 'package:flutter_ui_challenges/src/pages/food/fdhome.dart';
import 'package:flutter_ui_challenges/src/pages/food/recipe_details.dart';
import 'package:flutter_ui_challenges/src/pages/grocery/ghome.dart';
import 'package:flutter_ui_challenges/src/pages/hotel/hhome.dart';
import 'package:flutter_ui_challenges/src/pages/login/login1.dart';
import 'package:flutter_ui_challenges/src/pages/login/login2.dart';
import 'package:flutter_ui_challenges/src/pages/login/login3.dart';
import 'package:flutter_ui_challenges/src/pages/login/login4.dart';
import 'package:flutter_ui_challenges/src/pages/login/signup1.dart';
import 'package:flutter_ui_challenges/src/pages/misc/loaders.dart';
import 'package:flutter_ui_challenges/src/pages/misc/sliver_appbar.dart';
import 'package:flutter_ui_challenges/src/pages/misc/springy_slider_page.dart';
import 'package:flutter_ui_challenges/src/pages/navigation/hiddenmenu.dart';
import 'package:flutter_ui_challenges/src/pages/onboarding/smart_wallet_onboarding.dart';
import 'package:flutter_ui_challenges/src/pages/profile/profile1.dart';
import 'package:flutter_ui_challenges/src/pages/profile/profile2.dart';
import 'package:flutter_ui_challenges/src/pages/travel/thome.dart';
import 'package:flutter_ui_challenges/src/pages/travel/travel_nepal.dart';

class DrawerMenu extends StatelessWidget {
  final List<dynamic> pages = [
    MenuItem(title: "User flow", items: [
      SubMenuItem("Login One", LoginOnePage()),
      SubMenuItem("Login Two", LoginTwoPage()),
      SubMenuItem("Login Three", LoginThreePage()),
      SubMenuItem("Login Four", LoginFourPage()),
      SubMenuItem("Signup One", SignupOnePage()),
      SubMenuItem("Profile One", ProfileOnePage()),
      SubMenuItem("Profile Two", ProfileTwoPage()),
    ]),
    MenuItem(title: "Ecommerce", items: [
      SubMenuItem("Ecommerce One", EcommerceOnePage()),
      SubMenuItem("Ecommerce Two", EcommerceTwoPage()),
      SubMenuItem("Ecommerce Cart One", CartOnePage()),
      SubMenuItem("Ecommerce Details One", EcommerceDetailOnePage()),
      SubMenuItem("Ecommerce Details Two", EcommerceDetailTwoPage()),
    ]),
    MenuItem(title: "Food", items: [
      SubMenuItem("Recipe Details", RecipeDetailsPage()),
      SubMenuItem("Food Delivery", FoodDeliveryHomePage()),
    ]),
    MenuItem(title: "Travel", items: [
      SubMenuItem("Travel Home", TravelHomePage()),
      SubMenuItem("Travel Nepal", TravelNepalPage()),
    ]),
    MenuItem(title: "Hotel", items: [
      SubMenuItem("Hotel Home", HotelHomePage()),
    ]),
    MenuItem(title: "Navigation", items: [
      SubMenuItem("Hidden Menu", HiddenMenuPage()),
    ]),
    MenuItem(title: "Onboarding", items: [
      SubMenuItem("Smart Wallet Onboarding", SmartWalletOnboardingPage()),
    ]),
    MenuItem(title: "Miscllaneous", items: [
      SubMenuItem("Springy Slider", SpringySliderPage()),
      SubMenuItem("Sliver App Bar", SliverAppbarPage()),
      SubMenuItem("Loaders", LoadersPage()),
    ]),
    SubMenuItem("Grocery UI Kit", GroceryHomePage())

  ];

  @override
  Widget build(BuildContext context) => Drawer(
    child: Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: Container(
          padding: EdgeInsets.only(top: 30.0),
          height: 100,
          color: Colors.deepPurple,
          child: ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.white,
              child: Icon(Icons.toys),
            ),
            title: Text("Flutter UIs", style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 18.0
            )),
          ),
        ),
      ),
      body: ListView.builder(
        itemBuilder: (BuildContext context,int index){
          dynamic page = pages[index];
          return page is MenuItem ? _buildExpandableMenu(page, context) : _buildSubMenu(page, context);
        },
        itemCount: pages.length,
      ),
    ),
  );

  Widget _buildExpandableMenu(MenuItem page, BuildContext context) {
    return ExpansionTile(
      title: Text(page.title),
      children: _buildSubMenus(page.items, context),
    );
  }

  List<Widget> _buildSubMenus(List<SubMenuItem> items, BuildContext context) {
    final List<Widget> subMenus = [];
    items.forEach((item)=>subMenus.add(_buildSubMenu(item, context)));
    return subMenus;
  }

  Widget _buildSubMenu(SubMenuItem item, BuildContext context) {
    return Column(children: <Widget>[
      ListTile(
        title: Text(item.title),
        onTap: () => _openPage(item.page, context),
      ),
      Divider(),
    ],);
  }

  void _openPage(Object page, BuildContext context) {
    Navigator.push(context, 
      MaterialPageRoute(
        builder: (context) => page
      )
    );
  }
}

class MenuItem {
  final String title;
  final List<SubMenuItem> items;


  MenuItem({Key key, @required this.title, this.items});


}
class SubMenuItem {
  final String title;
  final Widget page;

  SubMenuItem(this.title, this.page);

}