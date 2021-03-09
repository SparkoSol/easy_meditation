import 'package:easy_meditation/src/base/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PaymentSuccessView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Column(children: [
        Center(
          child: Icon(
            CupertinoIcons.check_mark_circled_solid,
            color: Colors.green.shade700,
            size: 120,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 15),
          child: Text('Payment Confirmed', style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold
          )),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 30, 20, 20),
          child: Text('Thank you for subscribing', style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 17
          )),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
          child: Text(
            'An Email has been sent to you with '
            'a copy of your transaction receipt',
            style: TextStyle(fontSize: 15),
            textAlign: TextAlign.center,
          ),
        ),

        Padding(
          padding: const EdgeInsets.fromLTRB(20, 60, 20, 0),
          child: TextButton(
            onPressed: Navigator.of(context).pop,
            child: Text('CONTINUE', style: TextStyle(fontSize: 18)),
            style: TextButton.styleFrom(
              primary: Colors.white,
              minimumSize: Size.fromHeight(55),
              backgroundColor: AppTheme.primaryColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
            ),
          ),
        ),
      ]),
    );
  }
}
