import 'dart:convert';
import 'package:easy_meditation/src/utils/lazy_task.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;
import 'package:stripe_payment/stripe_payment.dart';

class StripeTransactionResponse {
  String message;
  bool success;
  String paymentIntentId;
  Map<String,dynamic> response;
  StripeTransactionResponse({this.message, this.success,this.paymentIntentId,this.response});
}

class StripeService {
  static String apiBase = 'https://api.stripe.com/v1';
  static String paymentApiUrl = '$apiBase/payment_intents';
  static String secret = 'sk_test_51H5TD1Hd6Hl6omJ80WMijMFyAWulASFc9q3dEVQCbHnjScWSKksWLbZ5h6bB2RjorJ9sCJxolZ8G72AEawTJ22b200AvBaVNjg';
  static Map<String, String> headers = {
    'Authorization': 'Bearer ${StripeService.secret}',
    'Content-Type': 'application/x-www-form-urlencoded'
  };
  static init() {
    StripePayment.setOptions(
        StripeOptions(
          // Todo: Test
            publishableKey: "pk_test_51H5TD1Hd6Hl6omJ8y6cuRN5kQThSgh0TLf5Abanb3nOFXo53YcxsmNQOulXour5TmtNAAZule8a4pwi8S4jWZW8A001r9dg6a2",
            merchantId: "Test",
            androidPayMode: 'test'
        )
    );
  }

  static Future<StripeTransactionResponse> payWithNewCard({String amount, String currency,BuildContext context}) async {
    print("Amount received to pay $amount");
   return await performLazyTask(context, () async {
      init();
      try {
        PaymentMethod paymentMethod = await StripePayment.paymentRequestWithCardForm(CardFormPaymentRequest());
        Map<String,dynamic> paymentIntent = await StripeService.createPaymentIntent(
            amount,
            currency
        );
        print(paymentIntent);
        PaymentIntentResult response;
        try {
          response = await StripePayment.confirmPaymentIntent(
              PaymentIntent(
                  clientSecret: paymentIntent['client_secret'],
                  paymentMethodId: paymentMethod.id
              )
          );
        } catch (err){
          return new StripeTransactionResponse(
              message: 'Transaction failed: ${err.toString()}',
              success: false
          );
        }
        print("----------------------Stripe Response--------------------");
        print(response.toJson());

        if (response.status == 'succeeded') {
          return StripeTransactionResponse(
              message: 'Transaction successful',
              success: true,
              paymentIntentId: response.paymentIntentId,
              response: response.toJson()
          );
        } else {
          //Todo show snackbar
          // showErrorToast("Could not process your payment.");
          return new StripeTransactionResponse(
              message: 'Transaction failed',
              success: false
          );
        }
      } on PlatformException catch(err) {
        return StripeService.getPlatformExceptionErrorResult(err);
      } catch (err) {
        //Todo show snackbar
        // showErrorToast("Could not process your payment.");
        return StripeTransactionResponse(
            message: 'Transaction failed: ${err.toString()}',
            success: false
        );
      }
    },message: 'Processing your transaction');


  }

  static getPlatformExceptionErrorResult(err) {
    String message = 'Something went wrong';
    if (err.code == 'cancelled') {
      message = 'Transaction cancelled';
    }
    return new StripeTransactionResponse(
        message: message,
        success: false
    );
  }

  static Future<Map<String, dynamic>> createPaymentIntent(String amount, String currency) async {
    try {
      Map<String, dynamic> body = {
        'amount': amount,
        'currency': currency,
        'payment_method_types[]': 'card'
      };
      var response = await http.post(
          Uri.parse(StripeService.paymentApiUrl),
          body: body,
          headers: StripeService.headers
      );
      return jsonDecode(response.body);
    } catch (err) {
      print('err charging user: ${err.toString()}');
    }
    return null;
  }

  static Future<StripeTransactionResponse> payViaExistingCard({String amount, CreditCard card}) async{
    init();
    amount+='00';
    try {
      var paymentMethod = await StripePayment.createPaymentMethod(PaymentMethodRequest(card: card));

      var paymentIntent;
      try{
        paymentIntent = await StripeService.createPaymentIntent(
            amount,
            "USD"
        );

        print(paymentIntent);
      } catch (e){
        print("There was an error");
        // showErrorToast(e);
        print(e);
      }
      var response;
      try{
        response = await StripePayment.confirmPaymentIntent(
            PaymentIntent(
                clientSecret: paymentIntent['client_secret'],
                paymentMethodId: paymentMethod.id
            ));
      }catch (e){
        print('Error here');
        print(e);
      }

      print(response.paymentIntentId);

      if (response.status == 'succeeded') {
        return new StripeTransactionResponse(
            paymentIntentId: response.paymentIntentId,
            message: 'Transaction successful',
            success: true
        );
      } else {
        return StripeTransactionResponse(
            message: 'Transaction failed',
            success: false
        );
      }
    } on PlatformException catch(err) {
      print(err);
      return StripeService.getPlatformExceptionErrorResult(err);
    } catch (err) {
      return new StripeTransactionResponse(
          message: 'Transaction failed: ${err.toString()}',
          success: false
      );
    }
  }

}