/**
 * Author: Damodar Lohani
 * profile: https://github.com/lohanidamodar
  */

class Announcement {
  final String title;
  final String content;
  final String github;
  final String playStore;
  final String link;
  final String image;

  Announcement(this.title, this.content, this.github, this.playStore, this.link,
      this.image);

  factory Announcement.fromMap(Map data) {
    return Announcement(data["title"], data["content"], data["github"],
        data["play_store"], data["link"], data["image"]);
  }
}
