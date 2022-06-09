import 'package:flutter/material.dart';
import 'package:flutter_ui_challenges/core/data/models/menu.dart' as m;
import 'package:flutter_ui_challenges/src/furniture_app/furniture_app.dart';
import 'package:flutter_ui_challenges/src/khalti_clone/main.dart';
import 'package:flutter_ui_challenges/src/nic_asia_clone/nic_asia_app.dart';
import 'package:flutter_ui_challenges/src/pages/animations/anim4.dart';
import 'package:flutter_ui_challenges/src/pages/animations/anim5.dart';
import 'package:flutter_ui_challenges/src/pages/lists/grid_view.dart';
import 'package:flutter_ui_challenges/src/pages/bike/bike_details.dart';
import 'package:flutter_ui_challenges/src/pages/bike/bikeshop_ui.dart';
import 'package:flutter_ui_challenges/src/pages/bike/home_page.dart';
import 'package:flutter_ui_challenges/src/pages/blog/news1.dart';
import 'package:flutter_ui_challenges/src/pages/blog/sports_news1.dart';
import 'package:flutter_ui_challenges/src/pages/ecommerce/cart2.dart';
import 'package:flutter_ui_challenges/src/pages/ecommerce/checkout1.dart';
import 'package:flutter_ui_challenges/src/pages/ecommerce/ecommerce4.dart';
import 'package:flutter_ui_challenges/src/pages/food/food_checkout.dart';
import 'package:flutter_ui_challenges/src/pages/hotel/hotelbooking.dart';
import 'package:flutter_ui_challenges/src/pages/invitation/inauth.dart';
import 'package:flutter_ui_challenges/src/pages/invitation/inlanding.dart';
import 'package:flutter_ui_challenges/src/pages/invitation/invitation1.dart';
import 'package:flutter_ui_challenges/src/pages/login/signup3.dart';
import 'package:flutter_ui_challenges/src/pages/login/auth3.dart';
import 'package:flutter_ui_challenges/src/pages/login/login10.dart';
import 'package:flutter_ui_challenges/src/pages/login/login11.dart';
import 'package:flutter_ui_challenges/src/pages/login/login12.dart';
import 'package:flutter_ui_challenges/src/pages/login/login14.dart';
import 'package:flutter_ui_challenges/src/pages/login/login13.dart';
import 'package:flutter_ui_challenges/src/pages/login/login8.dart';
import 'package:flutter_ui_challenges/src/pages/login/login9.dart';
import 'package:flutter_ui_challenges/src/pages/misc/discovery_page.dart';
import 'package:flutter_ui_challenges/src/pages/misc/bottomsheet.dart';
import 'package:flutter_ui_challenges/src/pages/food/cake.dart';
import 'package:flutter_ui_challenges/src/pages/misc/crop.dart';
import 'package:flutter_ui_challenges/src/pages/misc/gallery1.dart';
import 'package:flutter_ui_challenges/src/pages/misc/image_popup.dart';
import 'package:flutter_ui_challenges/src/pages/misc/musicplayer.dart';
import 'package:flutter_ui_challenges/src/pages/misc/musicplayer2.dart';
import 'package:flutter_ui_challenges/src/pages/misc/otp.dart';
import 'package:flutter_ui_challenges/src/pages/misc/whatsapp.dart';
import 'package:flutter_ui_challenges/src/pages/misc/youtube_homepage.dart';
import 'package:flutter_ui_challenges/src/pages/navigation/automultiscreen.dart';
import 'package:flutter_ui_challenges/src/pages/navigation/menu1.dart';
import 'package:flutter_ui_challenges/src/pages/onboarding/intro6.dart';
import 'package:flutter_ui_challenges/src/pages/profile/profile10.dart';
import 'package:flutter_ui_challenges/src/pages/profile/profile11.dart';
import 'package:flutter_ui_challenges/src/pages/profile/profile12.dart';
import 'package:flutter_ui_challenges/src/pages/profile/profile8.dart';
import 'package:flutter_ui_challenges/src/pages/profile/profile9.dart';
import 'package:flutter_ui_challenges/src/pages/quotes/quotes1.dart';
import 'package:flutter_ui_challenges/src/pages/quotes/quotes2.dart';
import 'package:flutter_ui_challenges/src/pages/settings/profilesettings.dart';
import 'package:flutter_ui_challenges/src/pages/settings/settings1.dart';
import 'package:flutter_ui_challenges/src/pages/settings/settings2.dart';
import 'package:flutter_ui_challenges/src/pages/settings/settings3.dart';
import 'package:flutter_ui_challenges/src/pages/settings/settings4.dart';
import 'package:flutter_ui_challenges/src/pages/todo/todo_home3.dart';
import 'package:flutter_ui_challenges/src/plant_app/main.dart';
import 'package:flutter_ui_challenges/src/travelui_clone/ui/main.dart';
import 'package:flutter_ui_challenges/src/pages/travel/travelstory.dart';
import 'package:flutter_ui_challenges/src/walletapp_ui/main.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_ui_challenges/src/pages/todo/todo2.dart';
import 'package:flutter_ui_challenges/src/pages/dashboard/dash3.dart';
import 'package:flutter_ui_challenges/src/pages/dashboard/dash2.dart';
import 'package:flutter_ui_challenges/src/pages/dashboard/dash1.dart';
import 'package:flutter_ui_challenges/src/pages/misc/chat2.dart';
import 'package:flutter_ui_challenges/src/pages/login/auth1.dart';
import 'package:flutter_ui_challenges/src/pages/lists/list2.dart';
import 'package:flutter_ui_challenges/src/pages/misc/chatui.dart';
import 'package:flutter_ui_challenges/src/pages/lists/list1.dart';
import 'package:flutter_ui_challenges/src/pages/hotel/hhome.dart';
import 'package:flutter_ui_challenges/src/pages/food/fdhome.dart';
import 'package:flutter_ui_challenges/src/pages/blog/bhome1.dart';
import 'package:flutter_ui_challenges/src/pages/login/auth2.dart';
import 'package:flutter_ui_challenges/src/pages/misc/sliders.dart';
import 'package:flutter_ui_challenges/src/pages/misc/navybar.dart';
import 'package:flutter_ui_challenges/src/pages/login/login5.dart';
import 'package:flutter_ui_challenges/src/pages/login/login4.dart';
import 'package:flutter_ui_challenges/src/pages/login/login3.dart';
import 'package:flutter_ui_challenges/src/pages/login/login2.dart';
import 'package:flutter_ui_challenges/src/pages/login/login1.dart';
import 'package:flutter_ui_challenges/src/pages/travel/thome.dart';
import 'package:flutter_ui_challenges/src/pages/food/avocado.dart';
import 'package:flutter_ui_challenges/src/pages/login/login7.dart';
import 'package:flutter_ui_challenges/src/pages/login/login6.dart';
import 'package:flutter_ui_challenges/src/pages/misc/loaders.dart';
import 'package:flutter_ui_challenges/src/pages/grocery/ghome.dart';
import 'package:flutter_ui_challenges/src/pages/login/signup2.dart';
import 'package:flutter_ui_challenges/src/pages/blog/article2.dart';
import 'package:flutter_ui_challenges/src/pages/blog/article1.dart';
import 'package:flutter_ui_challenges/src/pages/hotel/details.dart';
import 'package:flutter_ui_challenges/src/pages/login/signup1.dart';
import 'package:flutter_ui_challenges/src/pages/quiz_app/home.dart';
import 'package:flutter_ui_challenges/src/pages/dialogs/dialogs.dart';
import 'package:flutter_ui_challenges/src/pages/todo/todo_home2.dart';
import 'package:flutter_ui_challenges/src/pages/todo/todo_home1.dart';
import 'package:flutter_ui_challenges/src/pages/ecommerce/cart1.dart';
import 'package:flutter_ui_challenges/src/pages/ecommerce/cart3.dart';
import 'package:flutter_ui_challenges/src/pages/profile/profile3.dart';
import 'package:flutter_ui_challenges/src/pages/profile/profile2.dart';
import 'package:flutter_ui_challenges/src/pages/profile/profile1.dart';
import 'package:flutter_ui_challenges/src/pages/profile/profile7.dart';
import 'package:flutter_ui_challenges/src/pages/profile/profile6.dart';
import 'package:flutter_ui_challenges/src/pages/profile/profile5.dart';
import 'package:flutter_ui_challenges/src/pages/profile/profile4.dart';
import 'package:flutter_ui_challenges/src/pages/food/recipe_list.dart';
import 'package:flutter_ui_challenges/src/pages/animations/anim2.dart';
import 'package:flutter_ui_challenges/src/pages/animations/anim3.dart';
import 'package:flutter_ui_challenges/src/pages/onboarding/intro2.dart';
import 'package:flutter_ui_challenges/src/pages/onboarding/intro3.dart';
import 'package:flutter_ui_challenges/src/pages/onboarding/intro5.dart';
import 'package:flutter_ui_challenges/src/pages/onboarding/intro4.dart';
import 'package:flutter_ui_challenges/src/pages/navigation/drawer2.dart';
import 'package:flutter_ui_challenges/src/pages/quiz_app/quiz_page.dart';
import 'package:flutter_ui_challenges/src/pages/misc/sliver_appbar.dart';
import 'package:flutter_ui_challenges/src/pages/food/recipe_single.dart';
import 'package:flutter_ui_challenges/src/pages/travel/travel_home.dart';
import 'package:flutter_ui_challenges/src/pages/misc/form_elements.dart';
import 'package:flutter_ui_challenges/src/pages/navigation/drawer1.dart';
import 'package:flutter_ui_challenges/src/pages/travel/travel_nepal.dart';
import 'package:flutter_ui_challenges/src/pages/food/recipe_details.dart';
import 'package:flutter_ui_challenges/src/pages/travel/tdestination.dart';
import 'package:flutter_ui_challenges/src/pages/onboarding/landing1.dart';
import 'package:flutter_ui_challenges/src/pages/ecommerce/ecommerce2.dart';
import 'package:flutter_ui_challenges/src/pages/ecommerce/ecommerce5.dart';
import 'package:flutter_ui_challenges/src/pages/ecommerce/ecommerce1.dart';
import 'package:flutter_ui_challenges/src/pages/quiz_app/demo_values.dart';
import 'package:flutter_ui_challenges/src/pages/navigation/hiddenmenu.dart';
import 'package:flutter_ui_challenges/src/pages/quiz_app/check_answers.dart';
import 'package:flutter_ui_challenges/src/pages/quiz_app/quiz_finished.dart';
import 'package:flutter_ui_challenges/src/pages/misc/springy_slider_page.dart';
import 'package:flutter_ui_challenges/src/pages/ecommerce/confirm_order1.dart';
import 'package:flutter_ui_challenges/src/pages/ecommerce/ecommerce_detail3.dart';
import 'package:flutter_ui_challenges/src/pages/ecommerce/ecommerce_detail2.dart';
import 'package:flutter_ui_challenges/src/pages/ecommerce/ecommerce_detail1.dart';
import 'package:flutter_ui_challenges/src/pages/animations/animation1/animation1.dart';
import 'package:flutter_ui_challenges/src/pages/onboarding/smart_wallet_onboarding.dart';

