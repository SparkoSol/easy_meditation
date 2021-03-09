import 'package:easy_meditation/src/base/theme.dart';
import 'package:easy_meditation/src/ui/modals/payment_bottom_sheet.dart';
import 'package:easy_meditation/src/ui/views/colored_background.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.primaryColor,
      appBar: CupertinoNavigationBar(middle: Text('Home')),
      body: Column(children: [
        Container(
          padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
          color: AppTheme.primaryColor,
          child: SizedBox(
            height: 70,
            child: Row(
              children: [
                CircleAvatar(
                  radius: 35,
                  backgroundColor: AppTheme.primaryColor1,
                  child: Icon(
                    Icons.account_circle,
                    size: 60,
                    color: AppTheme.darkBlueColor,
                  ),
                ),
                SizedBox(width: 15),
                Padding(
                  padding: const EdgeInsets.only(bottom: 5),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Welcome, Kristin',
                        style: const TextStyle(
                          fontSize: 22,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      // SizedBox(height: 2),
                      Text(
                        'Live happier with us',
                        style: const TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Expanded(
          child: Container(
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
            ),
            child: ColoredBackground(
              child: ListView(
                  padding: const EdgeInsets.fromLTRB(20, 20, 20, 100),
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10, bottom: 15),
                      child: Text(
                        'Choose a Level',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    ),
                    Row(children: [
                      Expanded(
                        child: Container(
                          height: 190,
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xFF353961),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Align(
                                alignment: Alignment.centerRight,
                                child: SizedBox(
                                  width: 40,
                                  height: 40,
                                  child: TextButton(
                                    onPressed: () {},
                                    style: TextButton.styleFrom(
                                        backgroundColor: Colors.white,
                                        minimumSize: Size(30, 30),
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(30))),
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 3),
                                      child: Icon(
                                        CupertinoIcons.play_arrow_solid,
                                        color: Color(0xFF353961),
                                        size: 20,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Text(
                                'Beginner',
                                style: TextStyle(
                                  fontSize: 17,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 5),
                              Text(
                                '5 Modules',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 13,
                                ),
                              ),
                              Spacer(),
                              Row(children: [
                                Text(
                                  '3-10 MIN',
                                  style: TextStyle(color: Colors.white),
                                ),
                                Spacer(),
                                TextButton(
                                  style: TextButton.styleFrom(
                                      primary: Colors.white,
                                      backgroundColor: Color(0xFF3F414E)),
                                  onPressed: () {},
                                  child: Text('START'),
                                )
                              ])
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: 20),
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            showModalBottomSheet(
                              context: context,
                              isScrollControlled: true,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.vertical(
                                  top: Radius.circular(30),
                                ),
                              ),
                              builder: (context) => PaymentBottomSheet(),
                            );
                          },
                          child: Container(
                            height: 190,
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(0xFFFFC97E),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Align(
                                  alignment: Alignment.centerRight,
                                  child: SizedBox(
                                    width: 40,
                                    height: 40,
                                    child: TextButton(
                                      onPressed: () {},
                                      style: TextButton.styleFrom(
                                          backgroundColor: Colors.white,
                                          minimumSize: Size(30, 30),
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(30))),
                                      child: Icon(
                                        CupertinoIcons.lock_fill,
                                        color: Color(0xFF353961),
                                        size: 20,
                                      ),
                                    ),
                                  ),
                                ),
                                Text(
                                  'Intermediate',
                                  style: TextStyle(
                                    fontSize: 17,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: 5),
                                Text(
                                  '2 Modules',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 13,
                                  ),
                                ),
                                Spacer(),
                                Row(children: [
                                  Text(
                                    '3-10 MIN',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  Spacer(),
                                  TextButton(
                                    style: TextButton.styleFrom(
                                      primary: Colors.white,
                                      backgroundColor: Color(0xFF353961),
                                    ),
                                    onPressed: () {},
                                    child: Text('START'),
                                  )
                                ])
                              ],
                            ),
                          ),
                        ),
                      ),
                    ]),
                    GestureDetector(
                      onTap: () {
                        showModalBottomSheet(
                          context: context,
                          isScrollControlled: true,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.vertical(
                              top: Radius.circular(30),
                            ),
                          ),
                          builder: (context) => PaymentBottomSheet(),
                        );
                      },
                      child: Container(
                        margin: const EdgeInsets.only(top: 20),
                        padding: const EdgeInsets.all(10),
                        constraints: BoxConstraints.expand(height: 190),
                        child: Row(children: [
                          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                            SizedBox(height: 20),
                            Text(
                              'Advanced',
                              style: TextStyle(
                                fontSize: 17,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              '2 Modules',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 13,
                              ),
                            ),
                            SizedBox(height: 20),
                            TextButton(
                              style: TextButton.styleFrom(
                                primary: AppTheme.primaryColor,
                                backgroundColor: Colors.white,
                              ),
                              onPressed: () {},
                              child: Text('START'),
                            )
                          ]),
                          Spacer(),
                          Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: TextButton(
                              onPressed: () {},
                              style: TextButton.styleFrom(
                                  backgroundColor: Colors.white,
                                  minimumSize: Size(30, 30),
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                      BorderRadius.circular(30))),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 3),
                                child: Icon(
                                  CupertinoIcons.play_arrow_solid,
                                  color: Color(0xFF353961),
                                  size: 20,
                                ),
                              ),
                            ),
                          ),
                        ]),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xFF595867),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10, bottom: 15),
                      child: Text(
                        'Recommended for you',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    ),
                    Column(children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(4)),
                        child: ListTile(
                          leading: Container(
                            width: 47,
                            height: 47,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(color: AppTheme.primaryColor),
                            ),
                            child: Icon(Icons.play_arrow,
                                color: AppTheme.primaryColor),
                          ),
                          title: Text('Module 1'),
                          subtitle: Text('Advanced Course'),
                          trailing: Text('10 min'),
                        ),
                      ),
                      Container(
                        height: 1,
                        margin: const EdgeInsets.symmetric(horizontal: 10),
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Colors.white,
                              Colors.grey.shade600,
                              Colors.white
                            ],
                          ),
                        ),
                      ),
                    ]),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(4)),
                      child: Column(children: [
                        ListTile(
                          leading: Container(
                            width: 47,
                            height: 47,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(color: AppTheme.primaryColor),
                            ),
                            child: Icon(Icons.play_arrow,
                                color: AppTheme.primaryColor),
                          ),
                          title: Text('Module 1'),
                          subtitle: Text('Advanced Course'),
                          trailing: Text('10 min'),
                        ),
                        Container(
                          height: 1,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                Colors.white,
                                Colors.grey.shade600,
                                Colors.white
                              ],
                            ),
                          ),
                        ),
                      ]),
                    ),
                  ]),
            ),
          ),
        )
      ]),
    );
  }
}
