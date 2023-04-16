/// Author: Damodar Lohani
/// profile: https://github.com/lohanidamodar
import 'dart:math';

import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_ui_challenges/core/presentation/res/code_highlighter.dart';
import 'package:url_launcher/url_launcher.dart' as url_launcher;

import '../../constants.dart';

class MyCodeView extends StatefulWidget {
  final String? filePath;

  const MyCodeView({Key? key, required this.filePath}) : super(key: key);

  String get githubPath => '$githubRepo/blob/master/$filePath';

  @override
  MyCodeViewState createState() {
    return MyCodeViewState();
  }
}

class MyCodeViewState extends State<MyCodeView> {
  double _textScaleFactor = 1.0;

  Widget _getCodeView(String? codeContent, BuildContext context) {
    final SyntaxHighlighterStyle style =
        Theme.of(context).brightness == Brightness.dark
            ? SyntaxHighlighterStyle.darkThemeStyle()
            : SyntaxHighlighterStyle.lightThemeStyle();
    return Container(
      constraints: const BoxConstraints.expand(),
      child: Scrollbar(
        child: SingleChildScrollView(
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: RichText(
              textScaleFactor: _textScaleFactor,
              text: TextSpan(
                style: const TextStyle(fontFamily: 'monospace', fontSize: 12.0),
                children: <TextSpan>[
                  DartSyntaxHighlighter(style).format(codeContent)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  List<SpeedDialChild> _buildFloatingButtons() {
    return <SpeedDialChild>[
      SpeedDialChild(
        label: "Copy",
        child: const Icon(Icons.content_copy),
        onTap: () async {
          await Clipboard.setData(ClipboardData(text: widget.githubPath));
          if (mounted) {
            ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
              content: Text('Code link copied to Clipboard!'),
            ));
          }
        },
      ),
      SpeedDialChild(
        label: "Open",
        child: const Icon(Icons.open_in_new),
        onTap: () => url_launcher.launchUrl(Uri.parse(widget.githubPath)),
      ),
      SpeedDialChild(
        child: const Icon(Icons.zoom_out),
        label: 'Zoom out',
        onTap: () => setState(() {
          _textScaleFactor = max(0.8, _textScaleFactor - 0.1);
        }),
      ),
      SpeedDialChild(
        child: const Icon(Icons.zoom_in),
        label: 'Zoom in',
        onTap: () => setState(() {
          _textScaleFactor += 0.1;
        }),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: rootBundle.loadString(widget.filePath!),
      builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
        if (snapshot.hasData) {
          return Scaffold(
            body: Padding(
              padding: const EdgeInsets.all(8.0),
              child: _getCodeView(snapshot.data, context),
            ),
            floatingActionButton: Padding(
              padding: const EdgeInsets.only(bottom: 60.0),
              child: SpeedDial(
                children: _buildFloatingButtons(),
                icon: Icons.menu,
                activeIcon: Icons.close,
                backgroundColor: Colors.red,
                foregroundColor: Colors.white,
              ),
            ),
          );
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
