import 'package:flutter/material.dart';
import 'package:flutter_swiper_null_safety/flutter_swiper_null_safety.dart';
import 'package:flutter_ui_challenges/core/presentation/res/assets.dart';
import 'package:flutter_ui_challenges/src/pages/invitation/inlanding.dart';

class MusicPlayerTwoPage extends StatelessWidget {
  static const String path = "lib/src/pages/misc/musicplayer2.dart";

  const MusicPlayerTwoPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
        title: const Text(
          'Music Player',
          style: TextStyle(color: Colors.black),
        ),
        actions: <Widget>[
          MaterialButton(
            padding: const EdgeInsets.all(0),
            elevation: 0,
            shape: const CircleBorder(),
            onPressed: () {},
            child: CircleAvatar(
              maxRadius: 15.0,
              backgroundImage: NetworkImage(avatars[0]),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 250,
              child: Swiper(
                viewportFraction: 0.8,
                scale: 0.9,
                itemCount: 3,
                itemBuilder: (context, index) => Stack(
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(10.0),
                          image: DecorationImage(
                            image: NetworkImage(images[index]),
                            fit: BoxFit.cover,
                          )),
                    ),
                    Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.blue.withOpacity(0.5)),
                      child: const Text(
                        "Travel Series",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 24.0,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(height: 10.0),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16.0),
              color: Colors.black,
              child: Text(
                "My Playlist, 348 Songs".toUpperCase(),
                style: whiteText,
              ),
            ),
            ListTile(
              leading: const Icon(Icons.pause),
              title: const Text("Ariana Grande"),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const <Widget>[
                  Text("Daydreaming"),
                  SizedBox(height: 10.0),
                ],
              ),
              trailing: const Text("3:45"),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 70.0, right: 20),
              child: Stack(
                children: <Widget>[
                  Container(
                    width: double.infinity,
                    height: 1.0,
                    color: Colors.grey,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width - 300,
                    height: 1.0,
                    color: Colors.black,
                  ),
                ],
              ),
            ),
            const ListTile(
              leading: Icon(Icons.play_arrow),
              title: Text("Beyonce"),
              subtitle: Text("Halo"),
              trailing: Text("3:05"),
            ),
            const ListTile(
              leading: Icon(Icons.play_arrow),
              title: Text("Don't let me down"),
              subtitle: Text("Coldplay"),
              trailing: Text("3:05"),
            ),
            const ListTile(
              leading: Icon(Icons.play_arrow),
              title: Text("Just the way you are"),
              subtitle: Text("Bruno Mars"),
              trailing: Text("3:05"),
            ),
            const ListTile(
              leading: Icon(Icons.play_arrow),
              title: Text("Beyonce"),
              subtitle: Text("Halo"),
              trailing: Text("3:05"),
            ),
            const ListTile(
              leading: Icon(Icons.play_arrow),
              title: Text("Just the way you are"),
              subtitle: Text("Bruno Mars"),
              trailing: Text("3:05"),
            ),
          ],
        ),
      ),
    );
  }
}
