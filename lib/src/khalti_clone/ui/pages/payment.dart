/**
 * Author: Damodar Lohani
 * profile: https://github.com/lohanidamodar
  */
import 'package:flutter/material.dart';

class Payment extends StatefulWidget {
  @override
  _PaymentState createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  double amount;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Payment'),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            SizedBox(height: 20),
            Container(
              margin: EdgeInsets.all(20),
              child: TextField(
                onChanged: (val) {
                  setState(() {
                    amount = double.parse(val);
                  });
                },
                decoration: InputDecoration(hintText: 'Amount'),
                keyboardType: TextInputType.number,
              ),
            ),
            SizedBox(height: 20),
            RaisedButton(
              onPressed: () {
              },
              child: Text('Pay',
                  style: TextStyle(
                    color: Colors.white,
                  )),
              color: Theme.of(context).primaryColor,
            ),
            Text(
              'Note: Make sure your device have khalti app',
              style: TextStyle(color: Colors.grey),
            )
          ],
        ),
      ),
    );
  }
}
