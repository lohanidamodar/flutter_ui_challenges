import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';

import 'furniture_app/furniture_app.dart';
import 'khalti_clone/main.dart';
import 'nic_asia_clone/nic_asia_app.dart';
import 'pages/animations/anim4.dart';
import 'pages/animations/anim5.dart';
import 'pages/bike/bike_details.dart';
import 'pages/bike/bikeshop_ui.dart';
import 'pages/bike/home_page.dart';
import 'pages/blog/news1.dart';
import 'pages/blog/sports_news1.dart';
import 'pages/ecommerce/cart2.dart';
import 'pages/ecommerce/cart3.dart';
import 'pages/ecommerce/checkout1.dart';
import 'pages/ecommerce/ecommerce4.dart';
import 'pages/food/food_checkout.dart';
import 'pages/hotel/hotelbooking.dart';
import 'pages/invitation/inauth.dart';
import 'pages/invitation/inlanding.dart';
import 'pages/invitation/invitation1.dart';
import 'pages/lists/grid_view.dart';
import 'pages/login/auth3.dart';
import 'pages/login/login11.dart';
import 'pages/login/login12.dart';
import 'pages/login/login13.dart';
import 'pages/login/login14.dart';
import 'pages/login/login8.dart';
import 'pages/login/login9.dart';
import 'pages/login/signup3.dart';
import 'pages/misc/bottomsheet.dart';
import 'pages/food/cake.dart';
import 'pages/misc/crop.dart';
import 'pages/misc/discovery_page.dart';
import 'pages/misc/gallery1.dart';
import 'pages/misc/image_popup.dart';
import 'pages/misc/musicplayer.dart';
import 'pages/misc/musicplayer2.dart';
import 'pages/misc/whatsapp.dart';
import 'pages/misc/youtube_homepage.dart';
import 'pages/navigation/menu1.dart';
import 'pages/onboarding/intro6.dart';
import 'pages/profile/profile11.dart';
import 'pages/profile/profile12.dart';
import 'pages/profile/profile8.dart';
import 'pages/profile/profile9.dart';
import 'pages/quotes/quotes1.dart';
import 'pages/quotes/quotes2.dart';
import 'pages/settings/profilesettings.dart';
import 'pages/settings/settings1.dart';
import 'pages/settings/settings2.dart';
import 'pages/settings/settings3.dart';
import 'pages/settings/settings4.dart';
import 'pages/todo/todo_home3.dart';
import 'pages/travel/travelstory.dart';
import 'plant_app/main.dart';
import 'travelui_clone/ui/main.dart';
import 'walletapp_ui/main.dart';
import 'pages/todo/todo2.dart';
import 'pages/dashboard/dash3.dart';
import 'pages/dashboard/dash2.dart';
import 'pages/dashboard/dash1.dart';
import 'pages/misc/chat2.dart';
import 'pages/login/auth1.dart';
import 'pages/lists/list2.dart';
import 'pages/misc/chatui.dart';
import 'pages/lists/list1.dart';
import 'pages/hotel/hhome.dart';
import 'pages/food/fdhome.dart';
import 'pages/blog/bhome1.dart';
import 'pages/login/auth2.dart';
import 'pages/misc/sliders.dart';
import 'pages/misc/navybar.dart';
import 'pages/login/login5.dart';
import 'pages/login/login4.dart';
import 'pages/login/login3.dart';
import 'pages/login/login2.dart';
import 'pages/login/login1.dart';
import 'pages/travel/thome.dart';
import 'pages/food/avocado.dart';
import 'pages/login/login7.dart';
import 'pages/login/login6.dart';
import 'pages/misc/loaders.dart';
import 'pages/grocery/ghome.dart';
import 'pages/login/signup2.dart';
import 'pages/blog/article2.dart';
import 'pages/blog/article1.dart';
import 'pages/hotel/details.dart';
import 'pages/login/signup1.dart';
import 'pages/quiz_app/home.dart';
import 'pages/dialogs/dialogs.dart';
import 'pages/todo/todo_home2.dart';
import 'pages/todo/todo_home1.dart';
import 'pages/ecommerce/cart1.dart';
import 'pages/profile/profile3.dart';
import 'pages/profile/profile2.dart';
import 'pages/profile/profile1.dart';
import 'pages/profile/profile7.dart';
import 'pages/profile/profile6.dart';
import 'pages/profile/profile5.dart';
import 'pages/profile/profile4.dart';
import 'pages/food/recipe_list.dart';
import 'pages/animations/anim2.dart';
import 'pages/animations/anim3.dart';
import 'pages/onboarding/intro2.dart';
import 'pages/onboarding/intro3.dart';
import 'pages/onboarding/intro5.dart';
import 'pages/onboarding/intro4.dart';
import 'pages/navigation/drawer2.dart';
import 'pages/quiz_app/quiz_page.dart';
import 'pages/misc/sliver_appbar.dart';
import 'pages/food/recipe_single.dart';
import 'pages/travel/travel_home.dart';
import 'pages/misc/form_elements.dart';
import 'pages/navigation/drawer1.dart';
import 'pages/travel/travel_nepal.dart';
import 'pages/food/recipe_details.dart';
import 'pages/travel/tdestination.dart';
import 'pages/onboarding/landing1.dart';
import 'pages/ecommerce/ecommerce2.dart';
import 'pages/ecommerce/ecommerce5.dart';
import 'pages/ecommerce/ecommerce1.dart';
import 'pages/quiz_app/demo_values.dart';
import 'pages/navigation/hiddenmenu.dart';
import 'pages/quiz_app/check_answers.dart';
import 'pages/quiz_app/quiz_finished.dart';
import 'pages/misc/springy_slider_page.dart';
import 'pages/ecommerce/confirm_order1.dart';
import 'pages/ecommerce/ecommerce_detail3.dart';
import 'pages/ecommerce/ecommerce_detail2.dart';
import 'pages/ecommerce/ecommerce_detail1.dart';
import 'pages/animations/animation1/animation1.dart';
import 'pages/login/login10.dart';
import 'pages/profile/profile10.dart';
import 'pages/misc/otp.dart';
import 'pages/navigation/hidden_drawer_nav.dart';
import 'data/models/menu.dart';

