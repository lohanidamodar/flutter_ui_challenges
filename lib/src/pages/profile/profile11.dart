/**
 * Author: Damodar Lohani
 * profile: https://github.com/lohanidamodar
  */

import 'package:flutter/material.dart';
import 'package:flutter_ui_challenges/core/presentation/res/assets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProfileElevenPage extends StatelessWidget {
  static const String path = "lib/src/pages/profile/profile11.dart";

  const ProfileElevenPage({super.key});
  @override
  Widget build(BuildContext context) {
    var itemHeader = TextStyle(
      color: Colors.grey.shade600,
      fontSize: 16.0,
    );
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          "my profile",
          style: Theme.of(context).textTheme.titleLarge,
        ),
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: ListView(
        children: [
          const SizedBox(height: 20.0),
          Center(
            child: SizedBox(
              width: 100,
              height: 100,
              child: Stack(
                children: [
                  //avatar
                  Ink(
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: AssetImage(appLogo), fit: BoxFit.cover),
                    ),
                  ),
                  Align(
                    alignment: const Alignment(1.5, 1.5),
                    child: MaterialButton(
                      minWidth: 0,
                      onPressed: () {},
                      textColor: Colors.white,
                      color: Theme.of(context).colorScheme.secondary,
                      elevation: 0,
                      shape: const CircleBorder(),
                      child: const Icon(Icons.camera_alt),
                    ),
                  )
                ],
              ),
            ),
          ),
          ListTile(
            title: Text(
              "notifications",
              style: itemHeader,
            ),
            leading: const Icon(Icons.notifications),
          ),
          SwitchListTile(
            value: true,
            title: const Text("email notifications"),
            onChanged: (value) {},
            secondary: const SizedBox(
              width: 10,
            ),
          ),
          SwitchListTile(
            value: false,
            title: const Text("push notifications"),
            onChanged: (value) {},
            secondary: const SizedBox(
              width: 10,
            ),
          ),
          _buildDivider(),
          ListTile(
            title: Text(
              "privacy",
              style: itemHeader,
            ),
            leading: const Icon(Icons.person),
          ),
          RadioListTile(
            value: true,
            groupValue: true,
            title: const Text("private"),
            onChanged: (dynamic value) {},
            secondary: const SizedBox(
              width: 10,
            ),
            controlAffinity: ListTileControlAffinity.trailing,
          ),
          RadioListTile(
            value: false,
            groupValue: true,
            controlAffinity: ListTileControlAffinity.trailing,
            title: const Text("public"),
            onChanged: (dynamic value) {},
            secondary: const SizedBox(
              width: 10,
            ),
          ),
          _buildDivider(),
          const ListTile(
            title: Text("feedback"),
            subtitle: Text("we would love to hear your experience"),
            leading: Icon(Icons.feedback),
          ),
          const ListTile(
            title: Text("terms and conditions"),
            subtitle: Text("legal, terms and conditions"),
            leading: Icon(FontAwesomeIcons.fileContract),
          ),
          const ListTile(
            title: Text("logout"),
            subtitle: Text("you can logout from here"),
            leading: Icon(Icons.exit_to_app),
          ),
        ],
      ),
    );
  }

  Padding _buildDivider() {
    return const Padding(
      padding: EdgeInsets.only(left: 70),
      child: Divider(
        color: Colors.black,
      ),
    );
  }
}
