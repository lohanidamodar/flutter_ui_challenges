import 'dart:math';

import 'package:animated_floatactionbuttons/animated_floatactionbuttons.dart';
import 'package:clipboard_manager/clipboard_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_ui_challenges/src/utils/code_highlighter.dart';
import 'package:url_launcher/url_launcher.dart' as url_launcher;

class MyCodeView extends StatefulWidget {
  final String filePath;

  MyCodeView({@required this.filePath});

  String get githubPath => 'https://github.com/lohanidamodar/blob/master/${this.filePath}';

  @override
  MyCodeViewState createState() {
    return MyCodeViewState();
  }
}

class MyCodeViewState extends State<MyCodeView> {
  double _textScaleFactor = 1.0;

  Widget _getCodeView(String codeContent, BuildContext context) {
    final SyntaxHighlighterStyle style =
        Theme.of(context).brightness == Brightness.dark
            ? SyntaxHighlighterStyle.darkThemeStyle()
            : SyntaxHighlighterStyle.lightThemeStyle();
    return Container(
      constraints: BoxConstraints.expand(),
      child: Scrollbar(
        child: SingleChildScrollView(
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: RichText(
              textScaleFactor: this._textScaleFactor,
              text: TextSpan(
                style: TextStyle(fontFamily: 'monospace', fontSize: 12.0),
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

  List<Widget> _buildFloatingButtons() {
    return <Widget>[
      FloatingActionButton(
        child: Icon(Icons.content_copy),
        tooltip: 'Copy code link to clipboard',
        onPressed: () {
          ClipboardManager.copyToClipBoard(this.widget.githubPath);
          Scaffold.of(context).showSnackBar(SnackBar(
            content: Text('Code link copied to Clipboard!'),
          ));
        },
      ),
      FloatingActionButton(
        child: Icon(Icons.open_in_new),
        tooltip: 'View code on github',
        onPressed: () => url_launcher.launch(this.widget.githubPath),
      ),
      FloatingActionButton(
        child: Icon(Icons.zoom_out),
        tooltip: 'Zoom out',
        onPressed: () => setState(() {
          this._textScaleFactor = max(0.8, this._textScaleFactor - 0.1);
        }),
      ),
      FloatingActionButton(
        child: Icon(Icons.zoom_in),
        tooltip: 'Zoom in',
        onPressed: () => setState(() {
          this._textScaleFactor += 0.1;
        }),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: rootBundle.loadString(widget.filePath) ??
          'Error loading source code from $this.filePath',
      builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
        if (snapshot.hasData) {
          return Scaffold(
            body: Padding(
              padding: EdgeInsets.all(4.0),
              child: _getCodeView(snapshot.data, context),
            ),
            floatingActionButton: AnimatedFloatingActionButton(
              fabButtons: _buildFloatingButtons(),
              colorStartAnimation: Colors.blue,
              colorEndAnimation: Colors.red,
              animatedIconData: AnimatedIcons.menu_close,
            ),
          );
        } else {
          return Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}