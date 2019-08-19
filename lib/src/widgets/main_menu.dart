/**
 * Author: Damodar Lohani
 * profile: https://github.com/lohanidamodar
  */

import 'package:flutter/material.dart';
import 'package:flutter_ui_challenges/src/pages/animations/anim2.dart';
import 'package:flutter_ui_challenges/src/pages/animations/anim3.dart';
import 'package:flutter_ui_challenges/src/pages/animations/animation1/animation1.dart';
import 'package:flutter_ui_challenges/src/pages/ecommerce/ecommerce_detail3.dart';
import 'package:flutter_ui_challenges/src/pages/food/avocado.dart';
import 'package:flutter_ui_challenges/src/pages/food/recipe_list.dart';
import 'package:flutter_ui_challenges/src/pages/food/recipe_single.dart';
import 'package:flutter_ui_challenges/src/pages/lists/list1.dart';
import 'package:flutter_ui_challenges/src/pages/login/auth1.dart';
import 'package:flutter_ui_challenges/src/pages/login/auth2.dart';
import 'package:flutter_ui_challenges/src/pages/login/login5.dart';
import 'package:flutter_ui_challenges/src/pages/login/login7.dart';
import 'package:flutter_ui_challenges/src/pages/login/login6.dart';
import 'package:flutter_ui_challenges/src/pages/login/signup2.dart';
import 'package:flutter_ui_challenges/src/pages/ecommerce/ecommerce5.dart';
import 'package:flutter_ui_challenges/src/pages/misc/chatui.dart';
import 'package:flutter_ui_challenges/src/pages/misc/dash1.dart';
import 'package:flutter_ui_challenges/src/pages/misc/navybar.dart';
import 'package:flutter_ui_challenges/src/pages/onboarding/intro5.dart';
import 'package:flutter_ui_challenges/src/pages/onboarding/landing1.dart';
import 'package:flutter_ui_challenges/src/pages/navigation/drawer1.dart';
import 'package:flutter_ui_challenges/src/pages/navigation/drawer2.dart';
import 'package:flutter_ui_challenges/src/pages/onboarding/intro2.dart';
import 'package:flutter_ui_challenges/src/pages/onboarding/intro3.dart';
import 'package:flutter_ui_challenges/src/pages/onboarding/intro4.dart';
import 'package:flutter_ui_challenges/src/pages/preview.dart';
import 'package:flutter_ui_challenges/src/pages/profile/profile5.dart';
import 'package:flutter_ui_challenges/src/pages/profile/profile6.dart';
import 'package:flutter_ui_challenges/src/pages/profile/profile7.dart';
import 'package:flutter_ui_challenges/src/pages/quiz_app/check_answers.dart';
import 'package:flutter_ui_challenges/src/pages/quiz_app/demo_values.dart';
import 'package:flutter_ui_challenges/src/pages/quiz_app/home.dart';
import 'package:flutter_ui_challenges/src/pages/quiz_app/quiz_finished.dart';
import 'package:flutter_ui_challenges/src/pages/quiz_app/quiz_page.dart';
import 'package:flutter_ui_challenges/src/pages/todo/todo2.dart';
import 'package:flutter_ui_challenges/src/pages/todo/todo_home1.dart';
import 'package:flutter_ui_challenges/src/pages/travel/tdestination.dart';
import 'package:flutter_ui_challenges/src/pages/travel/travel_home.dart';
import 'package:flutter_ui_challenges/src/utils/constants.dart';
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
import 'package:flutter_ui_challenges/src/pages/ecommerce/ecommerce_detail1.dart';
import 'package:flutter_ui_challenges/src/pages/ecommerce/ecommerce_detail2.dart';
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
    MenuItem(title: "Animations", icon: FontAwesomeIcons.truckMoving, items: [
      SubMenuItem("Fancy Appbar Animation", FancyAppbarAnimation(),
          path: FancyAppbarAnimation.path),
      SubMenuItem("Hero Animation", AnimationOnePage(),
          path: AnimationOnePage.path),
      SubMenuItem("Bottom Reveal Animation", AnimationTwoPage(),
          path: AnimationTwoPage.path),
    ]),
    MenuItem(title: "Profile", icon: Icons.person, items: [
      SubMenuItem("Profile One", ProfileOnePage(), path: ProfileOnePage.path),
      SubMenuItem("Profile Two", ProfileTwoPage(), path: ProfileTwoPage.path),
      SubMenuItem("Profile Three", ProfileThreePage(),
          path: ProfileThreePage.path),
      SubMenuItem("Profile Four", ProfileFourPage(),
          path: ProfileFourPage.path),
      SubMenuItem("Profile Five", ProfileFivePage(),
          path: ProfileFivePage.path),
      SubMenuItem("Profile six", ProfileSixPage(sid),
          path: ProfileSixPage.path),
      SubMenuItem("Profile Seven", ProfileSevenPage(),
          path: ProfileSevenPage.path),
    ]),
    MenuItem(title: "Autnentication", icon: Icons.lock, items: [
      SubMenuItem("Auth One", AuthOnePage(), path: AuthOnePage.path),
      SubMenuItem("Auth Two", AuthTwoPage(), path: AuthTwoPage.path),
      SubMenuItem("Login One", LoginOnePage(), path: LoginOnePage.path),
      SubMenuItem("Login Two", LoginTwoPage(), path: LoginTwoPage.path),
      SubMenuItem("Login Three", LoginThreePage(), path: LoginThreePage.path),
      SubMenuItem("Login Four", LoginFourPage(), path: LoginFourPage.path),
      SubMenuItem("Login Five", LoginFivePage(), path: LoginFivePage.path),
      SubMenuItem("Login Six", LoginSixPage(), path: LoginSixPage.path),
      SubMenuItem("Login Seven", LoginSevenPage(), path: LoginSevenPage.path),
      SubMenuItem("Signup One", SignupOnePage(), path: SignupOnePage.path),
      SubMenuItem("Signup Two", SignupTwoPage(), path: SignupTwoPage.path),
    ]),
    MenuItem(title: "Lists", icon: Icons.list, items: [
      SubMenuItem("Places List One", PlaceList1(), path: PlaceList1.path),
    ]),
    MenuItem(title: "Ecommerce", icon: Icons.shopping_basket, items: [
      SubMenuItem("Ecommerce One", EcommerceOnePage(),
          path: EcommerceOnePage.path),
      SubMenuItem("Ecommerce Two", EcommerceTwoPage(),
          path: EcommerceTwoPage.path),
      SubMenuItem("Ecommerce Three", SliverAppbarPage(),
          path: SliverAppbarPage.path),
      SubMenuItem("Ecommerce Grocery", EcommerceFivePage(),
          path: EcommerceFivePage.path),
      // SubMenuItem("Ecommerce Four", EcommerceFourPage(),
      //     path: EcommerceFourPage.path),
      SubMenuItem("Confirm Order", ConfirmOrderPage(),
          path: ConfirmOrderPage.path),
      SubMenuItem("Ecommerce Cart One", CartOnePage(), path: CartOnePage.path),
      SubMenuItem("Ecommerce Details One", EcommerceDetailOnePage(),
          path: EcommerceDetailOnePage.path),
      SubMenuItem("Ecommerce Details Two", EcommerceDetailTwoPage(),
          path: EcommerceDetailTwoPage.path),
      SubMenuItem("Rounded Details Page", EcommerceDetailThreePage(),
          path: EcommerceDetailThreePage.path),
    ]),
    MenuItem(title: "Blog", icon: Icons.pages, items: [
      SubMenuItem("Article One", ArticleOnePage(), path: ArticleOnePage.path),
      SubMenuItem("Article Two", ArticleTwoPage(), path: ArticleTwoPage.path),
    ]),
    MenuItem(title: "Food", icon: Icons.fastfood, items: [
      SubMenuItem("Fruits Add to Cart", AvocadoPage(), path: AvocadoPage.path),
      SubMenuItem("Cake Details", CakePage(), path: CakePage.path),
      SubMenuItem("Recipe List", RecipeListPage(), path: RecipeListPage.path),
      SubMenuItem("Recipe Single", RecipeSinglePage(),
          path: RecipeSinglePage.path),
      SubMenuItem("Recipe Details", RecipeDetailsPage(),
          path: RecipeDetailsPage.path),
      SubMenuItem("Food Delivery", FoodDeliveryHomePage(),
          path: FoodDeliveryHomePage.path),
    ]),
    MenuItem(title: "Quiz app", icon: FontAwesomeIcons.question, items: [
      SubMenuItem("Quiz Home", QuizHomePage(), path: QuizHomePage.path),
      SubMenuItem(
          "Quiz Page",
          QuizPage(
            questions: demoQuestions,
            category: categories[9],
          ),
          path: QuizPage.path),
      SubMenuItem(
          "Quiz Result",
          QuizFinishedPage(
            questions: demoQuestions,
            answers: demoAnswers,
          ),
          path: QuizFinishedPage.path),
      SubMenuItem(
          "Check Answers",
          CheckAnswersPage(
            questions: demoQuestions,
            answers: demoAnswers,
          ),
          path: CheckAnswersPage.path),
    ]),
    MenuItem(title: "Todo", icon: FontAwesomeIcons.tasks, items: [
      SubMenuItem("Todo Week View", TodoTwoPage(), path: TodoTwoPage.path),
      SubMenuItem("Todo Home One", TodoHomeOnePage(),
          path: TodoHomeOnePage.path),
    ]),
    MenuItem(title: "Travel", icon: Icons.airplanemode_active, items: [
      SubMenuItem("Travel Home", TravelHomePage(), path: TravelHomePage.path),
      SubMenuItem("Travel Nepal", TravelNepalPage(),
          path: TravelNepalPage.path),
      SubMenuItem("Travel Destination Detail", DestinationPage(),
          path: DestinationPage.path),
      SubMenuItem("Travel Home2", TravelHome(), path: TravelHome.path),
    ]),
    MenuItem(title: "Hotel", icon: Icons.hotel, items: [
      SubMenuItem("Hotel Home", HotelHomePage(), path: HotelHomePage.path),
    ]),
    MenuItem(title: "Navigation", icon: Icons.menu, items: [
      SubMenuItem("Hidden Menu", HiddenMenuPage(), path: HiddenMenuPage.path),
      SubMenuItem("Dark Drawer Menu", DarkDrawerPage(),
          path: DarkDrawerPage.path),
      SubMenuItem("Light Drawer Menu", LightDrawerPage(),
          path: LightDrawerPage.path),
      SubMenuItem("Fancy Bottom Navigation ", FancyBottomBarPage(),
          path: FancyBottomBarPage.path),
    ]),
    MenuItem(title: "Onboarding", icon: Icons.info, items: [
      SubMenuItem("Landing Page", LandingOnePage(), path: LandingOnePage.path),
      SubMenuItem("Onboarding 4", IntroFourPage(), path: IntroFourPage.path),
      SubMenuItem("Smart Wallet Onboarding", SmartWalletOnboardingPage(),
          path: SmartWalletOnboardingPage.path),
      SubMenuItem("Onboarding 2", IntroTwoPage(), path: IntroTwoPage.path),
      SubMenuItem("Onboarding 3", IntroThreePage(), path: IntroThreePage.path),
      SubMenuItem("Onboarding 5", Intro5(), path: Intro5.path),
    ]),
    MenuItem(title: "Miscllaneous", items: [
      SubMenuItem("Dashboard One", DashboardOnePage(),
          path: DashboardOnePage.path),
      SubMenuItem("Form Elements", FormElementPage(),
          path: FormElementPage.path),
      SubMenuItem("Sliders", SlidersPage(), path: SlidersPage.path),
      SubMenuItem("Alert Dialogs", DialogsPage(), path: DialogsPage.path),
      SubMenuItem("Springy Slider", SpringySliderPage(),
          path: SpringySliderPage.path),
      SubMenuItem("Sliver App Bar", SliverAppbarPage(),
          path: SliverAppbarPage.path),
      SubMenuItem("Loaders", LoadersPage(), path: LoadersPage.path),
      SubMenuItem("ChatUi", ChatUi(), path: ChatUi.path),
    ]),
    SubMenuItem("Grocery UI Kit", GroceryHomePage(), path: GroceryHomePage.path)
  ];

  Map<String, bool> viewData = <String, bool>{};
  @override
  void initState() {
    super.initState();
    _getViewData();
  }

  _getViewData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      viewData = Map<String, bool>.from(json.decode(
          prefs.getString('page_view_data') != null
              ? prefs.getString('page_view_data')
              : "{}"));
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
                trailing: IconButton(
                  color: Colors.white,
                  icon: Icon(FontAwesomeIcons.infoCircle),
                  onPressed: () {
                    Navigator.pushNamed(context, "about");
                  },
                ),
              ),
            ),
          ),
          body: ListView.builder(
            physics: BouncingScrollPhysics(),
            itemBuilder: (BuildContext context, int index) {
              dynamic page = pages[index];
              return page is MenuItem
                  ? _buildExpandableMenu(page, context)
                  : _buildSubMenu(page, context);
            },
            itemCount: pages.length,
          ),
        ),
      );

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
        trailing: IconButton(
          icon: Icon(Icons.code),
          onPressed: () => _openPage(context, item, OpenMode.CODE),
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

class MenuItem {
  final String title;
  final List<SubMenuItem> items;
  final IconData icon;

  MenuItem(
      {Key key,
      @required this.title,
      this.items,
      this.icon = Icons.label_important});
}

class SubMenuItem {
  final String title;
  final Widget page;
  final IconData icon;
  final String path;

  SubMenuItem(this.title, this.page, {this.icon = Icons.block, this.path});
}

enum OpenMode { CODE, PREVIEW }
