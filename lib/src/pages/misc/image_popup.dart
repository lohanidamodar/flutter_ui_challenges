/**
 * Author: Damodar Lohani
 * profile: https://github.com/lohanidamodar
  */

import 'package:flutter/material.dart';
import 'package:flutter_ui_challenges/core/presentation/res/assets.dart';
import 'package:flutter_ui_challenges/src/widgets/network_image.dart';

class ImagePopupPage extends StatelessWidget {
  static final String path = "lib/src/pages/misc/image_popup.dart";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image popup'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: <Widget>[
          Text("Tap on the image to view the preview"),
          const SizedBox(height: 10.0),
          GestureDetector(
            onTap: () => _showImageDialog(context, mountEverest),
            child: Container(
              height: 100,
              child: PNetworkImage(
                mountEverest,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: 10.0),
          GestureDetector(
            onTap: () => _showImageDialog(context, devDamodar),
            child: Container(
              height: 100,
              child: PNetworkImage(
                devDamodar,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: 10.0),
          GestureDetector(
            onTap: () => _showImageDialog(context, avatars[1]),
            child: Container(
              height: 100,
              child: PNetworkImage(
                avatars[1],
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }

  _showImageDialog(BuildContext context, String image) {
    showDialog(
      context: context,
      builder: (_) => Dialog(
        elevation: 0,
        backgroundColor: Colors.transparent,
        child: Column(
          children: <Widget>[
            Expanded(
              child: Container(
                width: double.infinity,
                child: PNetworkImage(
                  image,
                  fit: BoxFit.contain,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                IconButton(
                  color: Colors.white,
                  icon: Icon(Icons.close),
                  onPressed: () => Navigator.pop(context),
                ),
                const SizedBox(width: 10.0),
                IconButton(
                  color: Colors.white,
                  icon: Icon(Icons.share),
                  onPressed: () {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
