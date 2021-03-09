import 'package:easy_meditation/src/ui/views/colored_background.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AboutUsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CupertinoNavigationBar(
        middle: Text('About'),
      ),
      body: ColoredBackground(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'About Application',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 15),
              Text(
                'This series of techniques has been put together with busy, '
                'lazy people in mind, who may even be haunted by the wish to do '
                'the practice. It may also be useful to those who are new to '
                'Buddhist practice.',
                style: TextStyle(height: 1.4),
                textAlign: TextAlign.justify,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: Text(
                  'At first glance, some of these techniques may look '
                  'like over-simplifications, while others don’t even '
                  'look spiritual, let alone Buddhist. Yet, they are '
                  'based on some of the most important, fundamental '
                  'Buddhist principles – the Buddhist view, practice '
                  'and action. If you can apply a little discipline and '
                  'complete at least part of the course, you will be '
                  'able to put some of these principles into practice. '
                  'This is why you are strongly encouraged to try '
                  'them out, however ridiculous or illogical they may '
                  'feel.'
                  'This series of techniques has been put together with busy, '
                  'lazy people in mind, who may even be haunted by the wish to do '
                  'the practice. It may also be useful to those who are new to '
                  'Buddhist practice.',
                  style: TextStyle(height: 1.4),
                  textAlign: TextAlign.justify,
                ),
              ),
              Text(
                'If you believe your life is perfect. If you have '
                'nothing to be anxious about – perhaps the odd '
                'trauma now and then, but nothing that cannot '
                'easily be dealt with.',
                style: TextStyle(height: 1.4),
                textAlign: TextAlign.justify,
              ),
              SizedBox(height: 50),
              Text(
                'Version 1.0',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
      ),
    );
  }
}
