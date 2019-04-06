import 'package:flutter/material.dart';
import 'package:flutter_ui_challenges/src/pages/blog/article1.dart';
import 'package:flutter_ui_challenges/src/pages/blog/article2.dart';
import 'package:flutter_ui_challenges/src/pages/dialogs/dialogs.dart';
import 'package:flutter_ui_challenges/src/pages/ecommerce/cart1.dart';
import 'package:flutter_ui_challenges/src/pages/ecommerce/confirm_order1.dart';
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
import 'package:flutter_ui_challenges/src/pages/misc/sliders.dart';
import 'package:flutter_ui_challenges/src/pages/misc/sliver_appbar.dart';
import 'package:flutter_ui_challenges/src/pages/misc/springy_slider_page.dart';
import 'package:flutter_ui_challenges/src/pages/navigation/hiddenmenu.dart';
import 'package:flutter_ui_challenges/src/pages/onboarding/smart_wallet_onboarding.dart';
import 'package:flutter_ui_challenges/src/pages/profile/profile1.dart';
import 'package:flutter_ui_challenges/src/pages/profile/profile2.dart';
import 'package:flutter_ui_challenges/src/pages/profile/profile3.dart';
import 'package:flutter_ui_challenges/src/pages/travel/thome.dart';
import 'package:flutter_ui_challenges/src/pages/travel/travel_nepal.dart';

class MainMenu extends StatelessWidget {
  final List<dynamic> pages = [
    MenuItem(title: "User flow (8 layouts)", icon: Icons.person, items: [
      SubMenuItem("Login One", LoginOnePage()),
      SubMenuItem("Login Two", LoginTwoPage()),
      SubMenuItem("Login Three", LoginThreePage()),
      SubMenuItem("Login Four", LoginFourPage()),
      SubMenuItem("Signup One", SignupOnePage()),
      SubMenuItem("Profile One", ProfileOnePage()),
      SubMenuItem("Profile Two", ProfileTwoPage()),
      SubMenuItem("Profile Three", ProfileThreePage()),
    ]),
    MenuItem(title: "Ecommerce (7 layouts)", icon: Icons.shopping_basket, items: [
      SubMenuItem("Ecommerce One", EcommerceOnePage()),
      SubMenuItem("Ecommerce Two", EcommerceTwoPage()),
      SubMenuItem("Ecommerce Three", SliverAppbarPage()),
      SubMenuItem("Confirm Order", ConfirmOrderPage()),
      SubMenuItem("Ecommerce Cart One", CartOnePage()),
      SubMenuItem("Ecommerce Details One", EcommerceDetailOnePage()),
      SubMenuItem("Ecommerce Details Two", EcommerceDetailTwoPage()),
    ]),
    MenuItem(title: "Blog (2 layouts)", icon: Icons.pages, items: [
      SubMenuItem("Article One", ArticleOnePage()),
      SubMenuItem("Article Two", ArticleTwoPage()),
    ]),
    MenuItem(title: "Food (2 layouts)", icon: Icons.fastfood, items: [
      SubMenuItem("Recipe Details", RecipeDetailsPage()),
      SubMenuItem("Food Delivery", FoodDeliveryHomePage()),
    ]),
    MenuItem(title: "Travel (2 layouts)", icon: Icons.airplanemode_active, items: [
      SubMenuItem("Travel Home", TravelHomePage()),
      SubMenuItem("Travel Nepal", TravelNepalPage()),
    ]),
    MenuItem(title: "Hotel (1 layout)", icon: Icons.hotel, items: [
      SubMenuItem("Hotel Home", HotelHomePage()),
    ]),
    MenuItem(title: "Navigation (1 layout)", icon: Icons.menu, items: [
      SubMenuItem("Hidden Menu", HiddenMenuPage()),
    ]),
    MenuItem(title: "Onboarding (1 layout)", icon: Icons.info, items: [
      SubMenuItem("Smart Wallet Onboarding", SmartWalletOnboardingPage()),
    ]),
    MenuItem(title: "Miscllaneous (5 layouts)", hasChanges: true, items: [
      SubMenuItem("Sliders", SlidersPage(),hasChanges: true),
      SubMenuItem("Alert Dialogs", DialogsPage(),hasChanges: true),
      SubMenuItem("Springy Slider", SpringySliderPage()),
      SubMenuItem("Sliver App Bar", SliverAppbarPage()),
      SubMenuItem("Loaders", LoadersPage()),
    ]),
    SubMenuItem("Grocery UI Kit (5 layouts)", GroceryHomePage())

  ];

  @override
  Widget build(BuildContext context) => Drawer(
    child: Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: Container(
          padding: EdgeInsets.only(top: 30.0),
          height: 100,
          color: Colors.deepOrange,
          child: ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.white,
              child: Image.asset('assets/icon/icon.png',width: 20,),
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
        physics: BouncingScrollPhysics(),
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
      leading: Icon(page.icon),
      title: Text(page.title, style: TextStyle(fontWeight: FontWeight.bold, color: page.hasChanges ? Colors.deepOrange: Colors.black87),),
      children: _buildSubMenus(page.items, context),
    );
  }

  List<Widget> _buildSubMenus(List<SubMenuItem> items, BuildContext context) {
    final List<Widget> subMenus = [];
    items.forEach((item)=>subMenus.add(_buildSubMenu(item, context)));
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
        title: Text(item.title, style: Theme.of(context).textTheme.subhead.copyWith(color: item.hasChanges ? Colors.deepOrange : Colors.black87),),
        onTap: () => _openPage(item.page, context),
      ),
    );
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
  final IconData icon;
  final bool hasChanges;


  MenuItem({Key key, @required this.title, this.items, this.icon=Icons.label_important, this.hasChanges=false});


}
class SubMenuItem {
  final String title;
  final Widget page;
  final IconData icon;
  final bool hasChanges;

  SubMenuItem(this.title, this.page, {this.icon = Icons.block, this.hasChanges = false});

}