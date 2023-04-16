import 'dart:io';

import 'package:flutter/foundation.dart';
/**
 * Author: Damodar Lohani
 * profile: https://github.com/lohanidamodar
  */

import 'package:flutter/material.dart';
import 'package:flutter_ui_challenges/src/pages/invitation/inauth.dart';
import 'package:share_plus/share_plus.dart';

import '../../constants.dart';
import 'code_view.dart';
import 'keep_alive.dart';

class DesignPreviewsPage extends StatefulWidget {
  final String title;
  final Widget page;
  final String? path;

  const DesignPreviewsPage(
      {Key? key, required this.title, required this.page, required this.path})
      : super(key: key);

  @override
  _DesignPreviewsPageState createState() => _DesignPreviewsPageState();
}

class _DesignPreviewsPageState extends State<DesignPreviewsPage> {
  late Offset offset;

  @override
  void initState() {
    super.initState();
    offset = const Offset(0, 0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
        title: Text(
          widget.title,
          style: boldText.copyWith(color: Colors.black),
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.code),
            onPressed: () {
              if (offset.dy == 0.9) {
                setState(() {
                  offset = const Offset(0, 0);
                });
              } else {
                setState(() {
                  offset = const Offset(0, 0.9);
                });
              }
            },
          ),
          IconButton(
            icon: kIsWeb
                ? const Icon(Icons.share)
                : Platform.isIOS
                    ? const Icon(Icons.ios_share)
                    : const Icon(Icons.share),
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
                  offset = const Offset(0, 0);
                });
              },
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 500),
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
