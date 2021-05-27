import 'dart:convert';

import 'package:easy_meditation/src/base/data.dart';
import 'package:easy_meditation/src/base/theme.dart';
import 'package:easy_meditation/src/models/transaction.dart';
import 'package:easy_meditation/src/service/payment-service.dart';
import 'package:easy_meditation/src/service/rest/_client.dart';
import 'package:easy_meditation/src/ui/widgets/date-picker.dart';
import 'package:easy_meditation/src/utils/input_validators.dart';
import 'package:easy_meditation/src/utils/lazy_task.dart';
import 'package:easy_meditation/src/models/card.dart' as c;
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;
import 'package:stripe_payment/stripe_payment.dart';

class CardDetailsView extends StatefulWidget {
  final VoidCallback onNext;

  CardDetailsView(this.onNext);

  @override
  _CardDetailsViewState createState() => _CardDetailsViewState();
}

class _CardDetailsViewState extends State<CardDetailsView> {
  final today = DateTime.now();
  CreditCard card = CreditCard();
  c.Card _card;
  var type = [true, false];
  var formKey = GlobalKey<FormState>();
  var mode = AutovalidateMode.disabled;

  void initState() {
    super.initState();
    _card = AppData().card;

    final date = _card?.expiryDate?.split(':') ?? ['0', '0'];

    card
      ..name = _card?.fullName
      ..number = _card?.cardNumber
      ..cvc = _card?.cvc
      ..expMonth = int.tryParse(date[0])
      ..expYear = int.tryParse(date[1]);

    if (card.expYear == 0) card.expYear = today.year;
    if (card.expMonth == 0) card.expMonth = today.month;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
      child: Form(
        key: formKey,
        autovalidateMode: mode,
        child: SingleChildScrollView(
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
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
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
              initialValue: card.name,
              onSaved: (value) => card.name = value,
              validator: InputValidators.required,
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.fromLTRB(12, 12, 12, 12),
                labelText: 'Full Name',
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 25),
              child: TextFormField(
                onSaved: (value) => card.number = value,
                initialValue: card.number,
                keyboardType: TextInputType.number,
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                validator: InputValidators.required,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.credit_card_outlined),
                  contentPadding: const EdgeInsets.fromLTRB(12, 12, 12, 12),
                  labelText: 'Card Number',
                ),
              ),
            ),
            //Todo
            Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Expanded(
                child: DropdownButtonFormField(
                  decoration: InputDecoration(
                    labelText: 'Year',
                    contentPadding: const EdgeInsets.all(10),
                  ),
                  value: card.expMonth,
                  items: [
                    DropdownMenuItem(child: Text('Jan'), value: 1),
                    DropdownMenuItem(child: Text('Feb'), value: 2),
                    DropdownMenuItem(child: Text('Mar'), value: 3),
                    DropdownMenuItem(child: Text('Apr'), value: 4),
                    DropdownMenuItem(child: Text('May'), value: 5),
                    DropdownMenuItem(child: Text('Jun'), value: 6),
                    DropdownMenuItem(child: Text('Jul'), value: 7),
                    DropdownMenuItem(child: Text('Aug'), value: 8),
                    DropdownMenuItem(child: Text('Sep'), value: 9),
                    DropdownMenuItem(child: Text('Oct'), value: 10),
                    DropdownMenuItem(child: Text('Nov'), value: 11),
                    DropdownMenuItem(child: Text('Dec'), value: 12),
                  ],
                  onChanged: (val) => setState(() => card.expMonth = val),
                ),
              ),
              SizedBox(width: 15),
              Expanded(
                child: DropdownButtonFormField(
                  decoration: InputDecoration(
                    labelText: 'Year',
                    contentPadding: const EdgeInsets.all(10),
                  ),
                  value: card.expYear,
                  items: List.generate(30, (index) {
                    final year = today.year + index;
                    return DropdownMenuItem(
                      child: Text(year.toString()),
                      value: year,
                    );
                  }),
                  onChanged: (val) => setState(() => card.expYear = val),
                ),
              ),
              SizedBox(width: 15),
              Expanded(
                child: TextFormField(
                  validator: InputValidators.required,
                  initialValue: card.cvc,
                  onSaved: (value) => card.cvc = value,
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.fromLTRB(12, 12, 12, 12),
                    labelText: 'CVC',
                  ),
                ),
              ),
            ]),
            Padding(
              padding: const EdgeInsets.only(top: 40, bottom: 10),
              child: TextButton(
                onPressed: () async {
                  if (formKey.currentState.validate()) {
                    formKey.currentState.save();
                    await performLazyTask(context, () async {
                      StripeTransactionResponse response =
                          await StripeService.payViaExistingCard(
                        card: card,
                        amount: '3',
                      );

                      if (response.success ?? false) {
                        final transaction = AppData().transaction;

                        String _type;
                        if (type[0]) {
                          _type = 'visa';
                        } else {
                          _type = 'master-card';
                        }

                        final _card = c.Card()
                          ..type = _type
                          ..cvc = card.cvc
                          ..cardNumber = card.number
                          ..fullName = card.name
                          ..expiryDate = '${card.expMonth}:${card.expYear}';

                        var response = await http.post(
                            Uri.parse('$apiUrl/users/${AppData.user.id}/card'),
                            body: jsonEncode(_card.toJson()),
                            headers: {'content-type': 'application/json'});

                        final _transaction = Transaction()
                          ..amount = 3
                          ..user = AppData.user.username
                          ..createdAt = DateTime.now()
                          ..requiredAt = transaction.nextAt
                          ..nextAt = transaction.nextAt.add(Duration(days: 30));

                        response = await http.post(
                            Uri.parse('$apiUrl/users/transactions'),
                            body: jsonEncode(_transaction.toJson()),
                            headers: {'content-type': 'application/json'});

                        AppData().card = _card;
                        AppData().transaction = _transaction;

                        widget.onNext();

                        return;
                      } else {
                        showDialog(
                            context: context,
                            builder: (context) {
                              return Dialog(
                                child: Text(response.message),
                              );
                            });
                        // print('asdasdasd');
                        // ModalService.scaffoldMessengerKey.currentState
                        //     .showSnackBar(
                        //   SnackBar(content: Text('Some Error Occurred')),
                        // );
                      }
                    }, message: 'Processing your transaction');
                  } else {
                    setState(() {
                      mode = AutovalidateMode.always;
                    });
                  }
                },
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
          ]),
        ),
      ),
    );
  }
}
