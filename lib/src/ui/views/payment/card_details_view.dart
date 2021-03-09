import 'package:easy_meditation/src/base/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class CardDetailsView extends StatefulWidget {
  final VoidCallback onNext;

  CardDetailsView(this.onNext);

  @override
  _CardDetailsViewState createState() => _CardDetailsViewState();
}

class _CardDetailsViewState extends State<CardDetailsView> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
      child: Form(
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 15),
            child: Row(
              children: [
                Text('Subscription', style: AppTheme.sectionHeaderStyle),
                SizedBox(width: 40),
                Text.rich(
                  TextSpan(
                    text: '\$2.50/',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    children: [
                      TextSpan(
                        text: 'month',
                        style: TextStyle(fontWeight: FontWeight.normal),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),

          TextFormField(
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.fromLTRB(12, 12, 12, 12),
              labelText: 'Full Name',
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 25),
            child: TextFormField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.credit_card_outlined),
                contentPadding: const EdgeInsets.fromLTRB(12, 12, 12, 12),
                labelText: 'Card Number',
              ),
            ),
          ),
          Row(children: [
            Expanded(
              child: TextFormField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.calendar_today_rounded),
                  contentPadding: const EdgeInsets.fromLTRB(12, 12, 12, 12),
                  labelText: 'Expiry Date',
                ),
              ),
            ),
            SizedBox(width: 15),
            Expanded(
              child: TextFormField(
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.fromLTRB(12, 12, 12, 12),
                  labelText: 'CVV',
                ),
              ),
            ),
          ]),
          Padding(
            padding: const EdgeInsets.only(top: 50, bottom: 10),
            child: TextButton(
              onPressed: widget.onNext,
              child: Text('PAY', style: TextStyle(fontSize: 18)),
              style: TextButton.styleFrom(
                primary: Colors.white,
                minimumSize: Size.fromHeight(55),
                backgroundColor: AppTheme.primaryColor,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, bottom: 20),
            child: OutlinedButton(
              onPressed: widget.onNext,
              child: Text('PAY WITH PAYPAL', style: TextStyle(fontSize: 18)),
              style: OutlinedButton.styleFrom(
                primary: AppTheme.primaryColor,
                side: BorderSide(color: AppTheme.primaryColor),
                minimumSize: Size.fromHeight(55),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
