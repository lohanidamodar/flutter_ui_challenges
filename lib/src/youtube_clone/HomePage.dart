/**
 * Author: Aparna Dulal
 * profile: https://github.com/Ambikadulal
  */
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  static const String path = 'lib/src/youtube_clone/HomePage.dart';
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Widget eachvideo(String assets, String title) {
    return Column(
      children: <Widget>[
        Stack(
          children: <Widget>[
            Image.asset(assets),
            Positioned.fill(
              bottom: 10.0,
              right: 10.0,
              child: Align(
                alignment: Alignment.bottomRight,
                child: Container(
                  color: Colors.white,
                  padding: EdgeInsets.all(4.0),
                  child: Text(
                    "20:10",
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 5.0,
        ),
        Container(
          color: Colors.black,
          child: ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://cdn.logo.com/hotlink-ok/logo-social.png'),
            ),
            title: Text(
              "$title",
              textAlign: TextAlign.end,
              style: TextStyle(
                color: Colors.white70,
              ),
            ),
            subtitle: Text(
              "React Bits- 2000 Views - 10 Hour",
              style: TextStyle(
                color: Colors.white70,
              ),
            ),
            trailing: Icon(Icons.more_vert, color: Colors.white),
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
            eachvideo("assets/smwallet/logo.png", "Working With Databases "),
            eachvideo("assets/smwallet/wallet1.png", "Working With Databases "),
          ],
        ),
      ),
    );
  }
}

AppBar topbar = AppBar(
  backgroundColor: Colors.black,
  title: Image.network(
    'https://cdn3.iconfinder.com/data/icons/2018-social-media-logotypes/1000/2018_social_media_popular_app_logo_youtube-512.png',
    height: 30,
    fit: BoxFit.cover,
    width: 30.0,
  ),
  actions: <Widget>[
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
