/**
 * Author: Damodar Lohani
 * profile: https://github.com/lohanidamodar
  */

import 'package:flutter/material.dart';
import 'package:flutter_swiper_null_safety/flutter_swiper_null_safety.dart';
import 'package:flutter_ui_challenges/core/presentation/res/assets.dart';
import 'package:flutter_ui_challenges/src/widgets/network_image.dart';

class IntroSixPage extends StatefulWidget {
  static const String path = "lib/src/pages/onboarding/intro6.dart";

  const IntroSixPage({super.key});
  @override
  _IntroSixPageState createState() => _IntroSixPageState();
}

class _IntroSixPageState extends State<IntroSixPage> {
  final SwiperController _controller = SwiperController();
  int _currentIndex = 0;
  final List<String> titles = [
    "Welcome",
    "Awesome App",
    "Flutter App",
  ];
  final List<String> subtitles = [
    "Welcome to this awesome intro screen app.",
    "This is an awesome app, of intro screen design",
    "Flutter is awesome for app development"
  ];
  final List<Color> colors = [
    Colors.green.shade300,
    Colors.blue.shade300,
    Colors.indigo.shade300,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Swiper(
            loop: false,
            index: _currentIndex,
            onIndexChanged: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
            controller: _controller,
            pagination: const SwiperPagination(
              builder: DotSwiperPaginationBuilder(
                activeColor: Colors.red,
                activeSize: 20.0,
              ),
            ),
            itemCount: 3,
            itemBuilder: (context, index) {
              return IntroItem(
                title: titles[index],
                subtitle: subtitles[index],
                bg: colors[index],
                imageUrl: introIllus[index],
              );
            },
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: TextButton(
              child: const Text("Skip"),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: IconButton(
              icon:
                  Icon(_currentIndex == 2 ? Icons.check : Icons.arrow_forward),
              onPressed: () {
                if (_currentIndex != 2) {
                  _controller.next();
                } else {
                  Navigator.pop(context);
                }
              },
            ),
          )
        ],
      ),
    );
  }
}

class IntroItem extends StatelessWidget {
  final String title;
  final String? subtitle;
  final Color? bg;
  final String? imageUrl;

  const IntroItem(
      {Key? key, required this.title, this.subtitle, this.bg, this.imageUrl})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: bg ?? Theme.of(context).primaryColor,
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: <Widget>[
              const SizedBox(height: 40),
              Text(
                title,
                style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 35.0,
                    color: Colors.white),
              ),
              if (subtitle != null) ...[
                const SizedBox(height: 20.0),
                Text(
                  subtitle!,
                  style: const TextStyle(color: Colors.white, fontSize: 24.0),
                  textAlign: TextAlign.center,
                ),
              ],
              const SizedBox(height: 40.0),
              Expanded(
                child: Container(
                  margin: const EdgeInsets.only(bottom: 70),
                  width: double.infinity,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20.0),
                    child: Material(
                      elevation: 4.0,
                      child: PNetworkImage(
                        imageUrl!,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
