/**
 * Author: Damodar Lohani
 * profile: https://github.com/lohanidamodar
  */
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../res/constants.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context) {
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
                  onTap: () {},
                  leading: Stack(
                    clipBehavior: Clip.none,
                    children: <Widget>[
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        child: Image.asset(logo),
                      ),
                      const Positioned(
                          bottom: -5,
                          right: -5,
                          child: Icon(
                            Icons.remove_circle,
                            color: Colors.red,
                          ))
                    ],
                  ),
                  title: const Text(
                    "Damodar Lohani",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0),
                  ),
                  subtitle: const Text(
                    "981151121",
                    style: TextStyle(fontSize: 16.0, color: Colors.white),
                  ),
                  trailing: const Icon(
                    Icons.keyboard_arrow_right,
                    color: Colors.white,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(
                      vertical: 8.0, horizontal: 75.0),
                  child: Text.rich(
                    TextSpan(children: [
                      TextSpan(text: "Rs "),
                      TextSpan(text: "0", style: TextStyle(fontSize: 24.0))
                    ]),
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(
                      vertical: 8.0, horizontal: 75.0),
                  child: Text.rich(
                    TextSpan(children: [
                      TextSpan(text: "KP "),
                      TextSpan(text: "0", style: TextStyle(fontSize: 20.0))
                    ]),
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
          const ListTile(
            title: Text("KYC Form"),
            leading: Icon(Icons.info),
          ),
          const ListTile(
            title: Text("My Bookings"),
            leading: Icon(FontAwesomeIcons.calendarDay),
          ),
          const ListTile(
            title: Text("My Purchases"),
            leading: Icon(FontAwesomeIcons.listOl),
          ),
          const ListTile(
            title: Text("Transaction Limits"),
            leading: Icon(FontAwesomeIcons.chartLine),
          ),
          const ListTile(
            title: Text("Coupan"),
            leading: Icon(Icons.card_giftcard),
          ),
          const Divider(),
          const ListTile(
            title: Text("Play Khalti Quiz"),
            leading: Icon(FontAwesomeIcons.brain),
          ),
          const ListTile(
            title: Text("Khalti Points"),
            leading: Icon(FontAwesomeIcons.coins),
          ),
          const Divider(),
          const ListTile(
            title: Text("Settings"),
            leading: Icon(Icons.settings),
          ),
          ExpansionTile(
            backgroundColor: Colors.grey.shade100,
            title: const Text("Help & Support"),
            leading: const Icon(Icons.headset_mic),
            children: const <Widget>[
              ListTile(
                title: Text("FAQ"),
              ),
              ListTile(
                title: Text("Contact Us"),
              ),
              ListTile(
                title: Text("Feedback"),
              ),
            ],
          ),
          const ListTile(
            title: Text("About"),
            leading: Icon(Icons.info),
          ),
          const ListTile(
            title: Text("Logout"),
            leading: Icon(Icons.exit_to_app),
          ),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(
              vertical: 16.0,
              horizontal: 60.0,
            ),
            color: Colors.grey.shade200,
            child: const Text("2.20.00"),
          )
        ],
      ),
    );
  }
}
