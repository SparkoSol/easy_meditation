import 'package:easy_meditation/src/base/theme.dart';
import 'package:flutter/material.dart';

class LanguageSelection extends StatefulWidget {
  @override
  _LanguageSelectionState createState() => _LanguageSelectionState();
}

class _LanguageSelectionState extends State<LanguageSelection> {
  var lang = 'en';

  @override
  Widget build(BuildContext context) {
    return Dialog(
      insetPadding: const EdgeInsets.all(20),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(15, 20, 15, 10),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Language', style: AppTheme.sectionHeaderStyle),
            SizedBox(height: 25),
            LanguageTile(
              name: 'English - USA',
              selected: lang == 'en',
              onPressed: () => setState(() => lang = 'en'),
            ),
            Divider(),
            LanguageTile(
              name: 'Hindi - India',
              selected: lang == 'in',
              onPressed: () => setState(() => lang = 'in'),
            ),
            Divider(),
            LanguageTile(
              name: 'French - France',
              selected: lang == 'fr',
              onPressed: () => setState(() => lang = 'fr'),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Row(children: [
                GestureDetector(
                  child: Text('Cancel'),
                  onTap: Navigator.of(context).pop,
                ),
                Spacer(),
                TextButton(
                  onPressed: Navigator.of(context).pop,
                  child: Text('Save'),
                  style: TextButton.styleFrom(
                    primary: Colors.white,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 30,
                      vertical: 13,
                    ),
                    backgroundColor: AppTheme.darkBlueColor,
                  ),
                ),
              ]),
            )
          ],
        ),
      ),
    );
  }
}

class LanguageTile extends StatelessWidget {
  final String name;
  final bool selected;
  final VoidCallback onPressed;

  LanguageTile({this.name, this.selected, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Row(children: [
        Placeholder(fallbackHeight: 25, fallbackWidth: 45),
        SizedBox(width: 10),
        Expanded(child: Text(name)),
        if (selected) Icon(Icons.check_circle, size: 20, color: Colors.green.shade800,)
      ]),
    );
  }
}
