/**
 * Author: Mausam Rayamajhi
 * profile: https://github.com/mausamRayamajhi
  */
  
import 'package:flutter/material.dart';
import '../../widget/login/login_input_sction.dart';
import '../../widget/login/login_top_section.dart';

class LoginContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size deviceSize = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Container(
        alignment: Alignment.center,
        height: deviceSize.height,
        child: Stack(
          children: <Widget>[
            Container(
              height: deviceSize.height * 0.53,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'assets/nicasiaassets/mountain.png',
                  ),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Column(
              children: <Widget>[
                SizedBox(height: 25.0),
                buildLogo(deviceSize),
                SizedBox(
                  height: 20.0,
                ),
                LoginTopSection(),
                SizedBox(
                  height: 30.0,
                ),
                LoginInputSection()
              ],
            )
          ],
        ),
      ),
    );
  }

  Row buildLogo(Size deviceSize) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        SizedBox(width: deviceSize.width * 0.4),
        Container(
          alignment: Alignment.center,
          child: Image.asset(
            'assets/nicasiaassets/logo.png',
            color: Colors.white,
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(width: deviceSize.width * 0.14),
        Container(
          alignment: Alignment.topRight,
          child: Image.asset(
            'assets/nicasiaassets/ic_sms_32.png',
            height: 30.0,
            color: Colors.white,
            fit: BoxFit.cover,
          ),
        )
      ],
    );
  }
}
