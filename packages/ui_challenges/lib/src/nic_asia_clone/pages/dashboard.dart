import 'package:flutter/material.dart';
import '../util/constant.dart';
import '../widget/dashboard/categories.dart';
import '../widget/dashboard/last_transactions.dart';
import '../widget/dashboard/top_account_info.dart';
import '../widget/profile_image.dart';

class Dashboard extends StatelessWidget {
  Dashboard({super.key});

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
                    physics: const BouncingScrollPhysics(),
                    shrinkWrap: true,
                    children: const <Widget>[
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
      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
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
                    item.title!,
                    style: const TextStyle(
                      color: Colors.white70,
                    ),
                  ),
                ),
            ],
          ),
          const ListTile(
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
        padding: const EdgeInsets.only(bottom: 25.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ListTile(
              onTap: () {
                Navigator.of(context).pop();
              },
              leading: const Icon(
                Icons.arrow_back,
                color: Colors.white,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text(
                  'Good Afternoon!',
                  style: TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.w300,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                Text(
                  'MAUSAM'.toUpperCase(),
                  style: const TextStyle(
                    fontSize: 17.0,
                    fontWeight: FontWeight.w300,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 15.0,
            ),
            const ProfileImage(
              color: Colors.white,
              height: 70.0,
              width: 70.0,
            ),
            const SizedBox(
              height: 15.0,
            ),
            Text(
              'MAUSAM rayamajhi'.toUpperCase(),
              style: const TextStyle(
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
          const Text(
            'Welcome!',
            style: TextStyle(
              fontSize: 17.0,
              fontWeight: FontWeight.w300,
              color: Colors.white,
            ),
          ),
          const SizedBox(
            width: 5,
          ),
          Text(
            'MAUSAM'.toUpperCase(),
            style: const TextStyle(
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
