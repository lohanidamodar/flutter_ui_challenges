import 'package:flutter/material.dart';
import 'package:flutter_ui_challenges/core/presentation/res/assets.dart';
import 'package:flutter_ui_challenges/core/presentation/res/functions.dart';
import 'package:flutter_ui_challenges/core/presentation/res/text_styles.dart';
import 'package:flutter_ui_challenges/core/presentation/widgets/rounded_bordered_container.dart';
import 'package:flutter_ui_challenges/src/pages/invitation/inauth.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NewHomePage extends StatefulWidget {
  const NewHomePage({Key? key}) : super(key: key);

  @override
  _NewHomePageState createState() => _NewHomePageState();
}

class _NewHomePageState extends State<NewHomePage>
    with SingleTickerProviderStateMixin {
  // RemoteConfig remoteConfig;
  bool? dialogShowing;
  bool? showNewUiDialog;
  // List<Announcement> announcements;
  // SurveyItem survey;
  late AnimationController _animationController;
  @override
  void initState() {
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 800),
    );
    dialogShowing = false;
    showNewUiDialog = false;
    // announcements = [];
    // _getRemoteConfig();
    super.initState();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  // _getRemoteConfig() async {
  //   if (remoteConfig == null) remoteConfig = await RemoteConfig.instance;
  //   final Map<String, dynamic> defaults = {
  //     "news": "[]",
  //     "survey": "",
  //   };
  //   await remoteConfig.setDefaults(defaults);
  //   await remoteConfig.fetch(expiration: const Duration(hours: 12));
  //   await remoteConfig.activateFetched();
  //   final String value = remoteConfig.getString('news');
  //   final String surval = remoteConfig.getString('survey');
  //   setState(() {
  //     announcements = List<Map<String, dynamic>>.from(json.decode(value))
  //         .map((data) => Announcement.fromMap(data))
  //         .toList();
  //     if(surval.isNotEmpty)
  //     survey =
  //         SurveyItem.fromMap(Map<String, dynamic>.from(json.decode(surval)));
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    // User user = Provider.of<User>(context);
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: customAppBar(context: context),
      body: ListView(
        children: <Widget>[
          RoundedContainer(
            borderRadius: BorderRadius.circular(10.0),
            margin: const EdgeInsets.symmetric(
              vertical: 8.0,
              horizontal: 16.0,
            ),
            padding: const EdgeInsets.all(0),
            height: 250,
            child: InkWell(
              borderRadius: BorderRadius.circular(10.0),
              onTap: () => Navigator.pushNamed(context, 'challenge_home'),
              child: Column(
                children: <Widget>[
                  Expanded(
                    child: ClipRRect(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(10.0),
                        topRight: Radius.circular(10.0),
                      ),
                      child: Image.asset(
                        appFeatureImage,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Text(
                        "UI Challenges",
                        style: buttonText.copyWith(
                          color: Theme.of(context).primaryColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                        ),
                      ),
                      const SizedBox(width: 10.0),
                      Icon(
                        Icons.arrow_forward,
                        color: Theme.of(context).primaryColor,
                      ),
                    ],
                  ),
                  const SizedBox(height: 10.0),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: <Widget>[
                const SizedBox(height: 10.0),
                CategoryItem(
                  title: "About",
                  icon: const Icon(
                    FontAwesomeIcons.circleInfo,
                    color: Colors.red,
                  ),
                  onPressed: () => Navigator.pushNamed(context, 'about'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CategoryItem extends StatelessWidget {
  final TextStyle buttonText = boldText.copyWith(
    fontSize: 16.0,
  );
  final Function? onPressed;
  final String? title;
  final Widget? icon;

  CategoryItem({
    Key? key,
    this.onPressed,
    this.title,
    this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      highlightElevation: 0,
      elevation: 0,
      padding: const EdgeInsets.all(24.0),
      color: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      onPressed: onPressed as void Function()?,
      child: Row(
        children: <Widget>[
          if (icon != null) ...[
            icon!,
            const SizedBox(width: 10.0),
          ],
          Text(
            title!,
            style: buttonText,
          ),
          const Spacer(),
          const Icon(Icons.keyboard_arrow_right),
        ],
      ),
    );
  }
}

class FeaturedCategoryItem extends StatelessWidget {
  final TextStyle buttonText = boldText.copyWith(
    fontSize: 16.0,
  );
  final Function? onPressed;
  final String? title;
  final Widget? icon;

  FeaturedCategoryItem({
    Key? key,
    this.onPressed,
    this.title,
    this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      colorBrightness: Brightness.dark,
      highlightColor: Theme.of(context).primaryColor,
      highlightElevation: 0,
      elevation: 0,
      padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 32.0),
      color: Theme.of(context).primaryColor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      onPressed: onPressed as void Function()?,
      child: Row(
        children: <Widget>[
          if (icon != null) ...[
            icon!,
            const SizedBox(width: 10.0),
          ],
          Text(
            title!,
            style: buttonText.copyWith(
                fontSize: 24.0, fontWeight: FontWeight.w300),
          ),
          const Spacer(),
          const Icon(Icons.keyboard_arrow_right),
        ],
      ),
    );
  }
}