final List<dynamic> pages = [
  UIMenuItem(title: "Animations", icon: FontAwesomeIcons.truckMoving, items: [
    SubMenuItem("Fancy Appbar Animation", const FancyAppbarAnimation(),
        path: FancyAppbarAnimation.path),
    SubMenuItem("Hero Animation", const AnimationOnePage(),
        path: AnimationOnePage.path),
    SubMenuItem("Bottom Reveal Animation", const AnimationTwoPage(),
        path: AnimationTwoPage.path),
    SubMenuItem("Animated Bottom Bar", const AnimatedBottomBar(),
        path: AnimatedBottomBar.path),
    SubMenuItem("Animated List One", const AnimatedListOnePage(),
        path: AnimatedListOnePage.path),
  ]),
  UIMenuItem(title: "Profile", icon: Icons.person, items: [
    SubMenuItem("Profile 12", const UserProfilePage(),
        path: UserProfilePage.path),
    SubMenuItem("Profile 11", const ProfileElevenPage(),
        path: ProfileElevenPage.path),
    SubMenuItem("Profile 10", const ProfileTenPage(),
        path: ProfileTenPage.path),
    SubMenuItem("Profile Nine", const ProfileNinePage(),
        path: ProfileNinePage.path),
    SubMenuItem("Profile One", const ProfileOnePage(),
        path: ProfileOnePage.path),
    SubMenuItem("Profile Two", ProfileTwoPage(), path: ProfileTwoPage.path),
    SubMenuItem("Profile Three", ProfileThreePage(),
        path: ProfileThreePage.path),
    SubMenuItem("Profile Four", const ProfileFourPage(),
        path: ProfileFourPage.path),
    SubMenuItem("Profile Five", const ProfileFivePage(),
        path: ProfileFivePage.path),
    SubMenuItem("Profile Six", ProfileSixPage(sid), path: ProfileSixPage.path),
    SubMenuItem("Profile Seven", const ProfileSevenPage(),
        path: ProfileSevenPage.path),
    SubMenuItem("Profile Eight", const ProfileEightPage(),
        path: ProfileEightPage.path),
  ]),
  UIMenuItem(title: "Authentication", icon: Icons.lock, items: [
    SubMenuItem("Login 14", const LoginPageFourteen(),
        path: LoginPageFourteen.path),
    SubMenuItem("Login 13", const LoginPageThirdteen(),
        path: LoginPageThirdteen.path),
    SubMenuItem("Login 12", const LoginTwelvePage(),
        path: LoginTwelvePage.path),
    SubMenuItem("Login 11", const LoginElevenPage(),
        path: LoginElevenPage.path),
    SubMenuItem("Login 10", const LoginTenPage(), path: LoginTenPage.path),
    SubMenuItem("Auth Three", const AuthThreePage(), path: AuthThreePage.path),
    SubMenuItem("Auth One", const AuthOnePage(), path: AuthOnePage.path),
    SubMenuItem("Auth Two", const AuthTwoPage(), path: AuthTwoPage.path),
    SubMenuItem("Login One", const LoginOnePage(), path: LoginOnePage.path),
    SubMenuItem("Login Two", const LoginTwoPage(), path: LoginTwoPage.path),
    SubMenuItem("Login Three", const LoginThreePage(),
        path: LoginThreePage.path),
    SubMenuItem("Login Four", const LoginFourPage(), path: LoginFourPage.path),
    SubMenuItem("Login Five", const LoginFivePage(), path: LoginFivePage.path),
    SubMenuItem("Login Six", const LoginSixPage(), path: LoginSixPage.path),
    SubMenuItem("Login Seven", const LoginSevenPage(),
        path: LoginSevenPage.path),
    SubMenuItem("Login Eight", const LoginEightPage(),
        path: LoginEightPage.path),
    SubMenuItem("Login Nine", const LoginNinePage(), path: LoginNinePage.path),
    SubMenuItem("Signup One", const SignupOnePage(), path: SignupOnePage.path),
    SubMenuItem("Signup Two", const SignupTwoPage(), path: SignupTwoPage.path),
    SubMenuItem("Signup Three", const SignupThreePage(),
        path: SignupThreePage.path),
  ]),
  UIMenuItem(title: "Settings", icon: Icons.dashboard, items: [
    SubMenuItem("Settings One", const SettingsOnePage(),
        path: SettingsOnePage.path),
    SubMenuItem("Settings Two", SettingsTwoPage(), path: SettingsTwoPage.path),
    SubMenuItem("Settings Three", SettingsThreePage(),
        path: SettingsThreePage.path),
    SubMenuItem("Profile Setting", const ProfileSettingsPage(),
        path: ProfileSettingsPage.path),
    SubMenuItem("Settings Four", const SettingsFourPage(),
        path: SettingsFourPage.path),
  ]),
  UIMenuItem(
    title: "Quotes App",
    icon: FontAwesomeIcons.quoteLeft,
    items: [
      SubMenuItem("Quote Page Two", QuotesPageTwo(), path: QuotesPageTwo.path),
      SubMenuItem("Quote Page One", const QuotesOnePage(),
          path: QuotesOnePage.path),
    ],
  ),
  UIMenuItem(title: "Motorbike App", icon: Icons.list, items: [
    SubMenuItem("MoterBike Shop Page", const MoterBikeShopPage(),
        path: MoterBikeShopPage.path),
    SubMenuItem("Home Page", const BikeHomePage(), path: BikeHomePage.path),
    SubMenuItem("Bike Details Page", const BikeDetailsPage(),
        path: BikeDetailsPage.path),
  ]),
  UIMenuItem(title: "Lists", icon: Icons.list, items: [
    SubMenuItem("Grid View", const GridViewAnimationPage(),
        path: GridViewAnimationPage.path),
    SubMenuItem("Places List One", const PlaceList1(), path: PlaceList1.path),
    SubMenuItem("List Two", const SchoolList(), path: SchoolList.path),
  ]),
  UIMenuItem(title: "Invitation", icon: Icons.list, items: [
    SubMenuItem("Auth Page", const InvitationAuthPage(),
        path: InvitationAuthPage.path),
    SubMenuItem("Landing Page", const InvitationLandingPage(),
        path: InvitationLandingPage.path),
    SubMenuItem("Details Page", InvitationPageOne(),
        path: InvitationPageOne.path),
  ]),
  UIMenuItem(title: "Ecommerce", icon: Icons.shopping_basket, items: [
    SubMenuItem("Cart Three", const CartThreePage(), path: CartThreePage.path),
    SubMenuItem("Cart Two", const CartTwoPage(), path: CartTwoPage.path),
    SubMenuItem("Ecommerce Four", const EcommerceFourPage(),
        path: EcommerceFourPage.path),
    SubMenuItem("Checkout One", const CheckoutOnePage(),
        path: CheckoutOnePage.path),
    SubMenuItem("Ecommerce One", EcommerceOnePage(),
        path: EcommerceOnePage.path),
    SubMenuItem("Ecommerce Two", EcommerceTwoPage(),
        path: EcommerceTwoPage.path),
    SubMenuItem("Ecommerce Three", SliverAppbarPage(),
        path: SliverAppbarPage.path),
    SubMenuItem("Ecommerce Grocery", const EcommerceFivePage(),
        path: EcommerceFivePage.path),
    SubMenuItem("Confirm Order", const ConfirmOrderPage(),
        path: ConfirmOrderPage.path),
    SubMenuItem("Ecommerce Cart One", CartOnePage(), path: CartOnePage.path),
    SubMenuItem("Ecommerce Details One", const EcommerceDetailOnePage(),
        path: EcommerceDetailOnePage.path),
    SubMenuItem("Ecommerce Details Two", const EcommerceDetailTwoPage(),
        path: EcommerceDetailTwoPage.path),
    SubMenuItem("Rounded Details Page", EcommerceDetailThreePage(),
        path: EcommerceDetailThreePage.path),
  ]),
  UIMenuItem(title: "Blog", icon: Icons.pages, items: [
    SubMenuItem("News Home", const NewsHomeOnePage(),
        path: NewsHomeOnePage.path),
    SubMenuItem("Sports News Home", const SportsNewsOnePage(),
        path: SportsNewsOnePage.path),
    SubMenuItem("Blog Home One", const BlogHomeOnePage(),
        path: BlogHomeOnePage.path),
    SubMenuItem("Article One", const ArticleOnePage(),
        path: ArticleOnePage.path),
    SubMenuItem("Article Two", const ArticleTwoPage(),
        path: ArticleTwoPage.path),
  ]),
  UIMenuItem(title: "Dashboard", icon: Icons.dashboard, items: [
    SubMenuItem("Dashboard One", DashboardOnePage(),
        path: DashboardOnePage.path),
    SubMenuItem("Dashboard Two", const DashboardTwoPage(),
        path: DashboardTwoPage.path),
    SubMenuItem("Dashboard Three", DashboardThreePage(),
        path: DashboardThreePage.path),
  ]),
  UIMenuItem(title: "Food", icon: Icons.fastfood, items: [
    SubMenuItem("Food Order Checkout", const FoodCheckoutOnePage(),
        path: FoodCheckoutOnePage.path),
    SubMenuItem("Fruits Add to Cart", const AvocadoPage(),
        path: AvocadoPage.path),
    SubMenuItem("Cake Details", const CakePage(), path: CakePage.path),
    SubMenuItem("Recipe List", RecipeListPage(), path: RecipeListPage.path),
    SubMenuItem("Recipe Single", const RecipeSinglePage(),
        path: RecipeSinglePage.path),
    SubMenuItem("Recipe Details", const RecipeDetailsPage(),
        path: RecipeDetailsPage.path),
    SubMenuItem("Food Delivery", FoodDeliveryHomePage(),
        path: FoodDeliveryHomePage.path),
  ]),
  UIMenuItem(title: "Quiz app", icon: FontAwesomeIcons.question, items: [
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
  UIMenuItem(title: "Todo", icon: FontAwesomeIcons.listCheck, items: [
    SubMenuItem("Todo Home Three", const TodoHomeThreePage(),
        path: TodoHomeThreePage.path),
    SubMenuItem("Todo Week View", TodoTwoPage(), path: TodoTwoPage.path),
    SubMenuItem("Todo Home One", TodoHomeOnePage(), path: TodoHomeOnePage.path),
    SubMenuItem("Todo Home Two", const TodoHomeTwoPage(),
        path: TodoHomeTwoPage.path),
  ]),
  UIMenuItem(title: "Travel", icon: Icons.airplanemode_active, items: [
    SubMenuItem("Travel Home", const TravelHomePage(),
        path: TravelHomePage.path),
    SubMenuItem("Travel Nepal", const TravelNepalPage(),
        path: TravelNepalPage.path),
    SubMenuItem("Travel Destination Detail", const DestinationPage(),
        path: DestinationPage.path),
    SubMenuItem("Travel Home2", const TravelHome(), path: TravelHome.path),
    SubMenuItem("Travel Stroy", const TravelStoryPage(),
        path: TravelStoryPage.path),
  ]),
  UIMenuItem(title: "Hotel", icon: Icons.hotel, items: [
    SubMenuItem("Hotel Booking Homepage", const HotelBookingPage(),
        path: HotelBookingPage.path),
    SubMenuItem("Hotel Home", const HotelHomePage(), path: HotelHomePage.path),
    SubMenuItem("Room Details", const HotelDetailsPage(),
        path: HotelDetailsPage.path),
  ]),
  UIMenuItem(title: "Navigation", icon: Icons.menu, items: [
    SubMenuItem("Menu One", const MenuOnePage(), path: MenuOnePage.path),
    SubMenuItem("Hidden drawer nav", const HiddenDrawerNav(),
        path: HiddenDrawerNav.path),
    SubMenuItem("Hidden Menu", const HiddenMenuPage(),
        path: HiddenMenuPage.path),
    SubMenuItem("Dark Drawer Menu", DarkDrawerPage(),
        path: DarkDrawerPage.path),
    SubMenuItem("Light Drawer Menu", LightDrawerPage(),
        path: LightDrawerPage.path),
    SubMenuItem("Fancy Bottom Navigation ", const FancyBottomBarPage(),
        path: FancyBottomBarPage.path),
  ]),
  UIMenuItem(title: "Onboarding", icon: Icons.info, items: [
    SubMenuItem("Onboarding 6", const IntroSixPage(), path: IntroSixPage.path),
    SubMenuItem("Landing Page", const LandingOnePage(),
        path: LandingOnePage.path),
    SubMenuItem("Onboarding 4", const IntroFourPage(),
        path: IntroFourPage.path),
    SubMenuItem("Onboarding 2", const IntroTwoPage(), path: IntroTwoPage.path),
    SubMenuItem("Onboarding 3", const IntroThreePage(),
        path: IntroThreePage.path),
    SubMenuItem("Onboarding 5", const Intro5(), path: Intro5.path),
  ]),
  UIMenuItem(
      title: "UI Kits (Clones)",
      items: [
        SubMenuItem('Khalti App', const KhaltiApp(), path: KhaltiApp.path),
        SubMenuItem("Grocery UI Kit", const GroceryHomePage(),
            path: GroceryHomePage.path),
        SubMenuItem("Bank App Clone", const NicAsiaApp(),
            path: NicAsiaApp.path),
        SubMenuItem("Furniture App", const FurnitureApp(),
            path: FurnitureApp.path),
        SubMenuItem("Plant App", const PlantAppPage(), path: PlantAppPage.path),
        SubMenuItem('Travel Ui Clone', const TravelUiClone(),
            path: TravelUiClone.path),
        SubMenuItem("Wallet App Clone", const WalletAppClone(),
            path: WalletAppClone.path),
      ],
      icon: Icons.account_balance_wallet),
  UIMenuItem(title: "Miscellaneous", items: [
    SubMenuItem("Youtube HomePage", const YoutubeHomePage(),
        path: YoutubeHomePage.path),
    SubMenuItem("OTP Page", const OTPPage(), path: OTPPage.path),
    SubMenuItem('Image/Widget Crop', const CropPage(),
        path: CropPage.path, icon: Icons.crop),
    SubMenuItem("Gallery One", const GalleryPageOne(),
        path: GalleryPageOne.path),
    SubMenuItem("Music Player Two", const MusicPlayerTwoPage(),
        path: MusicPlayerTwoPage.path),
    SubMenuItem("Image Popup", const ImagePopupPage(),
        path: ImagePopupPage.path),
    SubMenuItem("Chat Messaages", const ChatTwoPage(), path: ChatTwoPage.path),
    SubMenuItem("Form Elements", const FormElementPage(),
        path: FormElementPage.path),
    SubMenuItem("Sliders", SlidersPage(), path: SlidersPage.path),
    SubMenuItem("Alert Dialogs", const DialogsPage(), path: DialogsPage.path),
    SubMenuItem("Springy Slider", const SpringySliderPage(),
        path: SpringySliderPage.path),
    SubMenuItem("Sliver App Bar", SliverAppbarPage(),
        path: SliverAppbarPage.path),
    SubMenuItem("Loaders", const LoadersPage(), path: LoadersPage.path),
    SubMenuItem("ChatUi", const ChatUi(), path: ChatUi.path),
    SubMenuItem('Bottomsheet', const BottomSheetAwesome(),
        path: BottomSheetAwesome.path),
    SubMenuItem('Discovery Page', const DiscoveryPage(),
        path: DiscoveryPage.path),
    SubMenuItem('Music player', const MusicPlayer(), path: MusicPlayer.path),
    SubMenuItem('Whatsapp Clone', const WhatsAppClone(),
        path: WhatsAppClone.path),
  ]),
];

SubMenuItem? getItemForKey(String key) {
  SubMenuItem? item;
  List<dynamic> pag = List<dynamic>.from(pages);
  for (var page in pag) {
    if (page is SubMenuItem && page.title == key) {
      item = page;
    } else if (page is UIMenuItem) {
      for (var sub in page.items!) {
        if (sub.title == key) item = sub;
      }
    }
  }
  return item;
}
