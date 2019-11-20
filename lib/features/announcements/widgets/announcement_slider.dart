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
      height: 140,
      color: Theme.of(context).primaryColor,
      child: Card(
        margin: const EdgeInsets.all(8.0),
        child: Swiper(
          itemHeight: 120,
          itemCount: news.length,
          itemBuilder: (context, index) {
            Announcement newsItem = news[index];
            return AnnouncementListItem(announcement: newsItem);
          },
          pagination: SwiperPagination(
            builder: DotSwiperPaginationBuilder(
              color: Colors.grey,
            ),
          ),
        ),
      ),
    );
  }
}
