/**
 * Author: Mausam Rayamajhi
 * profile: https://github.com/mausamRayamajhi
  */
  
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../util/constant.dart';
import '../../widget/dashboard/transaction.dart';
import '../../widget/heading.dart';

class LastTransactions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size deviceSize = MediaQuery.of(context).size;
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        SizedBox(
          height: 10.0,
        ),
        Heading(
          title: 'Last transactions',
        ),
        SizedBox(
          height: 25.0,
        ),
        Flexible(
          child: Container(
            // color: Colors.red,
            height: deviceSize.height * 0.3,
            child: ListView.builder(
              shrinkWrap: true,
              // physics: NeverScrollableScrollPhysics(),
              physics: BouncingScrollPhysics(),
              itemCount: transactions.length,
              itemBuilder: (context, int index) => Transaction(
                    transaction: transactions[index],
                  ),
            ),
          ),
        ),
      ],
    );
  }
}
