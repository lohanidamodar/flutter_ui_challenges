import 'dart:io';

import 'package:flutter/foundation.dart';
/**
 * Author: Damodar Lohani
 * profile: https://github.com/lohanidamodar
  */

import 'package:flutter/material.dart';
import 'package:flutter_ui_challenges/src/pages/invitation/inauth.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:share_plus/share_plus.dart';

import '../../constants.dart';
import 'code_view.dart';
import 'keep_alive.dart';

class DesignPreviewsPage extends StatefulWidget {
  final String title;
  final Widget page;
  final String path;

  const DesignPreviewsPage(
      {Key key, @required this.title, @required this.page, @required this.path})
      : super(key: key);

  @override
  _DesignPreviewsPageState createState() => _DesignPreviewsPageState();
}

class _DesignPreviewsPageState extends State<DesignPreviewsPage> {
  Offset offset;

  @override
  void initState() {
    super.initState();
    offset = Offset(0, 0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        title: Text(
          widget.title,
          style: boldText.copyWith(color: Colors.black),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.code),
            onPressed: () {
              if (offset.dy == 0.9) {
                setState(() {
                  offset = Offset(0, 0);
                });
              } else {
                setState(() {
                  offset = Offset(0, 0.9);
                });
              }
            },
          ),
          IconButton(
            icon: kIsWeb ? Icon(Icons.share) : Platform.isIOS ? Icon(Icons.ios_share) : Icon(Icons.share),
            tooltip: "Share code",
            onPressed: () {
              Share.share('$githubRepo/blob/master/${widget.path}');
            },
          )
        ],
      ),
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          AlwaysAliveWidget(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 70.0),
              child: MyCodeView(
                filePath: widget.path,
              ),
            ),
          ),
          FractionalTranslation(
            translation: offset,
            child: GestureDetector(
              onTap: () {
                setState(() {
                  offset = Offset(0, 0);
                });
              },
              child: AnimatedContainer(
                duration: Duration(milliseconds: 500),
                color: Theme.of(context).scaffoldBackgroundColor,
                padding: offset.dy == 0.9
                    ? null
                    : const EdgeInsets.fromLTRB(16.0, 0, 16.0, 16.0),
                child: AlwaysAliveWidget(
                  child: widget.page,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
