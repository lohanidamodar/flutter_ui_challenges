/**
 * Author: Mausam Rayamajhi
 * profile: https://github.com/mausamRayamajhi
  */
  

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../util/constant.dart';
import '../widget/dashboard/categories.dart';
import '../widget/dashboard/last_transactions.dart';
import '../widget/dashboard/top_account_info.dart';
import '../widget/profile_image.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size deviceSize = MediaQuery.of(context).size;
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            buildUserInfo(context),
            buildDrawerItem,
          ],
        ),
      ),
      appBar: buildAppBar(),
      body: Stack(
        children: <Widget>[
          Container(
            color: primaryColor,
            height: deviceSize.height * 0.1,
          ),
          Container(
            margin: EdgeInsets.symmetric(
              horizontal: deviceSize.width * 0.03,
            ),
            child: Column(
              children: <Widget>[
                TopAccountInfo(),
                Flexible(
                  fit: FlexFit.tight,
                  child: ListView(
                    physics: BouncingScrollPhysics(),
                    shrinkWrap: true,
                    children: <Widget>[
                      Categories(),
                      LastTransactions(),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  final buildDrawerItem = Flexible(
    child: Container(
      color: drawerColoSecondary,
      padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              for (Draw item in drawerItems)
                ListTile(
                  leading: Icon(
                    item.icon,
                    color: Colors.white70,
                  ),
                  title: Text(
                    item.title,
                    style: TextStyle(
                      color: Colors.white70,
                    ),
                  ),
                ),
            ],
          ),
          ListTile(
            leading: Icon(
              Icons.lock,
              color: Colors.white,
            ),
            title: Text(
              'Logout',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    ),
  );

  buildUserInfo(context) => Container(
        color: drawerColoPrimary,
        //height: deviceSize.height * 0.3,
        padding: EdgeInsets.only(bottom: 25.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ListTile(
              onTap: () {
                Navigator.of(context).pop();
              },
              leading: Icon(
                Icons.arrow_back,
                color: Colors.white,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Good Afternoon!',
                  style: TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.w300,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  'MAUSAM'.toUpperCase(),
                  style: TextStyle(
                    fontSize: 17.0,
                    fontWeight: FontWeight.w300,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15.0,
            ),
            ProfileImage(
              color: Colors.white,
              height: 70.0,
              width: 70.0,
            ),
            SizedBox(
              height: 15.0,
            ),
            Text(
              'MAUSAM rayamajhi'.toUpperCase(),
              style: TextStyle(
                fontSize: 15.0,
                fontWeight: FontWeight.w300,
                color: Colors.white,
              ),
            )
          ],
        ),
      );

  AppBar buildAppBar() {
    return AppBar(
      elevation: 0.0,
      // centerTitle: true,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'Welcome!',
            style: TextStyle(
              fontSize: 17.0,
              fontWeight: FontWeight.w300,
              color: Colors.white,
            ),
          ),
          SizedBox(
            width: 5,
          ),
          Text(
            'MAUSAM'.toUpperCase(),
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.w300,
              color: Colors.white,
            ),
          )
        ],
      ),
      actions: <Widget>[
        IconButton(
          icon: Image.asset('assets/nicasiaassets/ic_scan2pay_64_4.png'),
          tooltip: 'QR Scan',
          onPressed: () {},
        ),
      ],
    );
  }
}
