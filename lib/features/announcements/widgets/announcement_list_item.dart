/**
 * Author: Damodar Lohani
 * profile: https://github.com/lohanidamodar
  */

import 'package:flutter/material.dart';
import 'package:flutter_ui_challenges/features/announcements/data/model/announcement.dart';
import 'package:flutter_ui_challenges/features/announcements/pages/annoucnement_details.dart';
import 'package:flutter_ui_challenges/src/pages/invitation/inauth.dart';
import 'package:flutter_ui_challenges/src/widgets/network_image.dart';

class AnnouncementListItem extends StatelessWidget {
  const AnnouncementListItem({
    Key key,
    @required this.announcement,
  }) : super(key: key);

  final Announcement announcement;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
              builder: (_) => AnnouncementDetails(
                    announcement: announcement,
                  ))),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Stack(
          children: <Widget>[
            Row(
              children: <Widget>[
                if (announcement.image != null) ...[
                  PNetworkImage(
                    announcement.image,
                    width: 80.0,
                  ),
                  const SizedBox(width: 10.0),
                ],
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        announcement.title,
                        style: boldText,
                      ),
                      const SizedBox(height: 5.0),
                    ],
                  ),
                ),
              ],
            ),
            Align(
                alignment: Alignment.bottomRight,
                child: Icon(Icons.open_in_new)),
          ],
        ),
      ),
    );
  }
}
