import 'package:easy_meditation/src/base/theme.dart';
import 'package:flutter/material.dart';

class PageIndicator extends StatefulWidget {
  final int pages;
  final PageController controller;

  PageIndicator({this.pages, this.controller});

  @override
  _PageIndicatorState createState() => _PageIndicatorState();
}

class _PageIndicatorState extends State<PageIndicator> {
  var currentPage = 0;

  void _rebuild() {
    currentPage = widget.controller.page.toInt();

    if (currentPage.toDouble() == widget.controller.page)
      setState(() {});
  }

  @override
  void initState() {
    super.initState();
    widget.controller.addListener(_rebuild);
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(widget.pages, (index) {
        final selected = index == currentPage;

        return Container(
          height: 5,
          width: selected ? 20 : 10,
          margin: index == 0 || index == widget.pages - 1
              ? null
              : EdgeInsets.symmetric(horizontal: 5),

          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: selected ? AppTheme.primaryColor : Colors.grey,
          ),
        );
      }),
    );
  }

  @override
  void dispose() {
    super.dispose();
    widget.controller.removeListener(_rebuild);
  }
}
