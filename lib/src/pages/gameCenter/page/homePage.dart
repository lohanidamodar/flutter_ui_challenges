import 'package:flutter/material.dart';
import 'package:game_center/model/homeGrid_model.dart';
import 'package:game_center/page/profilePage.dart';
import 'package:game_center/widget/constant.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: size.width * 0.013,
            vertical: size.height * 0.01,
          ),
          child: ListView(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      push(
                          context,
                          ProfilePage(
                            image: Image.asset(
                              "assets/girl.png",
                              fit: BoxFit.cover,
                              // height: size.height * 0.06,
                            ),
                          ));
                    },
                    child: circleAvatar(
                      child: Image.asset(
                        "assets/girl.png",
                        fit: BoxFit.cover,
                        height: size.height * 0.06,
                      ),
                    ),
                  ),
                  Chip(
                    backgroundColor: Colors.green,
                    label: Text(
                      "12560",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    avatar: circleAvatar(
                      radius: 80,
                      backgroundColor: Colors.white,
                      child: Icon(
                        Icons.star,
                        color: Colors.amber[600],
                        size: 17,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: size.height * 0.06,
              ),
              Text(
                'Let\'s\nplay & joy game!',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: Theme.of(context).textTheme.headline5.fontSize,
                ),
              ),
              SizedBox(
                height: size.height * 0.07,
              ),
              Container(
                height: size.height * 0.7,
                child: GridView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                  ),
                  itemCount: getGridChooseModel.length,
                  itemBuilder: (_, index) {
                    return Column(
                      children: [
                        circleAvatar(
                          radius: 70,
                          child: Container(
                              height: size.height * 0.08,
                              child: getGridChooseModel[index].image),
                          backgroundColor: Colors.grey.withOpacity(0.07),
                        ),
                        SizedBox(
                          height: size.height * 0.01,
                        ),
                        Text(
                          getGridChooseModel[index].nameString,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
              SizedBox(
                height: size.height * 0.07,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
