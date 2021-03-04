/**
 * Author: Damodar Lohani
 * profile: https://github.com/lohanidamodar
  */

import 'package:flutter/material.dart';
import 'package:flutter_ui_challenges/src/pages/animations/animation1/animation1.dart';
import 'package:flutter_ui_challenges/src/widgets/network_image.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

final List<Map> articles = [
  {
    "title": "How to Seem Like You Always Have Your Shot Together",
    "author": "Jonhy Vino",
    "time": "4 min read",
  },
  {
    "title": "Does Dry is January Actually Improve Your Health?",
    "author": "Jonhy Vino",
    "time": "4 min read",
  },
  {
    "title": "You do hire a designer to make something. You hire them.",
    "author": "Jonhy Vino",
    "time": "4 min read",
  },
  {
    "title": "How to Seem Like You Always Have Your Shot Together",
    "author": "Jonhy Vino",
    "time": "4 min read",
  },
  {
    "title": "How to Seem Like You Always Have Your Shot Together",
    "author": "Jonhy Vino",
    "time": "4 min read",
  },
  {
    "title": "Does Dry is January Actually Improve Your Health?",
    "author": "Jonhy Vino",
    "time": "4 min read",
  },
  {
    "title": "You do hire a designer to make something. You hire them.",
    "author": "Jonhy Vino",
    "time": "4 min read",
  },
  {
    "title": "How to Seem Like You Always Have Your Shot Together",
    "author": "Jonhy Vino",
    "time": "4 min read",
  },
];

class BlogHomeOnePage extends StatelessWidget {
  static final String path = "lib/src/pages/blog/bhome1.dart";
  final Color primaryColor = Color(0xffFD6592);
  final Color bgColor = Color(0xffF9E0E3);
  final Color secondaryColor = Color(0xff324558);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 5,
      child: Theme(
        data: ThemeData(
          primaryColor: primaryColor,
          appBarTheme: AppBarTheme(
            color: Colors.white,
            textTheme: TextTheme(
              headline6: TextStyle(
                color: secondaryColor,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            iconTheme: IconThemeData(color: secondaryColor),
            actionsIconTheme: IconThemeData(
              color: secondaryColor,
            ),
          ),
        ),
        child: Scaffold(
          backgroundColor: Theme.of(context).buttonColor,
          appBar: AppBar(
            centerTitle: true,
            title: Text('Categories'),
            leading: Icon(Icons.category),
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.search),
                onPressed: () {},
              )
            ],
            bottom: TabBar(
              isScrollable: true,
              labelColor: primaryColor,
              indicatorColor: primaryColor,
              unselectedLabelColor: secondaryColor,
              tabs: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("For You"),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Design"),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Beauty"),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Education"),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Entertainment"),
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: <Widget>[
              ListView.separated(
                padding: const EdgeInsets.all(16.0),
                itemCount: articles.length,
                itemBuilder: (context, index) {
                  return _buildArticleItem(index);
                },
                separatorBuilder: (context, index) =>
                    const SizedBox(height: 16.0),
              ),
              Container(
                child: Text("Tab 2"),
              ),
              Container(
                child: Text("Tab 3"),
              ),
              Container(
                child: Text("Tab 4"),
              ),
              Container(
                child: Text("Tab 5"),
              ),
            ],
          ),

          bottomNavigationBar: BottomNavigationBar(
            currentIndex: 1,
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                title: Text(""),
              ),
              BottomNavigationBarItem(
                icon: Icon(FontAwesomeIcons.folderOpen),
                title: Text(""),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.favorite_border),
                title: Text(""),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person_outline),
                title: Text(""),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                title: Text(""),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildArticleItem(int index) {
    Map article = articles[index];
    final String sample = images[2];
    return Container(
      color: Colors.white,
      child: Stack(
        children: <Widget>[
          Container(
            width: 90,
            height: 90,
            color: bgColor,
          ),
          Container(
            color: Colors.white,
            padding: const EdgeInsets.all(16.0),
            margin: const EdgeInsets.all(16.0),
            child: Row(
              children: <Widget>[
                Container(
                  height: 100,
                  color: Colors.blue,
                  width: 80.0,
                  child: PNetworkImage(
                    sample,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(width: 20.0),
                Expanded(
                  child: Column(
                    children: <Widget>[
                      Text(
                        article["title"],
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          color: secondaryColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0,
                        ),
                      ),
                      Text.rich(
                        TextSpan(
                          children: [
                            WidgetSpan(
                              child: CircleAvatar(
                                radius: 15.0,
                                backgroundColor: primaryColor,
                              ),
                            ),
                            WidgetSpan(
                              child: const SizedBox(width: 5.0),
                            ),
                            TextSpan(
                                text: article["author"],
                                style: TextStyle(fontSize: 16.0)),
                            WidgetSpan(
                              child: const SizedBox(width: 20.0),
                            ),
                            WidgetSpan(
                              child: const SizedBox(width: 5.0),
                            ),
                            TextSpan(
                              text: article["time"],
                            ),
                          ],
                        ),
                        style: TextStyle(height: 2.0),
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
