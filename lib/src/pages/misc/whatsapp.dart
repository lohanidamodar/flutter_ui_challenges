/**
 * Author: Ambika Dulal
 * profile: https://github.com/Ambikadulal
 * design source:whatsapp
  */
import 'package:flutter/material.dart';

class WhatsAppClone extends StatefulWidget {
  static const String path = "lib/src/pages/misc/whatsapp.dart";

  const WhatsAppClone({super.key});

  @override
  _WhatsAppCloneState createState() => _WhatsAppCloneState();
}

class _WhatsAppCloneState extends State<WhatsAppClone> {
  Color mainColor = const Color(0xFF177767);
  var containerRadius = const Radius.circular(30.0);
  List<String> imageUrl = [
    "https://cdn.pixabay.com/photo/2019/08/06/08/26/man-4387721__340.jpg",
    "https://cdn.pixabay.com/photo/2017/02/23/13/05/profile-2092113__340.png",
    "https://cdn.pixabay.com/photo/2017/09/12/19/31/girl-2743378__340.png",
    "https://cdn.pixabay.com/photo/2016/05/17/22/16/baby-1399332__340.jpg",
    "https://cdn.pixabay.com/photo/2016/02/17/00/09/girl-looking-profile-1204289__340.jpg",
    "https://cdn.pixabay.com/photo/2016/10/07/19/59/profile-1722502__340.jpg",
    "https://cdn.pixabay.com/photo/2019/07/10/11/45/girl-4328462__340.jpg",
    "https://cdn.pixabay.com/photo/2016/08/31/02/10/girl-1632515__340.jpg",
    "https://cdn.pixabay.com/photo/2016/08/31/02/10/girl-1632515__340.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor,
      appBar: AppBar(
        elevation: 0.0,
        title: const Text("WhatsApp Clone"),
        backgroundColor: mainColor,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_horiz),
          ),
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            height: 100.0,
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  storyButton(imageUrl[0], "Annupriya  "),
                  storyButton(imageUrl[1], "dev"),
                  storyButton(imageUrl[2], "Pujali"),
                  storyButton(imageUrl[3], "Dipen "),
                  storyButton(imageUrl[4], "Anjila"),
                  storyButton(imageUrl[5], "Arunim"),
                  storyButton(imageUrl[6], "Prience"),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: containerRadius, topRight: containerRadius),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.only(left: 12.0, right: 12.0, top: 10.0),
                child: ListView(
                  children: [
                    chatTile(imageUrl[0], "userName", "msg", "9Am", false),
                    chatTile(imageUrl[1], "userName", "msg", "8Am", true),
                    chatTile(imageUrl[2], "userName", "msg", "6Am", true),
                    chatTile(
                        imageUrl[3], "userName", "msg", "Yesterday", false),
                    chatTile(
                        imageUrl[5], "userName", "msg", "Yesterday", false),
                    chatTile(imageUrl[4], "userName", "msg", "San 20", true),
                    chatTile(imageUrl[6], "userName", "msg", "San20", true),
                    chatTile(imageUrl[7], "userName", "msg", "San20", true),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

Widget storyButton(String imgUrl, String userName) {
  return Padding(
    padding: const EdgeInsets.only(right: 10.0),
    child: Column(
      children: [
        CircleAvatar(
          backgroundImage: NetworkImage(imgUrl),
          radius: 26.0,
        ),
        const SizedBox(
          height: 5.0,
        ),
        Text(
          userName,
          style: const TextStyle(color: Colors.white),
        ),
      ],
    ),
  );
}

Widget chatTile(
    String imgUrl, String userName, String msg, String date, bool seen) {
  return InkWell(
    onTap: () {},
    child: Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CircleAvatar(
            backgroundImage: NetworkImage(imgUrl),
            radius: 28.0,
          ),
          const SizedBox(
            width: 8.0,
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        userName,
                        style: const TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    Text(date),
                  ],
                ),
                const SizedBox(
                  height: 5.0,
                ),
                Row(
                  children: [
                    Expanded(child: Text(userName)),
                    if (seen)
                      const Icon(
                        Icons.check_circle,
                        size: 18.0,
                        color: Colors.green,
                      ),
                    if (!seen)
                      const Icon(
                        Icons.check_circle_outline,
                        color: Colors.grey,
                        size: 18.0,
                      ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}
