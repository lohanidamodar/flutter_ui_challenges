import 'package:flutter/material.dart';
import 'package:flutter_ui_challenges/src/pages/food/avocado.dart';
import 'package:flutter_ui_challenges/src/pages/login/auth1.dart';
import 'package:flutter_ui_challenges/src/pages/quiz_app/check_answers.dart';
import 'package:flutter_ui_challenges/src/pages/quiz_app/demo_values.dart';
import 'package:flutter_ui_challenges/src/pages/quiz_app/home.dart';
import 'package:flutter_ui_challenges/src/pages/quiz_app/quiz_finished.dart';
import 'package:flutter_ui_challenges/src/pages/quiz_app/quiz_page.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_ui_challenges/src/pages/blog/article1.dart';
import 'package:flutter_ui_challenges/src/pages/blog/article2.dart';
import 'package:flutter_ui_challenges/src/pages/dialogs/dialogs.dart';
import 'package:flutter_ui_challenges/src/pages/ecommerce/cart1.dart';
import 'package:flutter_ui_challenges/src/pages/ecommerce/confirm_order1.dart';
import 'package:flutter_ui_challenges/src/pages/ecommerce/ecommerce1.dart';
import 'package:flutter_ui_challenges/src/pages/ecommerce/ecommerce2.dart';
import 'package:flutter_ui_challenges/src/pages/ecommerce/ecommerce4.dart';
import 'package:flutter_ui_challenges/src/pages/ecommerce/ecommerce_detail1.dart';
import 'package:flutter_ui_challenges/src/pages/ecommerce/ecommerce_detail2.dart';
import 'package:flutter_ui_challenges/src/pages/ecommerce/ecommerce_detail3.dart';
import 'package:flutter_ui_challenges/src/pages/food/cake.dart';
import 'package:flutter_ui_challenges/src/pages/food/fdhome.dart';
import 'package:flutter_ui_challenges/src/pages/food/recipe_details.dart';
import 'package:flutter_ui_challenges/src/pages/grocery/ghome.dart';
import 'package:flutter_ui_challenges/src/pages/hotel/hhome.dart';
import 'package:flutter_ui_challenges/src/pages/login/login1.dart';
import 'package:flutter_ui_challenges/src/pages/login/login2.dart';
import 'package:flutter_ui_challenges/src/pages/login/login3.dart';
import 'package:flutter_ui_challenges/src/pages/login/login4.dart';
import 'package:flutter_ui_challenges/src/pages/login/signup1.dart';
import 'package:flutter_ui_challenges/src/pages/misc/form_elements.dart';
import 'package:flutter_ui_challenges/src/pages/misc/loaders.dart';
import 'package:flutter_ui_challenges/src/pages/misc/sliders.dart';
import 'package:flutter_ui_challenges/src/pages/misc/sliver_appbar.dart';
import 'package:flutter_ui_challenges/src/pages/misc/springy_slider_page.dart';
import 'package:flutter_ui_challenges/src/pages/navigation/hiddenmenu.dart';
import 'package:flutter_ui_challenges/src/pages/onboarding/smart_wallet_onboarding.dart';
import 'package:flutter_ui_challenges/src/pages/profile/profile1.dart';
import 'package:flutter_ui_challenges/src/pages/profile/profile2.dart';
import 'package:flutter_ui_challenges/src/pages/profile/profile3.dart';
import 'package:flutter_ui_challenges/src/pages/profile/profile4.dart';
import 'package:flutter_ui_challenges/src/pages/travel/thome.dart';
import 'package:flutter_ui_challenges/src/pages/travel/travel_nepal.dart';

class MainMenu extends StatefulWidget {
  @override
  _MainMenuState createState() => _MainMenuState();
}

