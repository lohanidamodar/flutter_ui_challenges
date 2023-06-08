/**
 * Author: Damodar Lohani
 * profile: https://github.com/lohanidamodar
  */

import 'package:flutter/material.dart';
import 'package:bottomreveal/bottomreveal.dart';

class AnimationTwoPage extends StatefulWidget {
  static const String path = "lib/src/pages/animations/anim2.dart";

  const AnimationTwoPage({super.key});
  @override
  _AnimationTwoPageState createState() => _AnimationTwoPageState();
}

class _AnimationTwoPageState extends State<AnimationTwoPage> {
  final BottomRevealController _menuController = BottomRevealController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bottom Reveal Example App'),
      ),
      body: BottomReveal(
        openIcon: Icons.add,
        closeIcon: Icons.close,
        revealWidth: 100,
        revealHeight: 100,
        backColor: const Color(0xff2D0C3F),
        frontColor: Colors.grey.shade200,
        rightContent: _buildRightMenu(),
        bottomContent: _buildBottomContent(),
        controller: _menuController,
        body: ListView.builder(
          padding: const EdgeInsets.all(16.0),
          itemBuilder: (_, index) => Card(
            child: ListTile(
              title: Text("Item $index"),
              leading: const Icon(Icons.cloud_circle),
            ),
          ),
        ),
      ),
    );
  }

  TextField _buildBottomContent() {
    return TextField(
      style: const TextStyle(color: Colors.white, fontSize: 18.0),
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.grey,
        contentPadding: const EdgeInsets.all(16.0),
        prefixIcon: const Icon(
          Icons.search,
          color: Colors.white,
        ),
        border: OutlineInputBorder(
            gapPadding: 8.0,
            borderSide: const BorderSide(color: Colors.grey),
            borderRadius: BorderRadius.circular(30.0)),
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
          color: const Color(0xff644B77),
          elevation: 0,
          onPressed: () {
            _menuController.close!();
          },
          child: const Icon(
            Icons.video_library,
            size: 50,
          ),
        ),
        const SizedBox(height: 10.0),
        MaterialButton(
          height: 60.0,
          padding: const EdgeInsets.all(0),
          textColor: Colors.white,
          minWidth: 60,
          color: const Color(0xff644B77),
          elevation: 0,
          onPressed: () {
            _menuController.close!();
          },
          child: const Icon(
            Icons.photo,
            size: 50,
          ),
        ),
        const SizedBox(height: 10.0),
        MaterialButton(
          height: 60.0,
          padding: const EdgeInsets.all(0),
          textColor: Colors.white,
          minWidth: 60,
          color: const Color(0xff644B77),
          elevation: 0,
          onPressed: () {
            _menuController.close!();
          },
          child: const Icon(
            Icons.camera_alt,
            size: 30,
          ),
        ),
      ],
    );
  }
}
