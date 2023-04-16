/**
 * Author: Damodar Lohani
 * profile: https://github.com/lohanidamodar
  */
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../model/home_menu_item.dart';
import '../model/introitem.dart';

const String logo = "assets/smwallet/logo.png";

final List<IntroItem> introItems = [
  IntroItem(
      image: logo,
      title: "Load Fund",
      subtitle: "Load funds in your khalti from your Bank account"),
  IntroItem(
      image: logo,
      title: "Pay on the go",
      subtitle: "Recharge, make gene service payment bills and much more"),
  IntroItem(
      image: logo,
      title: "Fund transfer",
      subtitle: "Request send money to your friends."),
];

final List<HomeMenuItem> homeMenuItems = [
  HomeMenuItem("Topup", FontAwesomeIcons.mobileScreenButton,
      subtitle: "CASHBACK 2%"),
  HomeMenuItem("RC Card", FontAwesomeIcons.addressCard,
      subtitle: "CASHBACK 2-3%"),
  HomeMenuItem("Landline", FontAwesomeIcons.intercom, subtitle: "CASHBACK 2%"),
  HomeMenuItem("Electricity", FontAwesomeIcons.idBadge),
  HomeMenuItem("Khanepani", FontAwesomeIcons.water),
  HomeMenuItem("TV", FontAwesomeIcons.tv, subtitle: "CASHBACK 2%"),
  HomeMenuItem("Internet", FontAwesomeIcons.globe, subtitle: "CASHBACK 0.5-5%"),
  HomeMenuItem("E-Learning", FontAwesomeIcons.readme, subtitle: "CASHBACK 2%"),
  HomeMenuItem("Antivirus", FontAwesomeIcons.shieldHalved,
      subtitle: "CASHBACK 30%"),
  HomeMenuItem("Insurance", FontAwesomeIcons.userShield),
  HomeMenuItem("Ride", FontAwesomeIcons.motorcycle, subtitle: "CASHBACK 5%"),
  HomeMenuItem("Share", FontAwesomeIcons.shareFromSquare),
  HomeMenuItem("Newspaper", FontAwesomeIcons.newspaper),
  HomeMenuItem("Credit Card", FontAwesomeIcons.creditCard),
];
final List<HomeMenuItem> homeBookingsItems = [
  HomeMenuItem("Flight", FontAwesomeIcons.plane),
  HomeMenuItem("Movie", FontAwesomeIcons.ticketSimple, subtitle: "CASHBACK 2%"),
  HomeMenuItem("Hotel", FontAwesomeIcons.hotel),
  HomeMenuItem("Event", FontAwesomeIcons.calendarCheck)
];
