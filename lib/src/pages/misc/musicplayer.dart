/**
 * Author: Siddhartha Joshi
 * profile: https://github.com/cimplesid
  */

import 'package:flutter/material.dart';

class MusicPlayer extends StatefulWidget {
  static const String path = "lib/src/pages/misc/musicplayer.dart";

  const MusicPlayer({super.key});

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
          physics: const NeverScrollableScrollPhysics(),
          child: Stack(children: <Widget>[
            Column(
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    SizedBox(
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
                      icon: const Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
                Container(
                    height: height * 0.6,
                    decoration: const BoxDecoration(
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
                        const SizedBox(
                          height: 25,
                        ),
                        const Text(
                          ' Buffering... ',
                          style: TextStyle(color: Colors.white, fontSize: 25),
                        ),
                        _progress(),
                        Expanded(
                          child: ListView.builder(
                            physics: const BouncingScrollPhysics(
                                parent: AlwaysScrollableScrollPhysics()),
                            itemCount: 6,
                            itemBuilder: (BuildContext context, int index) {
                              return Column(
                                children: <Widget>[
                                  ListTile(
                                    onTap: () {},
                                    leading: Text(
                                      '${index + 1}.',
                                      style: const TextStyle(
                                          color: Colors.white, fontSize: 20),
                                    ),
                                    title: Text(
                                      ' Episode ${index + 1}',
                                      style: const TextStyle(
                                          color: Colors.white, fontSize: 20),
                                    ),
                                    subtitle: const Text(
                                      ' sid',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w200),
                                    ),
                                    trailing: IconButton(
                                      onPressed: () {},
                                      icon: const Icon(
                                        Icons.play_arrow,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  const Divider(
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
                translation: const Offset(0, 0.5),
                child: playerWidget(),
              ),
            ),
          ]),
        ),
      ),
    );
  }

  playerWidget() {
    return Stack(clipBehavior: Clip.none, children: <Widget>[
      Container(
        alignment: Alignment.topCenter,
        height: 35,
        width: MediaQuery.of(context).size.width * 0.7,
        margin: const EdgeInsets.only(bottom: 6),
        decoration: BoxDecoration(
            boxShadow: const [BoxShadow(blurRadius: 5)],
            borderRadius: BorderRadius.circular(50),
            color: Colors.blue),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            IconButton(
              icon: const Icon(
                Icons.skip_previous,
                color: Colors.white,
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(
                Icons.fast_rewind,
                color: Colors.white,
              ),
              onPressed: () {},
            ),
            const SizedBox(
              width: 25,
            ),
            IconButton(
                icon: const Icon(
                  Icons.fast_forward,
                  color: Colors.white,
                ),
                onPressed: () {}),
            IconButton(
              icon: const Icon(
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
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.blue,
              boxShadow: [BoxShadow(blurRadius: 5)],
            ),
            child: CircleAvatar(
              backgroundColor: Colors.blue,
              radius: 25,
              child: IconButton(
                icon: const Icon(
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
      children: const <Widget>[
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
          style: TextStyle(fontSize: 15.0, color: Colors.white),
        ),
      ],
    );
  }
}
