import 'package:flutter/material.dart';

class ConfirmOrderPage extends StatelessWidget{
  static final String path = "lib/src/pages/ecommerce/confirm_order1.dart";
  final String address = "Chabahil, Kathmandu";
  final String phone="9818522122";
  final double total = 500;
  final double delivery = 100;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Confirm Order"),
      ),
      body: _buildBody(context),
    );
  }

  Widget _buildBody(BuildContext context) {
    return SingleChildScrollView(
          padding: EdgeInsets.only(left: 20.0, right: 20.0, top: 40.0, bottom: 10.0),
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text("Subtotal"),
                  Text("Rs. $total"),
                ],
              ),
              SizedBox(height: 10.0,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text("Delivery fee"),
                  Text("Rs. $delivery"),
                ],
              ),
              SizedBox(height: 10.0,),  
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text("Total", style: Theme.of(context).textTheme.title,),
                  Text("Rs. ${total+delivery}", style: Theme.of(context).textTheme.title),
                ],
              ),
              SizedBox(height: 20.0,),
              Container(
                color: Colors.grey.shade200,
                padding: EdgeInsets.all(8.0),
                width: double.infinity,
                child: Text("Delivery Address".toUpperCase())
              ),
              Column(
                children: <Widget>[
                  RadioListTile(
                    selected: true,
                    value: address,
                    groupValue: address,
                    title: Text(address),
                    onChanged: (value){},
                  ),
                  RadioListTile(
                    selected: false,
                    value: "New Address",
                    groupValue: address,
                    title: Text("Choose new delivery address"),
                    onChanged: (value){},
                  ),
                  Container(
                    color: Colors.grey.shade200,
                    padding: EdgeInsets.all(8.0),
                    width: double.infinity,
                    child: Text("Contact Number".toUpperCase())
                  ),
                  RadioListTile(
                    selected: true,
                    value: phone,
                    groupValue: phone,
                    title: Text(phone),
                    onChanged: (value){},
                  ),
                  RadioListTile(
                    selected: false,
                    value: "New Phone",
                    groupValue: phone,
                    title: Text("Choose new contact number"),
                    onChanged: (value){},
                  ),
                ],
              ),
              SizedBox(height: 20.0,),
              Container(
                color: Colors.grey.shade200,
                padding: EdgeInsets.all(8.0),
                width: double.infinity,
                child: Text("Payment Option".toUpperCase())
              ),
              RadioListTile(
                groupValue: true,
                value: true,
                title: Text("Cash on Delivery"),
                onChanged: (value){},
              ),
              Container(
                width: double.infinity,
                child: RaisedButton(
                  color: Theme.of(context).primaryColor,
                  onPressed: ()=> {},
                  child: Text("Confirm Order", style: TextStyle(
                    color: Colors.white
                  ),),
                ),
              )
            ],
          ),
        );
  }

  
}