
/**
 * Author: Damodar Lohani
 * profile: https://github.com/lohanidamodar
  */
  
import 'package:flutter/material.dart';
import 'dart:io';
import 'package:flutter_ui_challenges/core/presentation/res/assets.dart';
import 'package:cached_network_image/cached_network_image.dart';

class RecipeDetailsPage extends StatelessWidget {
  static final String path = "lib/src/pages/food/recipe_details.dart";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Platform.isIOS ? Icons.arrow_back_ios : Icons.arrow_back, color: Colors.black,),
          onPressed: ()=>Navigator.of(context).pop(),
        ),
        actions: <Widget>[
          FlatButton.icon(
            icon: Icon(Icons.play_circle_filled, color: Colors.red),
            label: Text("Watch Recipe"),
            onPressed: (){},
          )
        ],
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: ListView(
              padding: EdgeInsets.all(20.0),
              children: <Widget>[
                Text("French\nToast".toUpperCase(), style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.w600
                ),),
                SizedBox(height: 16.0,),
                Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent lacinia, odio ut placerat finibus, ipsum risus consectetur ligula, non mattis mi neque ac mi."),
                SizedBox(height: 20.0,),
                Container(
                  height: 30,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(Icons.memory),
                            SizedBox(width: 5.0,),
                            Text("65%")
                          ],
                        ),
                      ),
                      VerticalDivider(),
                      Expanded(
                        child: Text("Vegetarian",textAlign: TextAlign.center,),
                      ),
                      VerticalDivider(),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(Icons.timer),
                            SizedBox(width: 5.0,),
                            Text("10 min")
                          ],
                        ),
                      ),
                      
                    ],
                  ),
                ),
                SizedBox(height: 20.0,),
                _buildStep(
                  leadingTitle: "01",
                  title: "Step".toUpperCase(),
                  content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent lacinia, odio ut placerat finibus, ipsum risus consectetur ligula, non mattis mi neque ac mi. Vivamus quis tellus sed erat eleifend pharetra ac non diam. Integer vitae ipsum congue, vestibulum eros quis, interdum tellus. Nunc vel dictum elit. Curabitur suscipit scelerisque."

                ),
                SizedBox(height: 30.0,),
                _buildStep(
                  leadingTitle: "02",
                  title: "Step".toUpperCase(),
                  content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent lacinia, odio ut placerat finibus, ipsum risus consectetur ligula, non mattis mi neque ac mi. Vivamus quis tellus sed erat eleifend pharetra ac non diam. Integer vitae ipsum congue, vestibulum eros quis, interdum tellus. Nunc vel dictum elit. Curabitur suscipit scelerisque."

                ),
                SizedBox(height: 30.0,),
                _buildStep(
                  leadingTitle: "03",
                  title: "Step".toUpperCase(),
                  content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent lacinia, odio ut placerat finibus, ipsum risus consectetur ligula, non mattis mi neque ac mi. Vivamus quis tellus sed erat eleifend pharetra ac non diam. Integer vitae ipsum congue, vestibulum eros quis, interdum tellus. Nunc vel dictum elit. Curabitur suscipit scelerisque."

                ),
              ],
            ),
          ),
          Material(
            elevation: 10.0,
            color: Colors.white,
            child: Container(
              padding: EdgeInsets.all(10.0),
              height: 80,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  _buildBottomImage(breakfast),
                  SizedBox(width: 10.0,),                  
                  _buildBottomImage(meal),
                  SizedBox(width: 10.0,),
                  _buildBottomImage(burger),
                  SizedBox(width: 10.0,),
                  _buildBottomImage(frenchFries),
                  SizedBox(width: 10.0,),
                  _buildBottomImage(fries),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Container _buildBottomImage(String image) {
    return Container(
                  width: 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    image: DecorationImage(image: CachedNetworkImageProvider(image),fit:BoxFit.cover)

                  ),
                );
  }

  Widget _buildStep({String leadingTitle, String title, String content}) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Material(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
          color: Colors.red,
          child: Container(
            padding: EdgeInsets.all(5.0),
            child: Text(leadingTitle, style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 18.0
            )),
          ),
        ),
        SizedBox(width: 16.0,),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(title, style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18.0
              )),
              SizedBox(height: 10.0,),
              Text(content),
            ],
          ),
        )
      ],
    );
  }
}