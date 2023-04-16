/**
 * Author: Damodar Lohani
 * profile: https://github.com/lohanidamodar
  */

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TodoHomeTwoPage extends StatelessWidget {
  static const String path = "lib/src/pages/todo/todo_home2.dart";

  const TodoHomeTwoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.indigo,
      ),
      body: HeaderFooterwidget(
        header: _buildDateHeader(DateTime.now()),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(32.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              _buildTask(color: Colors.pink.shade300),
              const SizedBox(height: 20.0),
              _buildTaskTwo(),
              const SizedBox(height: 20.0),
              _buildTask(color: Colors.indigo.shade300),
              const SizedBox(height: 20.0),
              _buildTaskTwo(),
            ],
          ),
        ),
        footer: _buildBottomBar(),
      ),
    );
  }

  Container _buildBottomBar() {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 8.0,
        horizontal: 16.0,
      ),
      child: Row(
        children: <Widget>[
          const SizedBox(width: 5.0),
          const Expanded(
            child: TextField(
              textCapitalization: TextCapitalization.sentences,
              style: TextStyle(color: Colors.white70),
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "jot down your task",
                hintStyle: TextStyle(color: Colors.white54),
              ),
            ),
          ),
          IconButton(
            color: Colors.white70,
            icon: const Icon(Icons.add),
            onPressed: () {},
          )
        ],
      ),
    );
  }

  Widget _buildDateHeader(DateTime date) {
    const TextStyle boldStyle = TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
        fontSize: 24,
        letterSpacing: 2.0);
    return Row(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0),
          child: MaterialButton(
            minWidth: 0,
            elevation: 0,
            highlightElevation: 0,
            textColor: Colors.pink,
            padding: const EdgeInsets.symmetric(
              vertical: 16.0,
              horizontal: 8.0,
            ),
            color: Colors.white,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0)),
            onPressed: () {},
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(DateFormat.MMM().format(date).toUpperCase()),
                const SizedBox(height: 5.0),
                Text(
                  DateFormat.d().format(date),
                  style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
                )
              ],
            ),
          ),
        ),
        const SizedBox(width: 20.0),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              DateFormat.EEEE().format(date).toUpperCase(),
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.white,
                letterSpacing: 2.0,
              ),
            ),
            Text(
              "Today".toUpperCase(),
              style: boldStyle,
            )
          ],
        ),
      ],
    );
  }

  Widget _buildTaskTwo() {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.0),
          bottomRight: Radius.circular(20.0),
          bottomLeft: Radius.circular(20.0),
        ),
        color: Colors.white70,
      ),
      padding: const EdgeInsets.symmetric(horizontal: 32.0, vertical: 16.0),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const <Widget>[
          Text(
            "10:30 - 11:30AM",
            style: TextStyle(letterSpacing: 2.5, color: Colors.pink),
          ),
          SizedBox(height: 5.0),
          Text(
            "Meeting With",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.pink,
                fontSize: 16.0),
          ),
          Text("John Doe"),
          SizedBox(height: 5.0),
          Divider(
            color: Colors.pink,
          ),
        ],
      ),
    );
  }

  Container _buildTask({Color color = Colors.indigo}) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
          topRight: Radius.circular(20.0),
          bottomLeft: Radius.circular(20.0),
          bottomRight: Radius.circular(20.0),
        ),
        color: color,
      ),
      padding: const EdgeInsets.symmetric(horizontal: 32.0, vertical: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const <Widget>[
          Text(
            "10:30 - 11:30AM",
            style: TextStyle(letterSpacing: 2.5, color: Colors.white),
          ),
          SizedBox(height: 5.0),
          Text(
            "Meeting With",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16.0,
                color: Colors.white),
          ),
          Text("John Doe")
        ],
      ),
    );
  }
}

class HeaderFooterwidget extends StatelessWidget {
  final Widget? header;
  final Widget? footer;
  final Widget? body;
  final Color headerColor;
  final Color footerColor;
  final double? headerHeight;

  const HeaderFooterwidget(
      {Key? key,
      this.header,
      this.footer,
      this.body,
      this.headerColor = Colors.indigo,
      this.footerColor = Colors.pink,
      this.headerHeight})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _buildBody();
  }

  Stack _buildBody() {
    return Stack(
      children: <Widget>[
        Positioned(
          top: 20,
          bottom: 120,
          right: 0,
          width: 30,
          child: DecoratedBox(
            decoration: BoxDecoration(color: headerColor),
          ),
        ),
        Positioned(
          left: 0,
          right: 0,
          bottom: 0,
          height: 120,
          child: DecoratedBox(
            decoration: BoxDecoration(color: footerColor),
          ),
        ),
        Positioned(
          bottom: 100,
          right: 0,
          width: 10,
          height: 60,
          child: DecoratedBox(
            decoration: BoxDecoration(
                color: headerColor,
                borderRadius:
                    const BorderRadius.only(bottomLeft: Radius.circular(20.0))),
          ),
        ),
        Column(
          children: <Widget>[
            _buildHeader(),
            Expanded(
              child: Container(
                margin: const EdgeInsets.only(right: 10.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: body,
              ),
            ),
            const SizedBox(height: 10.0),
            if (footer != null) footer!,
          ],
        ),
      ],
    );
  }

  Widget _buildHeader() {
    return Container(
      height: headerHeight,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(30.0)),
        color: headerColor,
      ),
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
      child: header,
    );
  }
}
