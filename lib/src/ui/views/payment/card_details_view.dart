import 'package:easy_meditation/src/base/theme.dart';
import 'package:easy_meditation/src/service/payment-service.dart';
import 'package:easy_meditation/src/ui/widgets/date-picker.dart';
import 'package:easy_meditation/src/utils/input_validators.dart';
import 'package:easy_meditation/src/utils/lazy_task.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:stripe_payment/stripe_payment.dart';

class CardDetailsView extends StatefulWidget {
  final VoidCallback onNext;

  CardDetailsView(this.onNext);

  @override
  _CardDetailsViewState createState() => _CardDetailsViewState();
}

class _CardDetailsViewState extends State<CardDetailsView> {
  CreditCard card = CreditCard();
  var formKey = GlobalKey<FormState>();
  var mode = AutovalidateMode.disabled;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
      child: Form(
        key: formKey,
        autovalidateMode: mode,
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
            initialValue: card.name,
            onSaved: (value)=> card.name = value,
            validator: InputValidators.required,
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.fromLTRB(12, 12, 12, 12),
              labelText: 'Full Name',
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 25),
            child: TextFormField(
              onSaved: (value)=> card.number = value,
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
          Row(children: [
            Expanded(
              child: DatePickerFormField(
                onChanged: (DateTime value){
                  card.expMonth = value.month;
                  card.expYear = value.year;
                },
              ),
            ),
            // Expanded(
            //   child: TextFormField(
            //     // onSaved: (value)=> card.expMonth = value,
            //     decoration: InputDecoration(
            //       prefixIcon: Icon(Icons.calendar_today_rounded),
            //       contentPadding: const EdgeInsets.fromLTRB(12, 12, 12, 12),
            //       labelText: 'Expiry Date',
            //     ),
            //   ),
            // ),
            SizedBox(width: 15),
            Expanded(
              child: TextFormField(
                validator: InputValidators.required,
                initialValue: card.cvc,
                onSaved: (value)=> card.cvc = value,
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.fromLTRB(12, 12, 12, 12),
                  labelText: 'CVC',
                ),
              ),
            ),
          ]),
          Padding(
            padding: const EdgeInsets.only(top: 50, bottom: 10),
            child: TextButton(
              onPressed: () async{
                if(formKey.currentState.validate()){
                  formKey.currentState.save();
                  await performLazyTask(context, () async {
                    StripeTransactionResponse response = await StripeService.payViaExistingCard(
                        card: card, amount: '3'
                    );

                    if (response.success ?? false) {
                      print("Payment Successful");
                      widget.onNext();
                      return;
                    }
                  },message: 'Processing your transaction');
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
          Padding(
            padding: const EdgeInsets.only(top: 10, bottom: 20),
            child: OutlinedButton(
              onPressed: () async {
              },
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
