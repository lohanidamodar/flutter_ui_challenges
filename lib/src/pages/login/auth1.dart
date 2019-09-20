/**
 * Author: Damodar Lohani
 * profile: https://github.com/lohanidamodar
  */
  
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_ui_challenges/core/presentation/res/assets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AuthOnePage extends StatelessWidget {
  static final String path = "lib/src/pages/login/auth1.dart";
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Expanded(
              child: Stack(
                children: <Widget>[
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.pink,
                      image: DecorationImage(image: CachedNetworkImageProvider(backgroundImages[2]), fit: BoxFit.cover),
                    ),
                    foregroundDecoration: BoxDecoration(
                      color: Colors.pink.withAlpha(100)
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(16.0),
                    width: double.infinity,
                    child: Column(
                      children: <Widget>[
                        Spacer(flex: 2,),
                        Text("existing members", style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16.0,
                          color: Colors.white
                        ),),
                        SizedBox(height: 10.0),
                        SizedBox(
                          width: double.infinity,
                          child: RaisedButton(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.0)
                            ),
                            padding: const EdgeInsets.all(16.0),
                            color: Colors.white,
                            child: Text("Login", style: TextStyle(
                              color: Colors.pink
                            ),),
                            onPressed: (){},
                          ),
                        ),
                        Spacer()
                      ],
                    ),
                  ),
                ],
              ),),
            Expanded(child: Container(
              padding: const EdgeInsets.all(16.0),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white
              ),
              child: Column(
                children: <Widget>[
                  Spacer(),
                  Text("or if you are new here"),
                  SizedBox(height: 10.0),
                  SizedBox(
                    width: double.infinity,
                    child: RaisedButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0)
                      ),
                      padding: const EdgeInsets.all(16.0),
                      color: Colors.pink,
                      child: Text("Sign up", style: TextStyle(
                        color: Colors.white
                      ),),
                      onPressed: (){},
                    ),
                  ),
                  SizedBox(height: 20.0),
                  Text("or continue with"),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      RaisedButton.icon(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(2.0)
                        ),
                        color: Colors.red,
                        icon: Icon(FontAwesomeIcons.google, color: Colors.white,),
                        label: Text("Google", style: TextStyle(color: Colors.white),),
                        onPressed: () {},
                      ),
                      SizedBox(width: 10.0),
                      RaisedButton.icon(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(2.0)
                        ),
                        color: Colors.indigo,
                        icon: Icon(FontAwesomeIcons.facebook, color: Colors.white,),
                        label: Text("Facebook", style: TextStyle(color: Colors.white),),
                        onPressed: () {},
                      ),
                    ],
                  ),
                  Spacer(flex: 2,)
                ],
              ),
            ),)
          ],
        ),
      ),
    );
  }
}