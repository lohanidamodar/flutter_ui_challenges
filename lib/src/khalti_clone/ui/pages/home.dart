/**
 * Author: Damodar Lohani
 * profile: https://github.com/lohanidamodar
  */
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../model/home_menu_item.dart';
import '../../res/constants.dart';
import '../../res/typography.dart';
import '../pages/menu_page.dart';
import '../widgets/bottom_expandable_app_bar/bottom_expandable_app_bar.dart';
import '../widgets/bottom_expandable_app_bar/controller.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  BottomBarController? controller;

  @override
  void initState() {
    super.initState();
    controller = BottomBarController(vsync: this, dragLength: 550, snap: true);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            floating: true,
            title: const Text("Khalti"),
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(90),
              child: _buildHeader(),
            ),
            actions: <Widget>[
              IconButton(
                icon: const Icon(Icons.notifications),
                onPressed: () {},
              )
            ],
          ),
          _buildHeading("Utility Payments"),
          _buildUtilityPaymentsGrid(),
          _buildDivider(),
          _buildHeading("Bookings"),
          _buildBookingsGrid(),
          _buildDivider(height: 8.0),
        ],
      ),
      bottomNavigationBar: GestureDetector(
        onVerticalDragUpdate: controller!.onDrag,
        onVerticalDragEnd: controller!.onDragEnd,
        child: _buildBottomBar(context),
      ),
    );
  }

  SliverPadding _buildBookingsGrid() {
    return SliverPadding(
      padding: const EdgeInsets.all(16.0),
      sliver: SliverGrid(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4, crossAxisSpacing: 16.0, mainAxisSpacing: 16.0),
        delegate: SliverChildBuilderDelegate((_, index) {
          HomeMenuItem item = homeBookingsItems[index];
          return _buildMenuItem(
              icon: item.icon, label: item.title, subtitle: item.subtitle);
        }, childCount: homeBookingsItems.length),
      ),
    );
  }

  SliverPadding _buildUtilityPaymentsGrid() {
    return SliverPadding(
      padding: const EdgeInsets.all(16.0),
      sliver: SliverGrid(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4, crossAxisSpacing: 16.0, mainAxisSpacing: 16.0),
        delegate: SliverChildBuilderDelegate((_, index) {
          HomeMenuItem item = homeMenuItems[index];
          return _buildMenuItem(
              icon: item.icon, label: item.title, subtitle: item.subtitle);
        }, childCount: homeMenuItems.length),
      ),
    );
  }

  BottomExpandableAppBar _buildBottomBar(BuildContext context) {
    return BottomExpandableAppBar(
      attachSide: Side.top,
      controller: controller,
      expandedHeight: MediaQuery.of(context).size.height - 75,
      horizontalMargin: 0,
      appBarHeight: 50,
      bottomOffset: 0,
      expandedBackColor: Colors.white,
      expandedBody: const MenuPage(),
      bottomAppBarColor: Colors.grey.shade200,
      bottomAppBarBody: Row(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Expanded(
            child: _buildBottomMenuItem(
                icon: const Icon(Icons.home), label: "Home", onTap: () {}),
          ),
          Expanded(
            child: _buildBottomMenuItem(
                icon: const Icon(Icons.card_giftcard), label: "Bazaar", onTap: () {}),
          ),
          Expanded(
            child: _buildBottomMenuItem(
                icon: const Icon(Icons.list), label: "Transactions", onTap: () {}),
          ),
          Expanded(
            child: _buildBottomMenuItem(
                icon: const Icon(Icons.more_horiz),
                label: "More",
                onTap: () => controller!.open()),
          ),
        ],
      ),
    );
  }

  MaterialButton _buildBottomMenuItem(
      {Widget? icon, required String label, Function? onTap}) {
    return MaterialButton(
      height: 30,
      onPressed: onTap as void Function()?,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          if (icon != null) icon,
          Text(
            label,
            style: const TextStyle(fontSize: 9),
          )
        ],
      ),
    );
  }

  Widget _buildHeading(String title) {
    return SliverPadding(
      padding: const EdgeInsets.all(16.0),
      sliver: SliverToBoxAdapter(
        child: Text(
          title,
          style: const TextStyle(color: Colors.black, fontWeight: FontWeight.w600),
        ),
      ),
    );
  }

  Widget _buildDivider({Color? color, double height = 4.0}) {
    color ??= Colors.deepPurple.shade100;
    return SliverToBoxAdapter(
      child: Container(
        height: height,
        color: color,
      ),
    );
  }

  Container _buildHeader() {
    return Container(
      height: 100.0,
      width: double.infinity,
      color: Colors.deepPurple.shade200,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Spacer(),
          _buildHeaderItem(icon: FontAwesomeIcons.wallet, label: "Load Fund"),
          const Spacer(),
          _buildHeaderItem(
              icon: FontAwesomeIcons.mobileScreenButton, label: "Send/Request"),
          const Spacer(),
          _buildHeaderItem(icon: FontAwesomeIcons.qrcode, label: "Scan & Pay"),
          const Spacer(),
          _buildHeaderItem(
              icon: FontAwesomeIcons.coins, label: "Bank Transfer"),
          const Spacer(),
        ],
      ),
    );
  }

  Column _buildHeaderItem({IconData? icon, required String label}) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          padding: const EdgeInsets.all(10.0),
          decoration:
              const BoxDecoration(shape: BoxShape.circle, color: Colors.white),
          child: Icon(
            icon,
            size: 30,
            color: Colors.purple.shade300,
          ),
        ),
        const SizedBox(height: 5.0),
        Text(
          label,
          style: smallText,
        ),
      ],
    );
  }

  Widget _buildMenuItem(
      {IconData? icon, required String label, String? subtitle}) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, 'payment');
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(
            icon,
            size: 28,
            color: Colors.purple.shade300,
          ),
          const SizedBox(height: 10.0),
          Text(
            label,
            style: smallText,
          ),
          if (subtitle != null) const SizedBox(height: 5.0),
          if (subtitle != null)
            Container(
                padding: const EdgeInsets.symmetric(
                  vertical: 2.0,
                  horizontal: 4.0,
                ),
                color: Colors.grey.shade200,
                child: Text(
                  subtitle,
                  textAlign: TextAlign.center,
                  style: smallText.copyWith(fontSize: 8.0),
                ))
        ],
      ),
    );
  }
}
