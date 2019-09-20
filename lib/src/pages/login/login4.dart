/**
 * Author: Damodar Lohani
 * profile: https://github.com/lohanidamodar
  */
  
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_ui_challenges/core/presentation/res/assets.dart';

class LoginFourPage extends StatelessWidget {
  static final String path = "lib/src/pages/login/login4.dart";
  final String background = loginBack;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: CachedNetworkImageProvider(background),
                  fit: BoxFit.cover
                )
              ),
            ),
            Container(
              padding: EdgeInsets.all(20.0),
              color: Colors.black.withOpacity(0.7),
            ),
            SingleChildScrollView(
              padding: EdgeInsets.all(20.0),
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.vertical,
              child: Container(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      SizedBox(height: 100.0,),
                      Text("Welcome Back", style: TextStyle(
                        color: Colors.white,
                        fontSize: 28.0
                      ),),
                      Text("Sign in to continue", style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.0
                      ),),
                      SizedBox(height: 30.0,),
                      TextField(
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          hintText: "Username",
                          hintStyle: TextStyle(color: Colors.white70),
                          enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white54))
                        ),
                      ),
                      SizedBox(height: 10.0,),
                      TextField(
                        obscureText: true,
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          hintText: "Password",
                          hintStyle: TextStyle(color: Colors.white70),
                          enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white54))
                        ),
                      ),
                      SizedBox(height: 20.0,),
                      GestureDetector(
                        onTap: (){},
                        child: Text("Forgot your password?", style: TextStyle(
                          color: Colors.white
                        ),),
                      ),

                      SizedBox(
                        width: double.infinity,
                        child: RaisedButton(
                          child: Text("Sigi In".toUpperCase()),
                          onPressed: (){},
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text("Dont have an account?", style: TextStyle(
                            color: Colors.white,
                            fontSize: 16.0
                          ),),
                          SizedBox(width: 10.0,),
                          GestureDetector(
                            onTap: (){},
                            child: Text("SIGN UP",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16.0
                            ),),
                          ),
                        ],
                      ),
                    ],
                  ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}