class _MainMenuState extends State<MainMenu> {
  final List<dynamic> pages = [
    MenuItem(title: "User flow", icon: Icons.person, items: [
      SubMenuItem("Auth One", AuthOnePage()),
      SubMenuItem("Login One", LoginOnePage()),
      SubMenuItem("Login Two", LoginTwoPage()),
      SubMenuItem("Login Three", LoginThreePage()),
      SubMenuItem("Login Four", LoginFourPage()),
      SubMenuItem("Signup One", SignupOnePage()),
      SubMenuItem("Profile One", ProfileOnePage()),
      SubMenuItem("Profile Two", ProfileTwoPage()),
      SubMenuItem("Profile Three", ProfileThreePage()),
      SubMenuItem("Profile Four", ProfileFourPage()),
    ]),
    MenuItem(title: "Ecommerce", icon: Icons.shopping_basket, items: [
      SubMenuItem("Ecommerce One", EcommerceOnePage()),
      SubMenuItem("Ecommerce Two", EcommerceTwoPage()),
      SubMenuItem("Ecommerce Three", SliverAppbarPage()),
      SubMenuItem("Ecommerce Four", EcommerceFourPage()),
      SubMenuItem("Confirm Order", ConfirmOrderPage()),
      SubMenuItem("Ecommerce Cart One", CartOnePage()),
      SubMenuItem("Ecommerce Details One", EcommerceDetailOnePage()),
      SubMenuItem("Ecommerce Details Two", EcommerceDetailTwoPage()),
      SubMenuItem("Ecommerce Details Three", EcommerceDetailThreePage()),
    ]),
    MenuItem(title: "Blog", icon: Icons.pages, items: [
      SubMenuItem("Article One", ArticleOnePage()),
      SubMenuItem("Article Two", ArticleTwoPage()),
    ]),
    MenuItem(title: "Food", icon: Icons.fastfood, items: [
      SubMenuItem("Fruits Add to Cart", AvocadoPage() ),
      SubMenuItem("Cake Details", CakePage()),
      SubMenuItem("Recipe Details", RecipeDetailsPage()),
      SubMenuItem("Food Delivery", FoodDeliveryHomePage()),
    ]),
    MenuItem(title: "Quiz app", icon: FontAwesomeIcons.question, items: [
      SubMenuItem("Quiz Home", QuizHomePage()),
      SubMenuItem("Quiz Page", QuizPage(questions: demoQuestions, category: categories[9],)),
      SubMenuItem("Quiz Result", QuizFinishedPage(questions: demoQuestions, answers: demoAnswers,)),
      SubMenuItem("Check Answers", CheckAnswersPage(questions: demoQuestions, answers: demoAnswers,)),
    ]),
    MenuItem(title: "Travel", icon: Icons.airplanemode_active, items: [
      SubMenuItem("Travel Home", TravelHomePage()),
      SubMenuItem("Travel Nepal", TravelNepalPage()),
    ]),
    MenuItem(title: "Hotel", icon: Icons.hotel, items: [
      SubMenuItem("Hotel Home", HotelHomePage()),
    ]),
    MenuItem(title: "Navigation", icon: Icons.menu, items: [
      SubMenuItem("Hidden Menu", HiddenMenuPage()),
    ]),
    MenuItem(title: "Onboarding", icon: Icons.info, items: [
      SubMenuItem("Smart Wallet Onboarding", SmartWalletOnboardingPage()),
    ]),
    MenuItem(title: "Miscllaneous", items: [
      SubMenuItem("Form Elements", FormElementPage()),
      SubMenuItem("Sliders", SlidersPage()),
      SubMenuItem("Alert Dialogs", DialogsPage()),
      SubMenuItem("Springy Slider", SpringySliderPage()),
      SubMenuItem("Sliver App Bar", SliverAppbarPage()),
      SubMenuItem("Loaders", LoadersPage()),
    ]),
    SubMenuItem("Grocery UI Kit", GroceryHomePage())

  ];

  Map<String,bool> viewData = <String,bool>{};

  @override
  void initState() { 
    super.initState();
    _getViewData();
  }

  _getViewData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      viewData = Map<String,bool>.from(json.decode(prefs.getString('page_view_data') != null ? prefs.getString('page_view_data') : "{}"));
    });
    return;
  }

  _writeViewData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString("page_view_data", json.encode(viewData));
  }

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
    bool hasChanges = false;
    page.items.forEach((item) {
      if(viewData[item.title] != true) {
        hasChanges = true;
        return;
      }
    });
    return ExpansionTile(
      leading: Icon(page.icon),
      title: Text("${page.title} (${page.items.length} layouts)", style: TextStyle(fontWeight: FontWeight.bold, color: hasChanges ? Colors.deepOrange: Colors.black87),),
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
        title: Text(item.title, style: Theme.of(context).textTheme.subhead.copyWith(color: viewData[item.title] != true ? Colors.deepOrange : Colors.black87),),
        onTap: () => _openPage(item.title,item.page, context),
      ),
    );
  }

  void _openPage(String title, Object page, BuildContext context) {
    setState(() {
      viewData[title] = true;
    });
    _writeViewData();
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


  MenuItem({Key key, @required this.title, this.items, this.icon=Icons.label_important});


}
class SubMenuItem {
  final String title;
  final Widget page;
  final IconData icon;

  SubMenuItem(this.title, this.page, {this.icon = Icons.block});

}