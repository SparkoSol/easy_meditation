import 'package:easy_meditation/src/base/data.dart';
import 'package:easy_meditation/src/base/theme.dart';
import 'package:easy_meditation/src/models/module.dart';
import 'package:easy_meditation/src/service/rest/modules_rest.dart';
import 'package:easy_meditation/src/ui/modals/payment_bottom_sheet.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ModuleCard extends StatelessWidget {
  final int index;
  final VoidCallback onPressed;

  ModuleCard({
    this.index,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    Color color;
    dynamic child;
    var isAllowed =
        AppData().transaction.nextAt.difference(DateTime.now()).inSeconds > 0;

    if (index == 0) {
      color = Color(0xFF353961);
    } else if (index == 1) {
      color = Color(0xFFFFC97E);
    }

    final onTap = () {
      if (!isAllowed) {
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
      } else {
        onPressed();
      }
    };

    if (index == 2) {
      color = Color(0xFF595867);
      child = (data) => Container(
            clipBehavior: Clip.hardEdge,
            margin: const EdgeInsets.only(top: 20),
            padding: const EdgeInsets.all(10),
            constraints: BoxConstraints.expand(height: 190),
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Positioned(
                  left: -65,
                  bottom: -50,
                  child: Image.asset(
                    'assets/images/curves.png',
                    width: MediaQuery.of(context).size.width + 80,
                    // fit: BoxFit.fill,
                  ),
                ),
                Row(children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
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
                        '${data.length == 0 ? 'No' : data.length} Modules',
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
                        onPressed: onTap,
                        child: Text('START'),
                      )
                    ],
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: TextButton(
                      onPressed: onTap,
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.white,
                        minimumSize: Size(30, 30),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      child: isAllowed
                          ? Padding(
                              padding: const EdgeInsets.only(left: 3),
                              child: Icon(
                                CupertinoIcons.play_arrow_solid,
                                color: color,
                                size: 20,
                              ),
                            )
                          : Icon(
                              CupertinoIcons.lock_fill,
                              color: color,
                              size: 20,
                            ),
                    ),
                  ),
                ]),
              ],
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Color(0xFF595867),
            ),
          );
    } else {
      child = (data) => Container(
            height: 190,
            padding: const EdgeInsets.all(10),
            clipBehavior: Clip.hardEdge,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: color,
            ),
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Positioned(
                  left: -38,
                  bottom: -20,
                  child: Image.asset(
                    'assets/images/curves.png',
                    width: (MediaQuery.of(context).size.width + 80) / 2,
                    // fit: BoxFit.fill,
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.centerRight,
                      child: SizedBox(
                        width: 40,
                        height: 40,
                        child: TextButton(
                          onPressed: onTap,
                          style: TextButton.styleFrom(
                            backgroundColor: Colors.white,
                            minimumSize: Size(30, 30),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                          child: isAllowed
                              ? Padding(
                                  padding: const EdgeInsets.only(left: 3),
                                  child: Icon(
                                    CupertinoIcons.play_arrow_solid,
                                    color: color,
                                    size: 20,
                                  ),
                                )
                              : Icon(
                                  CupertinoIcons.lock_fill,
                                  color: color,
                                  size: 20,
                                ),
                        ),
                      ),
                    ),
                    Text(
                      Module.courses[index],
                      style: TextStyle(
                        fontSize: 17,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      '${data.length == 0 ? 'No' : data.length} Modules',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 13,
                      ),
                    ),
                    Spacer(),
                    Row(children: [
                      if (data.isNotEmpty)
                        Text(
                          '3-10 MIN',
                          style: TextStyle(color: Colors.white),
                        ),
                      Spacer(),
                      TextButton(
                        style: TextButton.styleFrom(
                            primary: Colors.white,
                            backgroundColor: Color(0xFF3F414E)),
                        onPressed: onTap,
                        child: Text('START'),
                      )
                    ])
                  ],
                ),
              ],
            ),
          );
    }

    return FutureBuilder(
      future: ModulesRestAPI().getModules(index),
      builder: (context, snapshot) {
        List<Module> data;
        final modules = AppData.modules(index);

        switch (snapshot.connectionState) {
          case ConnectionState.none:
            return Center(child: Text('none'));
          case ConnectionState.waiting:
          case ConnectionState.active:
            if (modules.isNotEmpty) {
              data = modules ?? [];
            } else {
              return Container(
                height: 190,
                margin: EdgeInsets.only(top: index == 2 ? 20 : 0),
                decoration: BoxDecoration(
                    color: color.withOpacity(.2),
                    borderRadius: BorderRadius.circular(8)),
                child: Center(
                  child: CircularProgressIndicator(),
                ),
              );
              // return Stack(children: [
              //   Opacity(
              //     opacity: 0.5,
              //     child: child,
              //   )
              // ]);
            }
            break;
          case ConnectionState.done:
            data = snapshot.data;
            AppData().setModules(index, snapshot.data);
            break;
        }

        if (snapshot.hasError) {
          return Center(child: Text(snapshot.error.toString()));
        }

        return GestureDetector(
          onTap: onTap,
          child: child(data),
        );
      },
    );
  }
}