final List<dynamic> pages = [
  m.MenuItem(title: "Animations", icon: FontAwesomeIcons.truckMoving, items: [
    m.SubMenuItem("Fancy Appbar Animation", FancyAppbarAnimation(),
        path: FancyAppbarAnimation.path),
    m.SubMenuItem("Hero Animation", AnimationOnePage(),
        path: AnimationOnePage.path),
    m.SubMenuItem("Bottom Reveal Animation", AnimationTwoPage(),
        path: AnimationTwoPage.path),
    m.SubMenuItem("Animated Bottom Bar", AnimatedBottomBar(),
        path: AnimatedBottomBar.path),
    m.SubMenuItem("Animated List One", AnimatedListOnePage(),
        path: AnimatedListOnePage.path),
  ]),
  m.MenuItem(title: "Profile", icon: Icons.person, items: [
    m.SubMenuItem("Profile 12", UserProfilePage(),
        path: UserProfilePage.path),
    m.SubMenuItem("Profile 11", ProfileElevenPage(),
        path: ProfileElevenPage.path),
    m.SubMenuItem("Profile 10", ProfileTenPage(), path: ProfileTenPage.path),
    m.SubMenuItem("Profile Nine", ProfileNinePage(), path: ProfileNinePage.path),
    m.SubMenuItem("Profile One", ProfileOnePage(), path: ProfileOnePage.path),
    m.SubMenuItem("Profile Two", ProfileTwoPage(), path: ProfileTwoPage.path),
    m.SubMenuItem("Profile Three", ProfileThreePage(),
        path: ProfileThreePage.path),
    m.SubMenuItem("Profile Four", ProfileFourPage(), path: ProfileFourPage.path),
    m.SubMenuItem("Profile Five", ProfileFivePage(), path: ProfileFivePage.path),
    m.SubMenuItem("Profile Six", ProfileSixPage(sid), path: ProfileSixPage.path),
    m.SubMenuItem("Profile Seven", ProfileSevenPage(),
        path: ProfileSevenPage.path),
    m.SubMenuItem("Profile Eight", ProfileEightPage(),
        path: ProfileEightPage.path),
  ]),
  m.MenuItem(title: "Authentication", icon: Icons.lock, items: [
    m.SubMenuItem("Login 14", LoginPageFourteen(), path: LoginPageFourteen.path),
    m.SubMenuItem("Login 13", LoginPageThirdteen(),
        path: LoginPageThirdteen.path),
    m.SubMenuItem("Login 12", LoginTwelvePage(), path: LoginTwelvePage.path),
    m.SubMenuItem("Login 11", LoginElevenPage(), path: LoginElevenPage.path),
    m.SubMenuItem("Login 10", LoginTenPage(), path: LoginTenPage.path),
    m.SubMenuItem("Auth Three", AuthThreePage(), path: AuthThreePage.path),
    m.SubMenuItem("Auth One", AuthOnePage(), path: AuthOnePage.path),
    m.SubMenuItem("Auth Two", AuthTwoPage(), path: AuthTwoPage.path),
    m.SubMenuItem("Login One", LoginOnePage(), path: LoginOnePage.path),
    m.SubMenuItem("Login Two", LoginTwoPage(), path: LoginTwoPage.path),
    m.SubMenuItem("Login Three", LoginThreePage(), path: LoginThreePage.path),
    m.SubMenuItem("Login Four", LoginFourPage(), path: LoginFourPage.path),
    m.SubMenuItem("Login Five", LoginFivePage(), path: LoginFivePage.path),
    m.SubMenuItem("Login Six", LoginSixPage(), path: LoginSixPage.path),
    m.SubMenuItem("Login Seven", LoginSevenPage(), path: LoginSevenPage.path),
    m.SubMenuItem("Login Eight", LoginEightPage(), path: LoginEightPage.path),
    m.SubMenuItem("Login Nine", LoginNinePage(), path: LoginNinePage.path),
    m.SubMenuItem("Signup One", SignupOnePage(), path: SignupOnePage.path),
    m.SubMenuItem("Signup Two", SignupTwoPage(), path: SignupTwoPage.path),
    m.SubMenuItem("Signup Three", SignupThreePage(), path: SignupThreePage.path),
  ]),
  m.MenuItem(title: "Settings", icon: Icons.dashboard, items: [
    m.SubMenuItem("Settings One", SettingsOnePage(), path: SettingsOnePage.path),
    m.SubMenuItem("Settings Two", SettingsTwoPage(), path: SettingsTwoPage.path),
    m.SubMenuItem("Settings Three", SettingsThreePage(),
        path: SettingsThreePage.path),
   m.SubMenuItem("Profile Setting", ProfileSettingsPage(), path: ProfileSettingsPage.path),
    m.SubMenuItem("Settings Four", SettingsFourPage(), path: SettingsFourPage.path),
  ]),
  m.MenuItem(
    title: "Quotes App",
    icon: FontAwesomeIcons.quoteLeft,
    items: [
      m.SubMenuItem("Quote Page Two", QuotesPageTwo(), path: QuotesPageTwo.path),
      m.SubMenuItem("Quote Page One", QuotesOnePage(), path: QuotesOnePage.path),
    ],
  ),
  m.MenuItem(title: "Motorbike App", icon: Icons.list, items: [
    m.SubMenuItem("MoterBike Shop Page", MoterBikeShopPage(), path: MoterBikeShopPage.path),
    m.SubMenuItem("Home Page", BikeHomePage(), path: BikeHomePage.path),
    m.SubMenuItem("Bike Details Page", BikeDetailsPage(),
        path: BikeDetailsPage.path),
  ]),
  m.MenuItem(title: "Lists", icon: Icons.list, items: [
    m.SubMenuItem("Grid View", GridViewAnimationPage(),
        path: GridViewAnimationPage.path),
    m.SubMenuItem("Places List One", PlaceList1(), path: PlaceList1.path),
    m.SubMenuItem("List Two", SchoolList(), path: SchoolList.path),
  ]),
  m.MenuItem(title: "Invitation", icon: Icons.list, items: [
    m.SubMenuItem("Auth Page", InvitationAuthPage(),
        path: InvitationAuthPage.path),
    m.SubMenuItem("Landing Page", InvitationLandingPage(),
        path: InvitationLandingPage.path),
    m.SubMenuItem("Details Page", InvitationPageOne(),
        path: InvitationPageOne.path),
  ]),
  m.MenuItem(title: "Ecommerce", icon: Icons.shopping_basket, items: [
    m.SubMenuItem("Cart Three", CartThreePage(), path: CartThreePage.path),
    m.SubMenuItem("Cart Two", CartTwoPage(), path: CartTwoPage.path),
    m.SubMenuItem("Ecommerce Four", EcommerceFourPage(),
        path: EcommerceFourPage.path),
    m.SubMenuItem("Checkout One", CheckoutOnePage(), path: CheckoutOnePage.path),
    m.SubMenuItem("Ecommerce One", EcommerceOnePage(),
        path: EcommerceOnePage.path),
    m.SubMenuItem("Ecommerce Two", EcommerceTwoPage(),
        path: EcommerceTwoPage.path),
    m.SubMenuItem("Ecommerce Three", SliverAppbarPage(),
        path: SliverAppbarPage.path),
    m.SubMenuItem("Ecommerce Grocery", EcommerceFivePage(),
        path: EcommerceFivePage.path),
    m.SubMenuItem("Confirm Order", ConfirmOrderPage(),
        path: ConfirmOrderPage.path),
    m.SubMenuItem("Ecommerce Cart One", CartOnePage(), path: CartOnePage.path),
    m.SubMenuItem("Ecommerce Details One", EcommerceDetailOnePage(),
        path: EcommerceDetailOnePage.path),
    m.SubMenuItem("Ecommerce Details Two", EcommerceDetailTwoPage(),
        path: EcommerceDetailTwoPage.path),
    m.SubMenuItem("Rounded Details Page", EcommerceDetailThreePage(),
        path: EcommerceDetailThreePage.path),
  ]),
  m.MenuItem(title: "Blog", icon: Icons.pages, items: [
    m.SubMenuItem("News Home", NewsHomeOnePage(), path: NewsHomeOnePage.path),
    m.SubMenuItem("Sports News Home", SportsNewsOnePage(),
        path: SportsNewsOnePage.path),
    m.SubMenuItem("Blog Home One", BlogHomeOnePage(), path: BlogHomeOnePage.path),
    m.SubMenuItem("Article One", ArticleOnePage(), path: ArticleOnePage.path),
    m.SubMenuItem("Article Two", ArticleTwoPage(), path: ArticleTwoPage.path),
  ]),
  m.MenuItem(title: "Dashboard", icon: Icons.dashboard, items: [
    m.SubMenuItem("Dashboard One", DashboardOnePage(),
        path: DashboardOnePage.path),
    m.SubMenuItem("Dashboard Two", DashboardTwoPage(),
        path: DashboardTwoPage.path),
    m.SubMenuItem("Dashboard Three", DashboardThreePage(),
        path: DashboardThreePage.path),
  ]),
  m.MenuItem(title: "Food", icon: Icons.fastfood, items: [
    m.SubMenuItem("Food Order Checkout", FoodCheckoutOnePage(),
        path: FoodCheckoutOnePage.path),
    m.SubMenuItem("Fruits Add to Cart", AvocadoPage(), path: AvocadoPage.path),
    m.SubMenuItem("Cake Details", CakePage(), path: CakePage.path),
    m.SubMenuItem("Recipe List", RecipeListPage(), path: RecipeListPage.path),
    m.SubMenuItem("Recipe Single", RecipeSinglePage(),
        path: RecipeSinglePage.path),
    m.SubMenuItem("Recipe Details", RecipeDetailsPage(),
        path: RecipeDetailsPage.path),
    m.SubMenuItem("Food Delivery", FoodDeliveryHomePage(),
        path: FoodDeliveryHomePage.path),
  ]),
  m.MenuItem(title: "Quiz app", icon: FontAwesomeIcons.question, items: [
    m.SubMenuItem("Quiz Home", QuizHomePage(), path: QuizHomePage.path),
    m.SubMenuItem(
        "Quiz Page",
        QuizPage(
          questions: demoQuestions,
          category: categories[9],
        ),
        path: QuizPage.path),
    m.SubMenuItem(
        "Quiz Result",
        QuizFinishedPage(
          questions: demoQuestions,
          answers: demoAnswers,
        ),
        path: QuizFinishedPage.path),
    m.SubMenuItem(
        "Check Answers",
        CheckAnswersPage(
          questions: demoQuestions,
          answers: demoAnswers,
        ),
        path: CheckAnswersPage.path),
  ]),
  m.MenuItem(title: "Todo", icon: FontAwesomeIcons.tasks, items: [
    m.SubMenuItem("Todo Home Three", TodoHomeThreePage(),
        path: TodoHomeThreePage.path),
    m.SubMenuItem("Todo Week View", TodoTwoPage(), path: TodoTwoPage.path),
    m.SubMenuItem("Todo Home One", TodoHomeOnePage(), path: TodoHomeOnePage.path),
    m.SubMenuItem("Todo Home Two", TodoHomeTwoPage(), path: TodoHomeTwoPage.path),
  ]),
  m.MenuItem(title: "Travel", icon: Icons.airplanemode_active, items: [
    m.SubMenuItem("Travel Home", TravelHomePage(), path: TravelHomePage.path),
    m.SubMenuItem("Travel Nepal", TravelNepalPage(), path: TravelNepalPage.path),
    m.SubMenuItem("Travel Destination Detail", DestinationPage(),
        path: DestinationPage.path),
    m.SubMenuItem("Travel Home2", TravelHome(), path: TravelHome.path),
    m.SubMenuItem("Travel Stroy", TravelStoryPage(), path: TravelStoryPage.path),
  ]),
  m.MenuItem(title: "Hotel", icon: Icons.hotel, items: [
    m.SubMenuItem("Hotel Booking Homepage", HotelBookingPage(),
        path: HotelBookingPage.path),
    m.SubMenuItem("Hotel Home", HotelHomePage(), path: HotelHomePage.path),
    m.SubMenuItem("Room Details", HotelDetailsPage(),
        path: HotelDetailsPage.path),
  ]),
  m.MenuItem(title: "Navigation", icon: Icons.menu, items: [
    m.SubMenuItem("Menu One", MenuOnePage(), path: MenuOnePage.path),
    m.SubMenuItem("Hidden drawer nav", HiddenDrawerNav(),
        path: HiddenDrawerNav.path),
    m.SubMenuItem("Hidden Menu", HiddenMenuPage(), path: HiddenMenuPage.path),
    m.SubMenuItem("Dark Drawer Menu", DarkDrawerPage(),
        path: DarkDrawerPage.path),
    m.SubMenuItem("Light Drawer Menu", LightDrawerPage(),
        path: LightDrawerPage.path),
    m.SubMenuItem("Fancy Bottom Navigation ", FancyBottomBarPage(),
        path: FancyBottomBarPage.path),
  ]),
  m.MenuItem(title: "Onboarding", icon: Icons.info, items: [
    m.SubMenuItem("Onboarding 6", IntroSixPage(), path: IntroSixPage.path),
    m.SubMenuItem("Landing Page", LandingOnePage(), path: LandingOnePage.path),
    m.SubMenuItem("Onboarding 4", IntroFourPage(), path: IntroFourPage.path),
    m.SubMenuItem("Smart Wallet Onboarding", SmartWalletOnboardingPage(),
        path: SmartWalletOnboardingPage.path),
    m.SubMenuItem("Onboarding 2", IntroTwoPage(), path: IntroTwoPage.path),
    m.SubMenuItem("Onboarding 3", IntroThreePage(), path: IntroThreePage.path),
    m.SubMenuItem("Onboarding 5", Intro5(), path: Intro5.path),
  ]),
  m.MenuItem(
      title: "UI Kits (Clones)",
      items: [
        m.SubMenuItem('Khalti App', KhaltiApp(), path: KhaltiApp.path),
        m.SubMenuItem("Grocery UI Kit", GroceryHomePage(),
            path: GroceryHomePage.path),
        m.SubMenuItem("Bank App Clone", NicAsiaApp(), path: NicAsiaApp.path),
        m.SubMenuItem("Furniture App", FurnitureApp(), path: FurnitureApp.path),
        m.SubMenuItem("Plant App", PlantAppPage(), path: PlantAppPage.path),
        m.SubMenuItem('Travel Ui Clone', TravelUiClone(), path: TravelUiClone.path),
        m.SubMenuItem("Wallet App Clone", WalletAppClone(), path: WalletAppClone.path),
      ],
      icon: Icons.account_balance_wallet),
  m.MenuItem(title: "Miscellaneous", items: [
    m.SubMenuItem("Youtube HomePage", YoutubeHomePage(), path: YoutubeHomePage.path),
    m.SubMenuItem("OTP Page", OTPPage(), path: OTPPage.path),
    m.SubMenuItem('Image/Widget Crop', CropPage(),
        path: CropPage.path, icon: Icons.crop),
    m.SubMenuItem("Gallery One", GalleryPageOne(), path: GalleryPageOne.path),
    m.SubMenuItem("Music Player Two", MusicPlayerTwoPage(),
        path: MusicPlayerTwoPage.path),
    m.SubMenuItem("Image Popup", ImagePopupPage(), path: ImagePopupPage.path),
    m.SubMenuItem("Chat Messaages", ChatTwoPage(), path: ChatTwoPage.path),
    m.SubMenuItem("Form Elements", FormElementPage(), path: FormElementPage.path),
    m.SubMenuItem("Sliders", SlidersPage(), path: SlidersPage.path),
    m.SubMenuItem("Alert Dialogs", DialogsPage(), path: DialogsPage.path),
    m.SubMenuItem("Springy Slider", SpringySliderPage(),
        path: SpringySliderPage.path),
    m.SubMenuItem("Sliver App Bar", SliverAppbarPage(),
        path: SliverAppbarPage.path),
    m.SubMenuItem("Loaders", LoadersPage(), path: LoadersPage.path),
    m.SubMenuItem("ChatUi", ChatUi(), path: ChatUi.path),
    m.SubMenuItem('Bottomsheet', BottomSheetAwesome(),
        path: BottomSheetAwesome.path),
    m.SubMenuItem('Discovery Page', DiscoveryPage(), path: DiscoveryPage.path),
    m.SubMenuItem('Music player', MusicPlayer(), path: MusicPlayer.path),
    m.SubMenuItem('Whatsapp Clone', WhatsAppClone(), path: WhatsAppClone.path),
  ]),
];

m.SubMenuItem? getItemForKey(String key) {
  m.SubMenuItem? item;
  List<dynamic> pag = List<dynamic>.from(pages);
  pag.forEach((page) {
    if (page is m.SubMenuItem && page.title == key) {
      item = page;
    } else if (page is m.MenuItem) {
      page.items!.forEach((sub) {
        if (sub.title == key) item = sub;
      });
    }
  });
  return item;
}
