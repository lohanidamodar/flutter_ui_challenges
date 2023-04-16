import 'package:flutter/material.dart';

/// Author: Ambika Dulal
/// profile: https://github.com/ambikadulal

class HiddenDrawerNav extends StatefulWidget {
  static const String path = "lib/src/pages/navigation/hidden_drawer_nav.dart";

  const HiddenDrawerNav({super.key});
  @override
  _HiddenDrawerNavState createState() => _HiddenDrawerNavState();
}

class _HiddenDrawerNavState extends State<HiddenDrawerNav>
    with SingleTickerProviderStateMixin {
  bool isCollapsed = true;
  double? screenWidth, screenHeight;
  final Duration duration = const Duration(milliseconds: 300);
  late AnimationController _controller;
  late Animation<double> _scaleAnimation;
  late Animation<double> _menuScaleAnimation;
  late Animation<Offset> _slideAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this, duration: duration);
    _scaleAnimation = Tween<double>(begin: 1, end: 0.8).animate(_controller);
    _menuScaleAnimation =
        Tween<double>(begin: 0.5, end: 1).animate(_controller);
    _slideAnimation = Tween<Offset>(begin: const Offset(-1, 0), end: const Offset(0, 0))
        .animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    screenHeight = size.height;
    screenWidth = size.width;

    return Scaffold(
      backgroundColor: Colors.blue,
      body: Stack(
        children: <Widget>[
          menu(context),
          dashboard(context),
        ],
      ),
    );
  }

  Widget menu(context) {
    return SlideTransition(
      position: _slideAnimation,
      child: ScaleTransition(
        scale: _menuScaleAnimation,
        child: Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const <Widget>[
                Text("Dashboard",
                    style: TextStyle(color: Colors.white, fontSize: 22)),
                SizedBox(height: 10),
                Text("Messages",
                    style: TextStyle(color: Colors.white, fontSize: 22)),
                SizedBox(height: 10),
                Text("Services",
                    style: TextStyle(color: Colors.white, fontSize: 22)),
                SizedBox(height: 10),
                Text("Abouts Us",
                    style: TextStyle(color: Colors.white, fontSize: 22)),
                SizedBox(height: 10),
                Text("Contact Us",
                    style: TextStyle(color: Colors.white, fontSize: 22)),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget dashboard(context) {
    return AnimatedPositioned(
      duration: duration,
      top: 0,
      bottom: 0,
      left: isCollapsed ? 0 : 0.6 * screenWidth!,
      right: isCollapsed ? 0 : -0.2 * screenWidth!,
      child: ScaleTransition(
        scale: _scaleAnimation,
        child: Material(
          animationDuration: duration,
          borderRadius: const BorderRadius.all(Radius.circular(40)),
          elevation: 8,
          color: Colors.black,
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            physics: const ClampingScrollPhysics(),
            child: Container(
              padding: const EdgeInsets.only(left: 16, right: 16, top: 48),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      InkWell(
                        child: const Icon(Icons.menu, color: Colors.white),
                        onTap: () {
                          setState(() {
                            if (isCollapsed) {
                              _controller.forward();
                            } else {
                              _controller.reverse();
                            }

                            isCollapsed = !isCollapsed;
                          });
                        },
                      ),
                      const Text("My Cards",
                          style: TextStyle(fontSize: 24, color: Colors.white)),
                      const Icon(Icons.settings, color: Colors.white),
                    ],
                  ),
                  const SizedBox(height: 50),
                  SizedBox(
                    height: 200,
                    child: PageView(
                      controller: PageController(viewportFraction: 0.8),
                      scrollDirection: Axis.horizontal,
                      pageSnapping: true,
                      children: <Widget>[
                        Container(
                          margin: const EdgeInsets.symmetric(horizontal: 8),
                          color: Colors.redAccent,
                          width: 100,
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(horizontal: 8),
                          color: Colors.blueAccent,
                          width: 100,
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(horizontal: 8),
                          color: Colors.greenAccent,
                          width: 100,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    "Transactions",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  ListView.separated(
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return const ListTile(
                          title: Text(
                            "Macbook",
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                          subtitle: Text(
                            "Apple",
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                          trailing: Text(
                            "-36000",
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                        );
                      },
                      separatorBuilder: (context, index) {
                        return const Divider(height: 16);
                      },
                      itemCount: 5)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
