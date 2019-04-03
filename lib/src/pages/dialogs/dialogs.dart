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
              RaisedButton(color: Colors.green, colorBrightness: Brightness.dark,child: Text("Payment Success"),onPressed: () => _paymentSuccessDialog(context),),
              SizedBox(height: 10.0),
              RaisedButton(color: Colors.green, colorBrightness: Brightness.dark,child: Text("Alert Dialog"),onPressed: () => _alertDialog(context),),
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

  _alertDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Center(
          child: Dialog(
            elevation: 0,
            backgroundColor: Colors.transparent,
            child: Container(
              padding: EdgeInsets.only(right: 16.0),
              height: 150,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(75),
                  bottomLeft: Radius.circular(75),
                  topRight: Radius.circular(10),
                  bottomRight: Radius.circular(10)
                )
              ),
              child: Row(
                children: <Widget>[
                  SizedBox(width: 20.0),
                  CircleAvatar(radius: 55, backgroundColor: Colors.grey.shade200, child: Image.asset('assets/img/info-icon.png', width: 60,),),
                  SizedBox(width: 20.0),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text("Alert!", style: Theme.of(context).textTheme.title,),
                        SizedBox(height: 10.0),
                        Flexible(
                          child: Text(
                            "Do you want to continue to turn off the services?"),
                        ),
                        SizedBox(height: 10.0),
                        Row(children: <Widget>[
                          Expanded(
                            child: RaisedButton(
                              child: Text("No"),
                              color: Colors.red,
                              colorBrightness: Brightness.dark,
                              onPressed: (){Navigator.pop(context);},
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                            ),
                          ),
                          SizedBox(width: 10.0),
                          Expanded(
                            child: RaisedButton(
                              child: Text("Yes"),
                              color: Colors.green,
                              colorBrightness: Brightness.dark,
                              onPressed: (){Navigator.pop(context);},
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                            ),
                          ),
                        ],)
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      }
    );
  }
}