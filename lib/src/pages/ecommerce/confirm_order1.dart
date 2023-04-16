/**
 * Author: Damodar Lohani
 * profile: https://github.com/lohanidamodar
  */

import 'package:flutter/material.dart';

class ConfirmOrderPage extends StatelessWidget {
  static const String path = "lib/src/pages/ecommerce/confirm_order1.dart";
  final String address = "Chabahil, Kathmandu";
  final String phone = "9818522122";
  final double total = 500;
  final double delivery = 100;

  const ConfirmOrderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Confirm Order"),
      ),
      body: _buildBody(context),
    );
  }

  Widget _buildBody(BuildContext context) {
    return SingleChildScrollView(
      padding:
          const EdgeInsets.only(left: 20.0, right: 20.0, top: 40.0, bottom: 10.0),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              const Text("Subtotal"),
              Text("Rs. $total"),
            ],
          ),
          const SizedBox(
            height: 10.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              const Text("Delivery fee"),
              Text("Rs. $delivery"),
            ],
          ),
          const SizedBox(
            height: 10.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                "Total",
                style: Theme.of(context).textTheme.titleLarge,
              ),
              Text("Rs. ${total + delivery}",
                  style: Theme.of(context).textTheme.titleLarge),
            ],
          ),
          const SizedBox(
            height: 20.0,
          ),
          Container(
              color: Colors.grey.shade200,
              padding: const EdgeInsets.all(8.0),
              width: double.infinity,
              child: Text("Delivery Address".toUpperCase())),
          Column(
            children: <Widget>[
              RadioListTile(
                selected: true,
                value: address,
                groupValue: address,
                title: Text(address),
                onChanged: (value) {},
              ),
              RadioListTile(
                selected: false,
                value: "New Address",
                groupValue: address,
                title: const Text("Choose new delivery address"),
                onChanged: (value) {},
              ),
              Container(
                  color: Colors.grey.shade200,
                  padding: const EdgeInsets.all(8.0),
                  width: double.infinity,
                  child: Text("Contact Number".toUpperCase())),
              RadioListTile(
                selected: true,
                value: phone,
                groupValue: phone,
                title: Text(phone),
                onChanged: (value) {},
              ),
              RadioListTile(
                selected: false,
                value: "New Phone",
                groupValue: phone,
                title: const Text("Choose new contact number"),
                onChanged: (value) {},
              ),
            ],
          ),
          const SizedBox(
            height: 20.0,
          ),
          Container(
              color: Colors.grey.shade200,
              padding: const EdgeInsets.all(8.0),
              width: double.infinity,
              child: Text("Payment Option".toUpperCase())),
          RadioListTile(
            groupValue: true,
            value: true,
            title: const Text("Cash on Delivery"),
            onChanged: (value) {},
          ),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Theme.of(context).primaryColor,
              ),
              onPressed: () => {},
              child: const Text(
                "Confirm Order",
                style: TextStyle(color: Colors.white),
              ),
            ),
          )
        ],
      ),
    );
  }
}
