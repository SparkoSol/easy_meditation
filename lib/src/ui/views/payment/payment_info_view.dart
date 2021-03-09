import 'package:easy_meditation/src/base/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PaymentInfoView extends StatelessWidget {
  final VoidCallback onPressed;
  PaymentInfoView(this.onPressed);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20, bottom: 15),
            child: Text(
              'Subscription',
              style: AppTheme.sectionHeaderStyle,
            ),
          ),
          Text(
            'Join us and benefit from more than 40 hours of '
            'guided meditations, organized by levels. Introduce '
            'meditations to your daily life or deepen your existing practice.',
            style: TextStyle(fontSize: 15),
          ),
          _checkedText('From beginners course'),
          _checkedText('10+ guided meditation covering anxiety, '
              'focus, stress, gratitude and much more.'),
          _checkedText('Original Daily Mediation every day.'),
          _checkedText('10+ guided meditations to accompany you '
              'through you practice.'),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 25, bottom: 5),
              child: Text.rich(
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
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15),
            child: TextButton(
              onPressed: onPressed,
              child: Text('Subscribe Now', style: TextStyle(fontSize: 18)),
              style: TextButton.styleFrom(
                primary: Colors.white,
                minimumSize: Size.fromHeight(55),
                backgroundColor: AppTheme.primaryColor,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
              ),
            ),
          ),
          Center(child: Text('Try 3 months for Free')),
          Spacer(),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {},
                  child: Text(
                    'Terms & Conditions',
                    style:
                        TextStyle(fontSize: 16, color: AppTheme.primaryColor),
                  ),
                ),
                SizedBox(width: 20),
                GestureDetector(
                  onTap: () {},
                  child: Text(
                    'Privacy Policy',
                    style:
                        TextStyle(fontSize: 16, color: AppTheme.primaryColor),
                  ),
                ),
              ],
              mainAxisAlignment: MainAxisAlignment.center,
            ),
          )
        ],
        crossAxisAlignment: CrossAxisAlignment.start,
      ),
    );
  }

  _checkedText(String text) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Icon(
              CupertinoIcons.check_mark_circled_solid,
              color: Colors.green.shade700,
              size: 20,
            ),
          ),
          Expanded(child: Text(text, style: TextStyle(fontSize: 15)))
        ],
        crossAxisAlignment: CrossAxisAlignment.start,
      ),
    );
  }
}
