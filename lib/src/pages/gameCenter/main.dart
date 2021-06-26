// /**
// * Author: Kishor Kc
//  * profile: https://github.com/devkishor8007
//  * design Source:Dribbble.com
//  * Images:flaticon.com  |  freepngimg.com
//   */

import 'package:flutter/material.dart';
import 'package:game_center/page/playPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PlayPage(),
    );
  }
}
