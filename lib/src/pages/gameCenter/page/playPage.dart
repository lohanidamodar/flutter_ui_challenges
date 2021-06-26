import 'package:flutter/material.dart';
import 'package:game_center/page/homePage.dart';
import 'package:game_center/widget/constant.dart';

class PlayPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: size.width * 0.013,
              vertical: size.height * 0.01,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  "assets/gameCenter/coc.png",
                  fit: BoxFit.cover,
                ),
                SizedBox(
                  height: size.height * 0.05,
                ),
                Chip(
                  label: Text(
                    "Strategy",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: Theme.of(context).textTheme.button.fontSize,
                    ),
                  ),
                ),
                SizedBox(
                  height: size.height * 0.03,
                ),
                Text(
                  "Clash of Clans",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: Theme.of(context).textTheme.headline4.fontSize,
                  ),
                ),
                SizedBox(
                  height: size.height * 0.012,
                ),
                Text(
                  "Let\'s play and joy the game and get an\namazing experience!",
                  style: TextStyle(
                    fontSize: Theme.of(context).textTheme.button.fontSize,
                  ),
                ),
                SizedBox(
                  height: size.height * 0.06,
                ),
                Center(
                  child: ElevatedButton(
                    onPressed: () {
                      push(
                        context,
                        HomePage(),
                      );
                    },
                    child: Text("Play Now"),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.green[900],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(24),
                      ),
                      minimumSize: Size(
                        size.width * 0.6,
                        size.height * 0.06,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
