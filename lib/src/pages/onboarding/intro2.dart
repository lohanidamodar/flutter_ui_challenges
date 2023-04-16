/**
 * Author: Damodar Lohani
 * profile: https://github.com/lohanidamodar
  */

import 'package:flutter/material.dart';
import 'package:flutter_swiper_null_safety/flutter_swiper_null_safety.dart';
import 'package:flutter_ui_challenges/src/pages/animations/animation1/animation1.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_ui_challenges/src/widgets/swiper_pagination.dart';

class IntroTwoPage extends StatefulWidget {
  static const String path = "lib/src/pages/onboarding/intro2.dart";

  const IntroTwoPage({super.key});
  @override
  _IntroTwoPageState createState() => _IntroTwoPageState();
}

class _IntroTwoPageState extends State<IntroTwoPage> {
  final SwiperController _swiperController = SwiperController();
  final int _pageCount = 3;
  int _currentIndex = 0;
  final List<String> titles = [
    "Lorem ipsum dolor \nsit amet, consectetur adipiscing \n elit placerat. ",
    "Aliquam eget justo \n nec arcu ultricies elementum \n id at metus. ",
    "Nulla facilisi. \nFusce non tempus risus.\n Sed ultrices scelerisque sem,"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      body: Column(
        children: <Widget>[
          Expanded(
              child: Swiper(
            index: _currentIndex,
            controller: _swiperController,
            itemCount: _pageCount,
            onIndexChanged: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
            loop: false,
            itemBuilder: (context, index) {
              return _buildPage(title: titles[index], icon: images[index]);
            },
            pagination: SwiperPagination(
                builder: CustomPaginationBuilder(
                    activeColor: Colors.white,
                    activeSize: const Size(10.0, 20.0),
                    size: const Size(10.0, 15.0),
                    color: Colors.grey.shade600)),
          )),
          const SizedBox(height: 10.0),
          _buildButtons(),
        ],
      ),
    );
  }

  Widget _buildButtons() {
    return Container(
      margin: const EdgeInsets.only(right: 16.0, bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          TextButton(
            style: TextButton.styleFrom(
              foregroundColor: Colors.white70,
            ),
            child: const Text("Skip"),
            onPressed: () {
              Navigator.of(context).pushReplacementNamed('challenge_home');
            },
          ),
          IconButton(
            color: Colors.white,
            icon: Icon(
              _currentIndex < _pageCount - 1
                  ? FontAwesomeIcons.circleArrowRight
                  : FontAwesomeIcons.circleCheck,
              size: 40,
            ),
            onPressed: () async {
              if (_currentIndex < _pageCount - 1) {
                _swiperController.next();
              } else {
                Navigator.of(context).pushReplacementNamed('challenge_home');
              }
            },
          )
        ],
      ),
    );
  }

  Widget _buildPage({required String title, required String icon}) {
    const TextStyle titleStyle =
        TextStyle(fontWeight: FontWeight.w500, fontSize: 20.0);
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.fromLTRB(16.0, 50.0, 16.0, 40.0),
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.0),
          image: DecorationImage(
              image: NetworkImage(icon),
              fit: BoxFit.cover,
              colorFilter:
                  const ColorFilter.mode(Colors.black38, BlendMode.multiply))),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Text(
            title,
            textAlign: TextAlign.center,
            style: titleStyle.copyWith(color: Colors.white),
          ),
          const SizedBox(height: 30),
        ],
      ),
    );
  }
}
