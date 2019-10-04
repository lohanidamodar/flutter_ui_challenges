/**
 * Author: Siddhartha Joshi
 * profile: https://github.com/cimplesid
  */

import 'package:flutter/material.dart';

class MusicPlayer extends StatefulWidget {
  static final String path = "lib/src/pages/misc/musicplayer.dart";

  @override
  _PodcastPlayerState createState() => _PodcastPlayerState();
}

class _PodcastPlayerState extends State<MusicPlayer> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double topHeight = height * 0.4;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: NeverScrollableScrollPhysics(),
          child: Stack(children: <Widget>[
            Column(
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    Container(
                      height: topHeight,
                      width: MediaQuery.of(context).size.width,
                      child: Image.asset(
                        'assets/hotel/room2.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
                Container(
                    height: height * 0.6,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        stops: [0, 0.5, 1],
                        colors: [
                          Color(0xFF014F82),
                          Color(0xff00395f),
                          Color(0xFF001726)
                        ],
                      ),
                    ),
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                          height: 25,
                        ),
                        Text(
                          ' Buffering... ',
                          style: TextStyle(color: Colors.white, fontSize: 25),
                        ),
                        _progress(),
                        Expanded(
                          child: ListView.builder(
                            physics: BouncingScrollPhysics(
                                parent: AlwaysScrollableScrollPhysics()),
                            itemCount: 6,
                            itemBuilder: (BuildContext context, int index) {
                              return Column(
                                children: <Widget>[
                                  ListTile(
                                    onTap: () {},
                                    leading: Text(
                                      '${index + 1}.',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 20),
                                    ),
                                    title: Text(
                                      ' Episode ${index + 1}',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 20),
                                    ),
                                    subtitle: Text(
                                      ' sid',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w200),
                                    ),
                                    trailing: IconButton(
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.play_arrow,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  Divider(
                                    height: 1,
                                    color: Colors.white,
                                  ),
                                ],
                              );
                            },
                          ),
                        ),
                      ],
                    ))
              ],
            ),
            Positioned(
              left: MediaQuery.of(context).size.width * 0.15,
              top: topHeight - 35,
              child: FractionalTranslation(
                translation: Offset(0, 0.5),
                child: playerWidget(),
              ),
            ),
          ]),
        ),
      ),
    );
  }

  playerWidget() {
    return Stack(overflow: Overflow.visible, children: <Widget>[
      Container(
        alignment: Alignment.topCenter,
        height: 35,
        width: MediaQuery.of(context).size.width * 0.7,
        margin: EdgeInsets.only(bottom: 6),
        decoration: BoxDecoration(
            boxShadow: [BoxShadow(blurRadius: 5)],
            borderRadius: BorderRadius.circular(50),
            color: Colors.blue),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            IconButton(
              icon: Icon(
                Icons.skip_previous,
                color: Colors.white,
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(
                Icons.fast_rewind,
                color: Colors.white,
              ),
              onPressed: () {},
            ),
            SizedBox(
              width: 25,
            ),
            IconButton(
                icon: Icon(
                  Icons.fast_forward,
                  color: Colors.white,
                ),
                onPressed: () {}),
            IconButton(
              icon: Icon(
                Icons.skip_next,
                color: Colors.white,
              ),
              onPressed: () {},
            ),
          ],
        ),
      ),
      Positioned(
        left: 77,
        right: 77,
        bottom: 2,
        child: Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.blue,
              boxShadow: [BoxShadow(blurRadius: 5)],
            ),
            child: CircleAvatar(
              backgroundColor: Colors.blue,
              radius: 25,
              child: IconButton(
                icon: Icon(
                  Icons.play_arrow,
                  color: Colors.white,
                ),
                onPressed: () {},
              ),
            )),
      ),
    ]);
  }

  Widget _progress() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Text(
          '00:00',
          style: TextStyle(fontSize: 15.0, color: Colors.white),
        ),
        Expanded(
            child: Divider(
          height: 5,
          color: Colors.white,
        )),
        SizedBox(
          width: 3,
        ),
        Text(
          '00:00',
          style: new TextStyle(fontSize: 15.0, color: Colors.white),
        ),
      ],
    );
  }
}
