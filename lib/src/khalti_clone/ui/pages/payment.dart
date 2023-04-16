/**
 * Author: Damodar Lohani
 * profile: https://github.com/lohanidamodar
  */
import 'package:flutter/material.dart';

class Payment extends StatefulWidget {
  const Payment({super.key});

  @override
  _PaymentState createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  double? amount;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Payment'),
      ),
      body: Column(
        children: <Widget>[
          const SizedBox(height: 20),
          Container(
            margin: const EdgeInsets.all(20),
            child: TextField(
              onChanged: (val) {
                setState(() {
                  amount = double.parse(val);
                });
              },
              decoration: const InputDecoration(hintText: 'Amount'),
              keyboardType: TextInputType.number,
            ),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Theme.of(context).primaryColor,
            ),
            child: const Text('Pay',
                style: TextStyle(
                  color: Colors.white,
                )),
          ),
          const Text(
            'Note: Make sure your device have khalti app',
            style: TextStyle(color: Colors.grey),
          )
        ],
      ),
    );
  }
}
