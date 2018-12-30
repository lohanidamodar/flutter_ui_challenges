import 'package:flutter/material.dart';
import 'package:intro_views_flutter/Models/page_view_model.dart';
import 'package:intro_views_flutter/intro_views_flutter.dart';

class SmartWalletOnboardingPage extends StatelessWidget {
  final pages = [
    PageViewModel(
      pageColor: Color(0xF6F6F7FF),
        // iconImageAssetPath: 'assets/smwallet/logo.png',
        iconColor: null,
        bubbleBackgroundColor: Colors.blue,
        title: Center(child:Image.asset('assets/smwallet/logo.png')),
        body: Column(
          children: <Widget>[
            Text('Welcome to Smart Wallet'),
            Text(
              'Plan your finance, anytime, anywhere.',
              style: TextStyle(
                color: Colors.black54,
                fontSize: 16.0
              ),
            ),
          ],
        ),
        mainImage: Image.asset(
          'assets/smwallet/wallet1.png',
          width: 285.0,
          alignment: Alignment.center,
        ),
        textStyle: TextStyle(color: Colors.black),
    ),
    PageViewModel(
      pageColor: Color(0xF6F6F7FF),
        iconColor: null,
        bubbleBackgroundColor: Colors.blue,
        title: Container(),
        body: Column(
          children: <Widget>[
            Text('One Touch Send Money'),
            Text(
              'Send money in just one touch and organize your wallet smart.',
              style: TextStyle(
                color: Colors.black54,
                fontSize: 16.0
              ),
            ),
          ],
        ),
        mainImage: Image.asset(
          'assets/smwallet/wallet2.png',
          width: 285.0,
          alignment: Alignment.center,
        ),
        textStyle: TextStyle(color: Colors.black),
    ),
    PageViewModel(
      pageColor: Color(0xF6F6F7FF),
        iconColor: null,
        bubbleBackgroundColor: Colors.blue,
        title: Container(),
        body: Column(
          children: <Widget>[
            Text('Automatically Organize'),
            Text(
              'Organize your expenses and incomes and secure your wallet with pin.',
              style: TextStyle(
                color: Colors.black54,
                fontSize: 16.0
              ),
            ),
          ],
        ),
        mainImage: Image.asset(
          'assets/smwallet/wallet3.png',
          width: 285.0,
          alignment: Alignment.center,
        ),
        textStyle: TextStyle(color: Colors.black),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IntroViewsFlutter(
        pages,
        onTapDoneButton: (){
          Navigator.pop(context);
        },
        showSkipButton: false,
        doneText: Icon(Icons.arrow_forward_ios, color: Colors.blue),
        pageButtonTextStyles: new TextStyle(
            color: Colors.blue,
            fontSize: 18.0,
            fontFamily: "Regular",
          ),
      ),
    );
  }
}