/**
 * Author: Ambika Dulal
 * profile: https://github.com/Ambikadulal
  */
import 'package:flutter/material.dart';

class YoutubeHomePage extends StatefulWidget {
  static const String path = "lib/src/pages/misc/youtube_homepage.dart";

  const YoutubeHomePage({super.key});
  @override
  _YoutubeHomePageState createState() => _YoutubeHomePageState();
}

class _YoutubeHomePageState extends State<YoutubeHomePage> {
  Widget eachvideo(String assets, String title) {
    return Column(
      children: <Widget>[
        Stack(
          children: <Widget>[
            Image.network(assets),
            Positioned.fill(
              bottom: 10.0,
              right: 10.0,
              child: Align(
                alignment: Alignment.bottomRight,
                child: Container(
                  color: Colors.white,
                  padding: const EdgeInsets.all(4.0),
                  child: const Text(
                    "20:10",
                  ),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 5.0,
        ),
        Container(
          color: Colors.black,
          child: ListTile(
            leading: const CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://cdn.logo.com/hotlink-ok/logo-social.png'),
            ),
            title: Text(
              title,
              textAlign: TextAlign.start,
              style: const TextStyle(
                color: Colors.white70,
              ),
            ),
            subtitle: const Text(
              "News Khabar- 2000 Views - 10 Hour",
              style: TextStyle(
                color: Colors.white70,
              ),
            ),
            trailing: const Icon(Icons.more_vert, color: Colors.white),
          ),
        ),
        SizedBox(
          height: 10.0,
          child: Container(
            color: Colors.black,
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: topbar,
      bottomNavigationBar: bottomappbar,
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            eachvideo(
                "https://firebasestorage.googleapis.com/v0/b/dl-flutter-ui-challenges.appspot.com/o/travel%2Fpashupatinath.jpg?alt=media",
                "About PasupatiNath Temple "),
            eachvideo(
                "https://firebasestorage.googleapis.com/v0/b/dl-flutter-ui-challenges.appspot.com/o/travel%2Fkathmandu2.jpg?alt=media",
                "Capital of Nepal "),
          ],
        ),
      ),
    );
  }
}

AppBar topbar = AppBar(
  backgroundColor: Colors.black,
  title: Image.network(
    'https://cdn.logo.com/hotlink-ok/logo-social.png',
    height: 30,
    fit: BoxFit.cover,
    width: 30.0,
  ),
  actions: const <Widget>[
    Padding(
      padding: EdgeInsets.only(right: 20.0),
      child: Icon(
        Icons.videocam,
      ),
    ),
    Padding(
      padding: EdgeInsets.only(right: 20.0),
      child: Icon(
        Icons.search,
      ),
    ),
    Padding(
      padding: EdgeInsets.only(right: 20.0),
      child: Icon(
        Icons.account_circle,
      ),
    ),
  ],
);

Color normalcolor = Colors.white24;
Color selectedcolor = Colors.white;

BottomAppBar bottomappbar = BottomAppBar(
  color: Colors.black,
  child: Container(
    color: Colors.black,
    height: 55.0,
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Icon(
              Icons.home,
              color: selectedcolor,
            ),
            Text(
              "Home",
              style: TextStyle(color: selectedcolor),
            ),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Icon(
              Icons.whatshot,
              color: normalcolor,
            ),
            Text(
              "Trending",
              style: TextStyle(color: normalcolor),
            ),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Icon(
              Icons.subscriptions,
              color: normalcolor,
            ),
            Text(
              "Subscriptions",
              style: TextStyle(color: normalcolor),
            ),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Icon(
              Icons.email,
              color: normalcolor,
            ),
            Text(
              "Inbox",
              style: TextStyle(color: normalcolor),
            ),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Icon(
              Icons.folder,
              color: normalcolor,
            ),
            Text(
              "Library",
              style: TextStyle(color: normalcolor),
            ),
          ],
        ),
      ],
    ),
  ),
);
