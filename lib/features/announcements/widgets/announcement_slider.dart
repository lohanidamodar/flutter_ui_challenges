/**
 * Author: Damodar Lohani
 * profile: https://github.com/lohanidamodar
  */

import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:flutter_ui_challenges/features/announcements/data/model/announcement.dart';

import 'announcement_list_item.dart';

class AnnouncementSlider extends StatelessWidget {
  const AnnouncementSlider({
    Key key,
    @required this.news,
  }) : super(key: key);

  final List<Announcement> news;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      child: Swiper(
        viewportFraction: 0.8,
        itemCount: news.length,
        loop: false,
        itemBuilder: (context, index) {
          Announcement newsItem = news[index];
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
                elevation: 0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)),
                margin: const EdgeInsets.all(0),
                child: AnnouncementListItem(announcement: newsItem)),
          );
        },
      ),
    );
  }
}
