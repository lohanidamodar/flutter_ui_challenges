/**
 * Author: Damodar Lohani
 * profile: https://github.com/lohanidamodar
  */
  
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui_challenges/core/presentation/res/assets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AvocadoPage extends StatelessWidget {
  static final String path = "lib/src/pages/food/avocado.dart";
  final String image = avocadoF;


  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            height: 450,
            decoration: BoxDecoration(
              image: DecorationImage(image: CachedNetworkImageProvider(image),fit: BoxFit.cover)
            ),
          ),
          AppBar(
            elevation: 0,
            backgroundColor: Colors.transparent,
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.more_vert),
                onPressed: (){},
              )
            ],
          ),
          Positioned(
            top: 380,
            left: 0,
            right: 0,
            child: Container(
              padding: const EdgeInsets.all(30.0),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(60.0),
                  topRight: Radius.circular(60.0)
                )
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("Avocado", style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold
                  ),),
                  SizedBox(height: 10.0),
                  Text("\$1.80 / Kg", style: TextStyle(
                    fontSize: 16.0
                  ),),
                  Row(
                    children: <Widget>[
                      Text("100 gms for 1-2 pieces", style: TextStyle(
                        color: Colors.grey.shade700
                      ),),
                      Spacer(),
                      Icon(FontAwesomeIcons.fire, size: 14.0, color: Colors.pink.shade300,),
                      Text("160"),
                    ],
                  ),
                  SizedBox(height: 20.0),
                  Slider(
                    onChanged: (value){},
                    min: 1,
                    max: 5,
                    value: 1.5,

                  ),
                  Row(
                    children: <Widget>[
                      Text("1.5 kg (12-14 pieces approx.)", style: TextStyle(
                        color: Colors.grey.shade700
                      )),
                      Spacer(),
                      Text("\$ 2.70", style: TextStyle(
                        fontSize: 16.0
                      ),),
                    ],
                  ),
                  SizedBox(height: 20.0),
                  SizedBox(width: double.infinity,
                    child: RaisedButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0)
                      ),
                      color: Colors.pink.shade200,
                      textColor: Colors.white,
                      child: Text("Add to Cart"),
                      onPressed: (){},
                    )
                  ),
                  SizedBox(height: 10.0),
                  Center(child: Icon(Icons.keyboard_arrow_up)),
                  Center(child: Text("Know More", style: TextStyle(
                    color: Colors.pink.shade300
                  ),),),
                ],
              ),
            ),
          ),
          Positioned(
            top: 365,
            right: 40,
            child: CircleAvatar(
              radius: 20.0,
              foregroundColor: Colors.grey,
              backgroundColor: Colors.grey.shade200,
              child: Icon(Icons.favorite_border)),
          )
        ],
      ),
    );
  }
}