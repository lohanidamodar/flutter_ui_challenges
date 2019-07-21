/**
 * Author: Damodar Lohani
 * profile: https://github.com/lohanidamodar
  */
  
import 'package:flutter/material.dart';
import 'package:intro_views_flutter/Models/page_view_model.dart';
import 'package:intro_views_flutter/intro_views_flutter.dart';

class SmartWalletOnboardingPage extends StatelessWidget {
  static final String path = "lib/src/pages/onboarding/smart_wallet_onboarding.dart";
  final pages = [
    PageViewModel(
      pageColor: Color(0xF6F6F7FF),
        bubbleBackgroundColor: Colors.indigo,
        title: Container(),
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
        bubbleBackgroundColor: Colors.indigo,
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
        bubbleBackgroundColor: Colors.indigo,
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
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            IntroViewsFlutter(
              pages,
              onTapDoneButton: (){
                Navigator.pop(context);
              },
              showSkipButton: false,
              doneText: Text("Get Started",),
              pageButtonsColor: Colors.indigo,
              pageButtonTextStyles: new TextStyle(
                  // color: Colors.indigo,
                  fontSize: 16.0,
                  fontFamily: "Regular",
              ),
            ),
            Positioned(
              top: 20.0,
              left: MediaQuery.of(context).size.width/2 - 50,
              child: Image.asset('assets/smwallet/logo.png', width: 100,)
            )
          ],
        ),
      ),
    );
  }
}