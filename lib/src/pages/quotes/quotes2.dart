/**
 * Author: Ambika Dulal
 * profile: https://github.com/ambikadulal
  */
import 'package:flutter/material.dart';

class QuotesPageTwo extends StatelessWidget {
  static const String path = "lib/src/pages/quotes/quotes2.dart";

  final List<Map> quotesList = [
    {
      "title":
          "Strength does not  come from what you can do. \n Strength comes from overcoming the things you thought yyou couldn not",
    },
    {
      "title":
          "If you quit now, you will end up right back where you first began. \n And when you frist began, you were desperate to be where you are right now. Keep going.",
    },
    {
      "title":
          "The Life you want comes when you decide to go get it. \n Just Remember Think positive, hope positive,definatly happen positive",
    },
    {
      "title":
          "Take the risk . if you win you will be happy. If you lose you will be wiser.",
    },
  ];

   QuotesPageTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff0f0f0),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
        title: const Text(
          'Motivational',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Stack(
                children: <Widget>[
                  Container(
                    padding: const EdgeInsets.only(top: 5),
                    height: MediaQuery.of(context).size.height,
                    width: double.infinity,
                    child: ListView.builder(
                        itemCount: quotesList.length,
                        itemBuilder: (BuildContext context, int index) {
                          return buildList(context, index);
                        }),
                  ),
                ],
              ),
            )),
      ),
    );
  }

  Widget buildList(BuildContext context, int index) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
      ),
      width: double.infinity,
      height: 160,
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  quotesList[index]['title'],
                  style: const TextStyle(
                      //color: primary,
                      fontSize: 13),
                ),
                InkWell(
                  child: Row(
                    children: const <Widget>[
                      Padding(
                        padding: EdgeInsets.all(15.0),
                        child: Icon(
                          Icons.share,
                          color: Colors.blue,
                          size: 18,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(15.0),
                        child: Icon(
                          Icons.send,
                          color: Colors.blue,
                          size: 18,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(15.0),
                        child: Icon(
                          Icons.copy,
                          color: Colors.blue,
                          size: 18,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(15.0),
                        child: Icon(
                          Icons.emoji_emotions,
                          color: Colors.blue,
                          size: 18,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(15.0),
                        child: Icon(
                          Icons.emoji_events,
                          color: Colors.blue,
                          size: 18,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
