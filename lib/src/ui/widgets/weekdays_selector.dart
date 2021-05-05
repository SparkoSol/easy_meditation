import 'package:easy_meditation/src/base/locale.dart';
import 'package:easy_meditation/src/base/theme.dart';
import 'package:flutter/material.dart';

class WeekdaysSelector extends StatefulWidget {
  final List<bool> selection;
  final AppLocalizations lang;
  final ValueChanged<List<bool>> onChanged;

  WeekdaysSelector(this.selection, this.lang, this.onChanged);

  @override
  _WeekdaysSelectorState createState() => _WeekdaysSelectorState();
}

class _WeekdaysSelectorState extends State<WeekdaysSelector> {
  List<String> weekdays;
  List<bool> selection;

  @override
  void initState() {
    super.initState();

    weekdays = [
      widget.lang.monday,
      widget.lang.tuesday,
      widget.lang.wednesday,
      widget.lang.thursday,
      widget.lang.friday,
      widget.lang.saturday,
      widget.lang.sunday,
    ];
    selection = widget.selection;
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      int crossAxisCount;
      if (constraints.maxWidth > (40 * 7) + 40) {
        crossAxisCount = 7;
      } else {
        /// TODO: Fix it.
        crossAxisCount = 5;
      }

      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          for (var i = 0; i < weekdays.length; ++i)
            Center(
              child: _WeekdayButton(
                name: weekdays[i],
                isSelected: selection[i],
                onPressed: () {
                  setState(() => selection[i] = !selection[i]);
                  widget.onChanged(
                    List.from(widget.selection, growable: false),
                  );
                },
              ),
            )
        ],
      );
    });
  }
}

class _WeekdayButton extends OutlinedButton {
  _WeekdayButton({String name, Function onPressed, bool isSelected})
      : super(
          child: Text(name),
          onPressed: onPressed,
          style: TextButton.styleFrom(
            padding: EdgeInsets.zero,
            minimumSize: Size(40, 40),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25),
            ),
            primary: isSelected ? Colors.white : Colors.grey,
            backgroundColor:
                isSelected ? AppTheme.primaryColor : Colors.transparent,
            side: BorderSide(
              color: isSelected ? AppTheme.primaryColor : Colors.grey,
            ),
          ),
        );
}
