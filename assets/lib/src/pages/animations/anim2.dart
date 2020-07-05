/**
 * Author: Damodar Lohani
 * profile: https://github.com/lohanidamodar
  */
  
import 'package:flutter/material.dart';
import 'package:bottomreveal/bottomreveal.dart';


class AnimationTwoPage extends StatefulWidget {
  static final String path = "lib/src/pages/animations/anim2.dart";
  @override
  _AnimationTwoPageState createState() => _AnimationTwoPageState();
}

class _AnimationTwoPageState extends State<AnimationTwoPage> {
  final BottomRevealController _menuController = BottomRevealController();
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Bottom Reveal Example App'),
      ),
      body: BottomReveal(
        openIcon: Icons.add,
        closeIcon: Icons.close,
        revealWidth: 100,
        revealHeight: 100,
        backColor: Color(0xff2D0C3F),
        frontColor: Colors.grey.shade200,
        rightContent: _buildRightMenu(),
        bottomContent: _buildBottomContent(),
        controller: _menuController,
        body: ListView.builder(
          padding: const EdgeInsets.all(16.0),
          itemBuilder: (_,index)=>Card(
            child: ListTile(
              title: Text("Item $index"),
              leading: Icon(Icons.cloud_circle),
            ),
          ),
        ),
      ),
    );
  }

  TextField _buildBottomContent() {
    return TextField(
        style: TextStyle(
          color: Colors.white,
          fontSize: 18.0
        ),
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.grey,
          contentPadding: const EdgeInsets.all(16.0),
          prefixIcon: Icon(Icons.search, color: Colors.white,),
          border: OutlineInputBorder(
            gapPadding: 8.0,
            borderSide: BorderSide(color: Colors.grey),
            borderRadius: BorderRadius.circular(30.0)
          ),
        ),
      );
  }

  Column _buildRightMenu() {
    return Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          MaterialButton(
            height: 60.0,
            padding: const EdgeInsets.all(0),
            textColor: Colors.white,
            minWidth: 60,
            child: Icon(Icons.video_library, size: 50,),
            color: Color(0xff644B77),
            elevation: 0,
            onPressed:() {
              _menuController.close();
            },
          ),
          const SizedBox(height: 10.0),
          MaterialButton(
            height: 60.0,
            padding: const EdgeInsets.all(0),
            textColor: Colors.white,
            minWidth: 60,
            child: Icon(Icons.photo, size: 50,),
            color: Color(0xff644B77),
            elevation: 0,
            onPressed:() {
              _menuController.close();
            },
          ),
          const SizedBox(height: 10.0),
          MaterialButton(
            height: 60.0,
            padding: const EdgeInsets.all(0),
            textColor: Colors.white,
            minWidth: 60,
            child: Icon(Icons.camera_alt, size: 30,),
            color: Color(0xff644B77),
            elevation: 0,
            onPressed:() {
              _menuController.close();
            },
          ),
        ],
      );
  }
}
