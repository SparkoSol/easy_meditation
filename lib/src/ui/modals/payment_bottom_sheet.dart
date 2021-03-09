import 'package:easy_meditation/src/ui/views/payment/card_details_view.dart';
import 'package:easy_meditation/src/ui/views/payment/payment_info_view.dart';
import 'package:easy_meditation/src/ui/views/payment/payment_success_view.dart';
import 'package:flutter/material.dart';

class PaymentBottomSheet extends StatefulWidget {
  @override
  _PaymentBottomSheetState createState() => _PaymentBottomSheetState();
}

class _PaymentBottomSheetState extends State<PaymentBottomSheet> {
  final controller = PageController();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 510,
      child: PageView(
        controller: controller,
        physics: NeverScrollableScrollPhysics(),
        children: [
          PaymentInfoView(
            () => controller.nextPage(
                duration: Duration(milliseconds: 500), curve: Curves.ease),
          ),
          CardDetailsView(
            () => controller.nextPage(
                duration: Duration(milliseconds: 500), curve: Curves.ease),
          ),
          PaymentSuccessView()
        ],
      ),
    );
  }
}
