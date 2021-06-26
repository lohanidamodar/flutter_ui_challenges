import 'package:flutter/material.dart';
import 'package:game_center/widget/constant.dart';

class ProfilePage extends StatelessWidget {
  final Image image;
  ProfilePage({this.image});
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: IconButton(
            icon: Icon(
              Icons.navigate_before,
              color: Colors.black,
            ),
            onPressed: () {
              pop(context);
            },
          ),
          actions: [
            Icon(
              Icons.dashboard_rounded,
              color: Colors.black,
            ),
            SizedBox(
              width: size.width * 0.02,
            ),
          ],
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: size.width * 0.013,
          ),
          child: ListView(
            children: [
              circleAvatar(
                radius: 60,
                child: Container(
                  height: size.height * 0.1,
                  child: image,
                ),
              ),
              SizedBox(
                height: size.height * 0.013,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Kristina Janfer",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: Theme.of(context).textTheme.headline6.fontSize,
                    ),
                  ),
                  Text(
                    "Expert",
                    style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                      fontSize: Theme.of(context).textTheme.subtitle1.fontSize,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: size.height * 0.02,
              ),
              Stack(
                children: [
                  Container(
                    height: size.height * 0.12,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.green[900],
                      borderRadius: BorderRadius.circular(13),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        columnTwoText(
                          size,
                          context,
                          firstText: "Total Score",
                          secondNumber: "12560",
                        ),
                        Container(
                          width: size.width * 0.005,
                          height: size.height * 0.05,
                          color: Colors.white,
                        ),
                        columnTwoText(
                          size,
                          context,
                          firstText: "Collection",
                          secondNumber: "53",
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    right: size.width * 0.013,
                    top: size.height * 0.01,
                    child: Icon(
                      Icons.star,
                      color: Colors.amber[400],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: size.height * 0.026,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Level"),
                  Icon(
                    Icons.celebration,
                    color: Colors.amberAccent[400],
                  ),
                ],
              ),
              SizedBox(
                height: size.height * 0.01,
              ),
              Container(
                height: size.height * 0.009,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(17),
                ),
                child: LinearProgressIndicator(
                  value: 0.75,
                  backgroundColor: Colors.grey.shade300,
                  valueColor: AlwaysStoppedAnimation<Color>(Colors.yellow[700]),
                ),
              ),
              SizedBox(
                height: size.height * 0.01,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "75",
                    style: TextStyle(
                      color: Colors.amber,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "100",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: size.height * 0.026,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Your Games",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "See all",
                    style: TextStyle(
                      color: Colors.amber,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: size.height * 0.01,
              ),
              stackListGames(
                size,
                context,
                gameDate: "15 Oct 2021",
                gameName: "Fifa Online",
                gameImage: "assets/gameCenter/football.png",
              ),
              SizedBox(
                height: size.height * 0.02,
              ),
              stackListGames(
                size,
                context,
                gameName: "Archery Battle",
                gameDate: "9 Oct 2021",
                gameImage: "assets/gameCenter/target.png",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
