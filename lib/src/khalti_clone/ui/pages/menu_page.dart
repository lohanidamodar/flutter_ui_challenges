/**
 * Author: Damodar Lohani
 * profile: https://github.com/lohanidamodar
  */
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../res/constants.dart';

class MenuPage extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Container(
            margin: const EdgeInsets.only(top: 50),
            height: 170,
            color: Theme.of(context).primaryColor,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                ListTile(
                  onTap: (){},
                  leading: Stack(
                    overflow: Overflow.visible,
                    children: <Widget>[
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        child: Image.asset(logo),
                      ),
                      Positioned(
                        bottom: -5,
                        right: -5,
                        child: Icon(Icons.remove_circle, color: Colors.red,))
                    ],
                  ),
                  title: Text("Damodar Lohani",style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0
                  ),),
                  subtitle: Text("981151121", style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.white
                  ),),
                  trailing: Icon(Icons.keyboard_arrow_right, color: Colors.white,),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 75.0),
                  child: Text.rich(TextSpan(
                    children: [
                      TextSpan(text: "Rs "),
                      TextSpan(text: "0", style: TextStyle(
                        fontSize: 24.0
                      ))
                    ]
                  ), style: TextStyle(color: Colors.white),),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 75.0),
                  child: Text.rich(TextSpan(
                    children: [
                      TextSpan(text: "KP "),
                      TextSpan(text: "0", style: TextStyle(
                        fontSize: 20.0
                      ))
                    ]
                  ), style: TextStyle(color: Colors.white),),
                ),
              ],
            ),
          ),
          ListTile(title: Text("KYC Form"), leading: Icon(Icons.info),),
          ListTile(title: Text("My Bookings"), leading: Icon(FontAwesomeIcons.calendarDay),),
          ListTile(title: Text("My Purchases"), leading: Icon(FontAwesomeIcons.listOl),),
          ListTile(title: Text("Transaction Limits"), leading: Icon(FontAwesomeIcons.chartLine),),
          ListTile(title: Text("Coupan"), leading: Icon(Icons.card_giftcard),),
          Divider(),
          ListTile(title: Text("Play Khalti Quiz"), leading: Icon(FontAwesomeIcons.brain),),
          ListTile(title: Text("Khalti Points"), leading: Icon(FontAwesomeIcons.coins),),
          Divider(),
          ListTile(title: Text("Settings"), leading: Icon(Icons.settings),),
          ExpansionTile(
            backgroundColor: Colors.grey.shade100,
            title: Text("Help & Support"),
            leading: Icon(Icons.headset_mic),
            children: <Widget>[
              ListTile(title: Text("FAQ"),),
              ListTile(title: Text("Contact Us"),),
              ListTile(title: Text("Feedback"),),
            ],
          ),
          ListTile(title: Text("About"), leading: Icon(Icons.info),),
          ListTile(title: Text("Logout"), leading: Icon(Icons.exit_to_app),),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 60.0,),
            color: Colors.grey.shade200,
            child: Text("2.20.00"),
          )
        ],
      ),
    );
  }
}