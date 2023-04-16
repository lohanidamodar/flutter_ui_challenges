/**
 * Author: Damodar Lohani
 * profile: https://github.com/lohanidamodar
  */

import 'package:flutter/material.dart';
import 'package:flutter_ui_challenges/core/data/models/developer.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:cached_network_image/cached_network_image.dart';

import '../../constants.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const SizedBox(height: kToolbarHeight),
            Container(
              margin: const EdgeInsets.symmetric(
                vertical: 8.0,
                horizontal: 8.0,
              ),
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(color: Colors.grey.shade200),
              child: const Text(
                "Flutter UI Challenges is our effort to replicate various UIs in flutter and share it with you for free.",
                style: TextStyle(fontSize: 20.0),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: MaterialButton(
                color: Colors.white,
                elevation: 0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0)),
                padding: const EdgeInsets.all(16.0),
                onPressed: () async {
                  if (await canLaunchUrl(Uri.parse(githubRepo))) {
                    launchUrl(Uri.parse(githubRepo));
                  }
                },
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        const Icon(
                          FontAwesomeIcons.github,
                          color: Colors.red,
                        ),
                        const SizedBox(width: 10.0),
                        Text(
                          "Github",
                          style: TextStyle(
                              color: Theme.of(context).primaryColor,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10.0),
                    const Text(
                        "Find codes to all the UIs in our github repository."),
                  ],
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
              child: MaterialButton(
                color: Colors.white,
                elevation: 0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0)),
                padding: const EdgeInsets.all(16.0),
                onPressed: () async {
                  if (await canLaunchUrl(Uri.parse(youtubeChannel))) {
                    launchUrl(Uri.parse(youtubeChannel));
                  }
                },
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        const Icon(
                          FontAwesomeIcons.youtube,
                          color: Colors.red,
                        ),
                        const SizedBox(width: 10.0),
                        Text(
                          "Youtube",
                          style: TextStyle(
                              color: Theme.of(context).primaryColor,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10.0),
                    const Text(
                        "Subscribe our youtube channel to see us build some of these UIs as well as other flutter tutorials and resources."),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 10.0),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
              child: Text(
                "Contributors",
                style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold),
              ),
            ),
            ...developers.map((dev) => _buildHeader(dev)).toList(),
            const SizedBox(height: 10.0),
          ],
        ),
      ),
    );
  }

  Widget _buildHeader(Developer developer) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
      child: MaterialButton(
        padding: const EdgeInsets.all(8.0),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
        color: Colors.white,
        elevation: 0,
        onPressed: () => _open(developer.github!),
        child: Row(
          children: <Widget>[
            SizedBox(
              width: 80.0,
              height: 80.0,
              child: CircleAvatar(
                radius: 40,
                backgroundColor: Colors.pink.shade200,
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 35.0,
                  backgroundImage:
                      CachedNetworkImageProvider(developer.imageUrl!),
                ),
              ),
            ),
            const SizedBox(width: 20.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  developer.name!,
                  style: const TextStyle(
                      fontSize: 18.0, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 10.0),
                Text(developer.profession!),
                const SizedBox(height: 5.0),
                Row(
                  children: <Widget>[
                    const Icon(
                      FontAwesomeIcons.map,
                      size: 12.0,
                      color: Colors.black54,
                    ),
                    const SizedBox(width: 10.0),
                    Text(
                      developer.address!,
                      style: const TextStyle(color: Colors.black54),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  _open(String url) async {
    if (await canLaunchUrl(Uri.parse(url))) {
      launchUrl(Uri.parse(url));
    }
  }
}
