import 'package:flutter/material.dart';
import 'package:flutter_ui_challenges/src/widgets/dialogs/payment_success_dialog.dart';

class DialogsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Dialogs'),
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 10.0),
              RaisedButton(color: Colors.green, colorBrightness: Brightness.dark,child: Text("Payment Success"),onPressed: () => _paymentSuccessDialog(context),)
            ],
          ),
        ),
      ),
    );
  }

  _paymentSuccessDialog( BuildContext context ) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return PaymentSuccessDialog();
      }
    );
  }
}