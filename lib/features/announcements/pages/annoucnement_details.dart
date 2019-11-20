/**
 * Author: Damodar Lohani
 * profile: https://github.com/lohanidamodar
  */

import 'package:flutter/material.dart';
import 'package:flutter_ui_challenges/features/announcements/data/model/announcement.dart';
import 'package:flutter_ui_challenges/src/widgets/network_image.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class AnnouncementDetails extends StatelessWidget {
  final Announcement announcement;

  const AnnouncementDetails({Key key, this.announcement}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(announcement.title),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            if (announcement.image != null) ...[
              Container(
                  alignment: Alignment.center,
                  child: PNetworkImage(
                    announcement.image,
                    fit: BoxFit.contain,
                  )),
              const SizedBox(height: 20.0),
            ],
            if (announcement.content != null) ...[
              Text(
                announcement.content,
                style: TextStyle(fontSize: 16.0),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(height: 10.0),
            ],
            Wrap(
              children: <Widget>[
                if (announcement.link != null) ...[
                  RaisedButton.icon(
                    icon: Icon(Icons.open_in_new),
                    label: Text("View"),
                    onPressed: () {
                      launch(announcement.link);
                    },
                  ),
                  const SizedBox(width: 5.0),
                ],
                if (announcement.github != null) ...[
                  RaisedButton.icon(
                    icon: Icon(FontAwesomeIcons.github),
                    label: Text("Source"),
                    onPressed: () {
                      launch(announcement.github);
                    },
                  ),
                  const SizedBox(width: 5.0),
                ],
                if (announcement.github != null) ...[
                  RaisedButton.icon(
                    icon: Icon(FontAwesomeIcons.googlePlay),
                    label: Text("Play Store"),
                    onPressed: () {
                      launch(announcement.playStore);
                    },
                  ),
                  const SizedBox(width: 5.0),
                ],
              ],
            ),
          ],
        ),
      ),
    );
  }
}
