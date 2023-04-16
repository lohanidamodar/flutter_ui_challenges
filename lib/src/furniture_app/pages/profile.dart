import '../widgets/profile/profile_categories.dart';
import '../widgets/profile/profile_detail.dart';
import '../widgets/profile/profile_menu.dart';
import '../widgets/title_large.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.only(
          left: 20.0,
          right: 20.0,
          top: 30.0,
        ),
        child: Column(
          //mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const <Widget>[
            TitleLarge(
              title: 'Center',
            ),
            SizedBox(
              height: 20.0,
            ),
            ProfileDetail(),
            SizedBox(
              height: 30.0,
            ),
            ProfileCategories(),
            SizedBox(
              height: 30.0,
            ),
            Flexible(child: ProfileMenu()),
          ],
        ),
      ),
    );
  }
}
