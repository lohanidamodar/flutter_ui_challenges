/**
 * Author: Damodar Lohani
 * profile: https://github.com/lohanidamodar
  */

import 'package:flutter/material.dart';
import 'package:flutter_ui_challenges/src/pages/animations/animation1/animation1.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:fl_chart/fl_chart.dart';

class DashboardOnePage extends StatelessWidget {
  static final String path = "lib/src/pages/dashboard/dash1.dart";

  final String image = images[0];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).buttonColor,
      appBar: _buildAppBar(context),
      body: _buildBody(context),
    );
  }

  _buildBody(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        _buildStats(),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: _buildTitledContainer("Sales",
                child: Container(
                    height: 200, child: DonutPieChart.withSampleData())),
          ),
        ),
        _buildActivities(context),
      ],
    );
  }

  SliverPadding _buildStats() {
    final TextStyle stats = TextStyle(
        fontWeight: FontWeight.bold, fontSize: 20.0, color: Colors.white);
    return SliverPadding(
      padding: const EdgeInsets.all(16.0),
      sliver: SliverGrid.count(
        crossAxisSpacing: 16.0,
        mainAxisSpacing: 16.0,
        childAspectRatio: 1.5,
        crossAxisCount: 3,
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: Colors.blue,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "+500",
                  style: stats,
                ),
                const SizedBox(height: 5.0),
                Text("Leads".toUpperCase())
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: Colors.pink,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "+300",
                  style: stats,
                ),
                const SizedBox(height: 5.0),
                Text("Customers".toUpperCase())
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: Colors.green,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "+1200",
                  style: stats,
                ),
                const SizedBox(height: 5.0),
                Text("Orders".toUpperCase())
              ],
            ),
          ),
        ],
      ),
    );
    SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: _buildTitledContainer("Stats",
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Text(
                      "+500",
                      style: stats,
                    ),
                    const SizedBox(height: 5.0),
                    Text("Leads".toUpperCase())
                  ],
                ),
                const SizedBox(width: 20.0),
                const SizedBox(width: 20.0),
                Column(
                  children: <Widget>[
                    Text(
                      "+600",
                      style: stats,
                    ),
                    const SizedBox(height: 5.0),
                    Text("Orders".toUpperCase())
                  ],
                ),
                const SizedBox(width: 20.0),
                Column(
                  children: <Widget>[
                    Text(
                      "+100",
                      style: stats,
                    ),
                    const SizedBox(height: 5.0),
                    Text("Deliveries".toUpperCase())
                  ],
                ),
              ],
            )),
      ),
    );
  }

  SliverPadding _buildActivities(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.all(16.0),
      sliver: SliverToBoxAdapter(
        child: _buildTitledContainer(
          "Activities",
          height: 280,
          child: Expanded(
            child: GridView.count(
              physics: NeverScrollableScrollPhysics(),
              crossAxisCount: 3,
              children: activities
                  .map(
                    (activity) => Column(
                      children: <Widget>[
                        CircleAvatar(
                          radius: 20,
                          backgroundColor: Theme.of(context).buttonColor,
                          child: activity.icon != null
                              ? Icon(
                                  activity.icon,
                                  size: 18.0,
                                )
                              : null,
                        ),
                        const SizedBox(height: 5.0),
                        Text(
                          activity.title!,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 14.0),
                        ),
                      ],
                    ),
                  )
                  .toList(),
            ),
          ),
        ),
      ),
    );
  }

  SliverToBoxAdapter _buildHeader() {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Stack(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(image), fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(20.0)),
              height: 200,
              foregroundDecoration: BoxDecoration(
                  color: Colors.black54,
                  borderRadius: BorderRadius.circular(20.0)),
            ),
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Good Afternoon".toUpperCase(),
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 24.0,
                      ),
                    ),
                    const SizedBox(height: 20.0),
                    Text(
                      "Take a glimpses at your dashboard",
                      style: TextStyle(color: Colors.white, fontSize: 18.0),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  AppBar _buildAppBar(BuildContext context) {
    return AppBar(
      iconTheme: IconThemeData(color: Theme.of(context).primaryColor),
      titleSpacing: 0.0,
      elevation: 0.5,
      backgroundColor: Colors.white,
      title: Text(
        "Dashboard",
        style: TextStyle(
            color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20.0),
        textAlign: TextAlign.center,
      ),
      actions: <Widget>[_buildAvatar(context)],
    );
  }

  Widget _buildAvatar(BuildContext context) {
    return IconButton(
      iconSize: 40,
      padding: EdgeInsets.all(0),
      icon: CircleAvatar(
        backgroundColor: Colors.grey.shade300,
        child: CircleAvatar(radius: 16, backgroundImage: NetworkImage(image)),
      ),
      onPressed: () {},
    );
  }

  Container _buildTitledContainer(String title,
      {Widget? child, double? height}) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      width: double.infinity,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            title,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28.0),
          ),
          if (child != null) ...[const SizedBox(height: 10.0), child]
        ],
      ),
    );
  }
}

class DonutPieChart extends StatelessWidget {
  final List<PieChartSectionData> seriesList;

  DonutPieChart(this.seriesList);

  /// Creates a [PieChart] with sample data and no transition.
  factory DonutPieChart.withSampleData() {
    return new DonutPieChart(
      _createSampleData(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return PieChart(
      PieChartData(
        centerSpaceRadius: 40.0,
        sectionsSpace: 10.0,
        sections: seriesList,
      ),
      swapAnimationDuration: Duration(milliseconds: 150),
      swapAnimationCurve: Curves.linear,
    );
  }

  /// Create one series with sample hard coded data.
  static List<PieChartSectionData> _createSampleData() {
    final data = [
      PieChartSectionData(
        value: 100,
        title: "July",
        color: Colors.red.shade400,
        titleStyle: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
        titlePositionPercentageOffset: 1,
      ),
      PieChartSectionData(
        title: "August",
        value: 75,
        color: Colors.blue.shade400,
        titleStyle: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
        titlePositionPercentageOffset: 1,
      ),
      PieChartSectionData(
        title: "September",
        value: 25,
        color: Colors.green.shade400,
        titleStyle: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
        titlePositionPercentageOffset: 1,
      ),
      PieChartSectionData(
        title: "October",
        value: 50,
        color: Colors.purple.shade400,
        titleStyle: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
        titlePositionPercentageOffset: 1,
      ),
    ];

    return data;
  }
}

/// Sample linear data type.
class LinearSales {
  final String month;
  final int sales;

  LinearSales(this.month, this.sales);
}

class Activity {
  final String? title;
  final IconData? icon;
  Activity({this.title, this.icon});
}

final List<Activity> activities = [
  Activity(title: "Results", icon: FontAwesomeIcons.listOl),
  Activity(title: "Messages", icon: FontAwesomeIcons.sms),
  Activity(title: "Appointments", icon: FontAwesomeIcons.calendarDay),
  Activity(title: "Video Consultation", icon: FontAwesomeIcons.video),
  Activity(title: "Summary", icon: FontAwesomeIcons.fileAlt),
  Activity(title: "Billing", icon: FontAwesomeIcons.dollarSign),
];
