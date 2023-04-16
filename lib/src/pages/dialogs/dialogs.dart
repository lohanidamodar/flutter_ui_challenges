/**
 * Author: Damodar Lohani
 * profile: https://github.com/lohanidamodar
  */

import 'package:flutter/material.dart';
import 'package:flutter_ui_challenges/core/presentation/res/assets.dart';
import 'package:flutter_ui_challenges/src/widgets/network_image.dart';

class DialogsPage extends StatelessWidget {
  static const String path = "lib/src/pages/dialogs/dialogs.dart";

  const DialogsPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dialogs'),
      ),
      body: SizedBox(
        width: double.infinity,
        child: ListView(
          padding: const EdgeInsets.all(8.0),
          children: <Widget>[
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.lightGreen,
              ),
              child: const Text("Payment Success"),
              onPressed: () => _paymentSuccessDialog(context),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.lightGreen,
              ),
              child: const Text("Alert Dialog"),
              onPressed: () => _alertDialog(context),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.lightGreen,
              ),
              child: const Text("Success Dialog"),
              onPressed: () =>
                  _customAlertDialog(context, AlertDialogType.success),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.lightGreen,
              ),
              child: const Text("Info Dialog"),
              onPressed: () =>
                  _customAlertDialog(context, AlertDialogType.info),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.lightGreen,
              ),
              child: const Text("Warning Dialog"),
              onPressed: () =>
                  _customAlertDialog(context, AlertDialogType.warning),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.lightGreen,
              ),
              child: const Text("Error Dialog"),
              onPressed: () =>
                  _customAlertDialog(context, AlertDialogType.error),
            ),
          ],
        ),
      ),
    );
  }

  _paymentSuccessDialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return PaymentSuccessDialog();
        });
  }

  _alertDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return const BeautifulAlertDialog();
      },
    );
  }

  _customAlertDialog(BuildContext context, AlertDialogType type) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return CustomAlertDialog(
          type: type,
          title: "Beautiful title",
          content: "Information to your user describing the situation.",
        );
      },
    );
  }
}

class BeautifulAlertDialog extends StatelessWidget {
  const BeautifulAlertDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Dialog(
        elevation: 0,
        backgroundColor: Colors.transparent,
        child: Container(
          padding: const EdgeInsets.only(right: 16.0),
          height: 150,
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(75),
                  bottomLeft: Radius.circular(75),
                  topRight: Radius.circular(10),
                  bottomRight: Radius.circular(10))),
          child: Row(
            children: <Widget>[
              const SizedBox(width: 20.0),
              CircleAvatar(
                radius: 55,
                backgroundColor: Colors.grey.shade200,
                child: const PNetworkImage(
                  infoIcon,
                  width: 60,
                ),
              ),
              const SizedBox(width: 20.0),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Alert!",
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    const SizedBox(height: 10.0),
                    const Flexible(
                      child: Text(
                          "Do you want to continue to turn off the services?"),
                    ),
                    const SizedBox(height: 10.0),
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.red,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20.0)),
                            ),
                            child: const Text("No"),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                        ),
                        const SizedBox(width: 10.0),
                        Expanded(
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.green,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20.0)),
                            ),
                            child: const Text("Yes"),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class PaymentSuccessDialog extends StatelessWidget {
  final image = images[2];
  final TextStyle subtitle = const TextStyle(fontSize: 12.0, color: Colors.grey);
  final TextStyle label = const TextStyle(fontSize: 14.0, color: Colors.grey);

  PaymentSuccessDialog({super.key});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 370,
        child: Dialog(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: <Widget>[
                const Text(
                  "Thank You!",
                  style: TextStyle(color: Colors.green),
                ),
                Text(
                  "Your transaction was successful",
                  style: label,
                ),
                const Divider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "DATE",
                      style: label,
                    ),
                    Text("TIME", style: label)
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const <Widget>[Text("2, April 2019"), Text("9:10 AM")],
                ),
                const SizedBox(height: 20.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "TO",
                          style: label,
                        ),
                        const Text("Manny Moto"),
                        Text(
                          "manny.moto@gmail.com",
                          style: subtitle,
                        ),
                      ],
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.green,
                      backgroundImage: AssetImage(image),
                    )
                  ],
                ),
                const SizedBox(height: 20.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "AMOUNT",
                          style: label,
                        ),
                        const Text("\$ 15000"),
                      ],
                    ),
                    Text(
                      "COMPLETED",
                      style: label,
                    )
                  ],
                ),
                const SizedBox(height: 20.0),
                Container(
                  padding: const EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      borderRadius: BorderRadius.circular(5.0)),
                  child: Row(
                    children: <Widget>[
                      const CircleAvatar(
                        backgroundColor: Colors.green,
                        child: Icon(Icons.account_balance_wallet),
                      ),
                      const SizedBox(width: 10.0),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          const Text("Credit/Debit Card"),
                          Text(
                            "Master Card ending ***5",
                            style: subtitle,
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

enum AlertDialogType {
  success,
  error,
  warning,
  info,
}

class CustomAlertDialog extends StatelessWidget {
  final AlertDialogType type;
  final String title;
  final String content;
  final Widget? icon;
  final String buttonLabel;
  final TextStyle titleStyle = const TextStyle(
      fontSize: 20.0, color: Colors.black, fontWeight: FontWeight.bold);

  const CustomAlertDialog(
      {Key? key,
      this.title = "Successful",
      required this.content,
      this.icon,
      this.type = AlertDialogType.info,
      this.buttonLabel = "Ok"})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
        type: MaterialType.transparency,
        child: Container(
          alignment: Alignment.center,
          child: Container(
            margin: const EdgeInsets.all(8.0),
            padding: const EdgeInsets.all(20.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              color: Colors.white,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                const SizedBox(height: 10.0),
                icon ??
                    Icon(
                      _getIconForType(type),
                      color: _getColorForType(type),
                      size: 50,
                    ),
                const SizedBox(height: 10.0),
                Text(
                  title,
                  style: titleStyle,
                  textAlign: TextAlign.center,
                ),
                const Divider(),
                Text(
                  content,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 40.0),
                SizedBox(
                  width: double.infinity,
                  child: TextButton(
                    style: TextButton.styleFrom(
                      padding: const EdgeInsets.all(5.0),
                    ),
                    child: Text(buttonLabel),
                    onPressed: () => Navigator.pop(context, true),
                  ),
                ),
              ],
            ),
          ),
        ));
  }

  IconData _getIconForType(AlertDialogType type) {
    switch (type) {
      case AlertDialogType.warning:
        return Icons.warning;
      case AlertDialogType.success:
        return Icons.check_circle;
      case AlertDialogType.error:
        return Icons.error;
      case AlertDialogType.info:
      default:
        return Icons.info_outline;
    }
  }

  Color _getColorForType(AlertDialogType type) {
    switch (type) {
      case AlertDialogType.warning:
        return Colors.orange;
      case AlertDialogType.success:
        return Colors.green;
      case AlertDialogType.error:
        return Colors.red;
      case AlertDialogType.info:
      default:
        return Colors.blue;
    }
  }
}
