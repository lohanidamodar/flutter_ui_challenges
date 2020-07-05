/**
 * Author: Damodar Lohani
 * profile: https://github.com/lohanidamodar
  */
  
import 'package:flutter/material.dart';
import 'package:flutter_ui_challenges/core/presentation/res/assets.dart';
import 'package:flutter_ui_challenges/src/widgets/network_image.dart';

class LoginOnePage extends StatelessWidget {
  static final String path = "lib/src/pages/login/login1.dart";
  Widget _buildPageContent() {
    return Container(
      padding: EdgeInsets.all(20.0),
      color: Colors.grey.shade800,
      child: ListView(
        children: <Widget>[
          Column(
            children: <Widget>[
              SizedBox(height: 50,),
              Container(width: 200, child: PNetworkImage(rocket),),
              SizedBox(height: 50,),
              ListTile(
                title: TextField(
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    hintText: "Email address:",
                    hintStyle: TextStyle(color: Colors.white70),
                    border: InputBorder.none,
                    icon: Icon(Icons.email, color: Colors.white30,)
                  ),
                )
              ),
              Divider(color: Colors.grey.shade600,),
              ListTile(
                title: TextField(
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    hintText: "Password:",
                    hintStyle: TextStyle(color: Colors.white70),
                    border: InputBorder.none,
                    icon: Icon(Icons.lock, color: Colors.white30,)
                  ),
                )
              ),
              Divider(color: Colors.grey.shade600,),
              SizedBox(height: 20,),
              Row(
                children: <Widget>[
                  Expanded(
                    child: RaisedButton(
                      onPressed: (){},
                      color: Colors.cyan,
                      child: Text('Login', style: TextStyle(color: Colors.white70, fontSize: 16.0),),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 40,),
              Text('Forgot your password?', style: TextStyle(color: Colors.grey.shade500),)
            ],
          ),
        ],
      ),
    );
  }

  @override
    Widget build(BuildContext context) {
      return Scaffold(
        body: _buildPageContent(),
      );
    }
}