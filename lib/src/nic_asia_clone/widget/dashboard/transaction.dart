/**
 * Author: Mausam Rayamajhi
 * profile: https://github.com/mausamRayamajhi
  */
  
import 'package:flutter/material.dart';
import '../../util/constant.dart';

class Transaction extends StatelessWidget {
  final Trx transaction;
  Transaction({this.transaction});

  @override
  Widget build(BuildContext context) {
    print('${transaction.amount}');
    Size deviceSize = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.only(bottom: 15.0),
      child: Material(
        borderRadius: BorderRadius.all(Radius.circular(8.0)),
        elevation: 3.0,
        child: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
          child: Container(
            height: deviceSize.height * 0.10,
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            decoration: BoxDecoration(
              border: Border(
                left: BorderSide(
                  width: 10.0,
                  color: primaryColor,
                ),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  transaction.type.toUpperCase(),
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 14.0,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      transaction.number.toUpperCase(),
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 14.0,
                      ),
                    ),
                    Text(
                      'NPR. ' + transaction.amount.toUpperCase(),
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 14.0,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 5.0,
                ),
                Text(
                  transaction.date.toUpperCase(),
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 10.0,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
