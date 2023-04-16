/**
 * Author: Mausam Rayamajhi
 * profile: https://github.com/mausamRayamajhi
  */

import 'package:flutter/material.dart';

const Color primaryColor = Color(0xFFD20910);
const Color primaryColorLight = Color(0xFFED1B2E);
const Color drawerColoPrimary = Color(0xFF88070B);
const Color drawerColoSecondary = Color(0xFFCF0A11);

const String path = 'assets/nicasiaassets/';

final List<Draw> drawerItems = [
  Draw(title: 'Quick Payment', icon: Icons.photo_camera),
  Draw(title: 'Favorite Account', icon: Icons.supervised_user_circle),
  Draw(title: 'Invoice History', icon: Icons.receipt),
  Draw(title: 'Complain', icon: Icons.speaker_notes),
  Draw(title: 'Activity Log', icon: Icons.assessment),
  Draw(title: 'Settings', icon: Icons.settings),
];
final List imageList = [
  {'name': 'el', 'title': 'Electricity'},
  {'name': 'air', 'title': 'Airlines'},
  {'name': 'router', 'title': 'Internet'},
  {'name': 'tv', 'title': 'TV'},
  {'name': 'umb', 'title': 'Insurance'},
  {'name': 'sas', 'title': 'Sasto Tickets'},
  {'name': 'icon_more', 'title': 'Load More'},
];

final List categories = [
  {'image': '${path}ic_username.png', 'title': 'My Account'},
  {'image': '${path}esewa.jpg', 'title': 'Load eSewa'},
  {'image': '${path}ic_payments_64_4.png', 'title': 'Payment'},
  {'image': '${path}ic_transfer_32_4.png', 'title': 'Fund Transfer'},
  {'image': '${path}ic_sch_payment_64_4.png', 'title': 'Schedule Payment'},
  {'image': '${path}ic_scan2pay_64_4.png', 'title': 'Scan To Pay'},
];

final List transactions = [
  Trx(
    type: 'cwdr/',
    number: '974884/9874513365478965',
    amount: '10,000.00',
    date: '10-06-2019',
  ),
  Trx(
    type: 'cwdr/',
    number: '974884/9874513365478965',
    amount: '11,000.00',
    date: '10-06-2019',
  ),
  Trx(
    type: 'cwdr/',
    number: '974884/9874513365478965',
    amount: '12,000.00',
    date: '10-06-2019',
  ),
  Trx(
    type: 'cwdr/',
    number: '974884/9874513365478965',
    amount: '13,000.00',
    date: '10-06-2019',
  ),
  Trx(
    type: 'cwdr/',
    number: '974884/9874513365478965',
    amount: '14,000.00',
    date: '10-06-2019',
  ),
  Trx(
    type: 'cwdr/',
    number: '974884/9874513365478965',
    amount: '15,000.00',
    date: '10-06-2019',
  ),
  Trx(
    type: 'cwdr/',
    number: '974884/9874513365478965',
    amount: '16,000.00',
    date: '10-06-2019',
  ),
  Trx(
    type: 'cwdr/',
    number: '974884/9874513365478965',
    amount: '55,000.00',
    date: '10-06-2019',
  ),
  Trx(
    type: 'cwdr/',
    number: '974884/9874513365478965',
    amount: '15,000.00',
    date: '10-06-2019',
  ),
  Trx(
    type: 'cwdr/',
    number: '974884/9874513365478965',
    amount: '25,000.00',
    date: '10-06-2019',
  ),
];

class Trx {
  final String? type, number, amount, date;
  Trx({this.type, this.amount, this.date, this.number});
}

class Draw {
  final String? title;
  final IconData? icon;
  Draw({this.title, this.icon});
}
