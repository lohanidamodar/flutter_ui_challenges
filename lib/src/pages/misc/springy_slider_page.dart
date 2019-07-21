/**
 * Author: Damodar Lohani
 * profile: https://github.com/lohanidamodar
  */
  
import 'package:flutter/material.dart';
import 'package:flutter_ui_challenges/src/widgets/springy_slider/springy_slider.dart';

class SpringySliderPage extends StatelessWidget {
  static final String path = "lib/src/pages/misc/springy_slider_page.dart";
  _buildTextButton(String title, bool isOnLight) {
    return FlatButton(
      padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
      onPressed: (){},
      child: Text(title.toUpperCase(),
        style: TextStyle(fontSize: 12.0, fontWeight: FontWeight.bold, color: isOnLight ? Colors.pink : Colors.white)
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.all(Radius.circular(20.0)),
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          brightness: Brightness.light,
          backgroundColor: Colors.white,
          elevation: 0,
          textTheme: TextTheme(
            title: TextStyle(color: Colors.pink, fontWeight: FontWeight.bold, fontSize: 18.0)
          ),
          iconTheme: IconThemeData(
            color: Colors.pink
          ),
          leading: IconButton(icon: Icon(Icons.menu), onPressed: (){},),
          actions: <Widget>[
            _buildTextButton("Settings", true)
          ],
        ),
        body: Column(
          children: <Widget>[
            Expanded(
              child: Center(
                child: SpringySlider(
                  markCount: 12,
                  positiveColor: Colors.pink,
                  negativeColor: Colors.white
                ),
              ),
            ),
            Container(
              color: Colors.pink,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  _buildTextButton("More", false),
                  _buildTextButton("Stats", false)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}