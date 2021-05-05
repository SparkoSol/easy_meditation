import 'package:easy_meditation/src/base/assets.dart';
import 'package:easy_meditation/src/base/config.dart';
import 'package:easy_meditation/src/base/locale.dart';
import 'package:easy_meditation/src/base/theme.dart';
import 'package:flutter/material.dart';

class LanguageSelection extends StatefulWidget {
  @override
  _LanguageSelectionState createState() => _LanguageSelectionState();
}

class _LanguageSelectionState extends State<LanguageSelection> {
  final config = AppConfig();

  @override
  Widget build(BuildContext context) {
    final lang = AppLocalizations.of(context);

    return Dialog(
      insetPadding: const EdgeInsets.all(20),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(15, 20, 15, 10),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(lang.language, style: AppTheme.sectionHeaderStyle),
            SizedBox(height: 25),
            LanguageTile(
              name: 'English - USA',
              image: Assets.englishImage,
              selected: config.locale.languageCode == 'en',
              onPressed: () => config.locale = const Locale('en'),
            ),
            Divider(),
            LanguageTile(
              name: 'Chinese - China',
              image: 'assets/icons/flag-400.png',
              selected: config.locale.languageCode == 'zh',
              onPressed: () => config.locale = const Locale('zh'),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Row(children: [
                GestureDetector(
                  child: Text('Cancel'),
                  onTap: Navigator.of(context).pop,
                ),
                Spacer(),
                // TextButton(
                //   onPressed: Navigator.of(context).pop,
                //   child: Text('Save'),
                //   style: TextButton.styleFrom(
                //     primary: Colors.white,
                //     padding: const EdgeInsets.symmetric(
                //       horizontal: 30,
                //       vertical: 13,
                //     ),
                //     backgroundColor: AppTheme.darkBlueColor,
                //   ),
                // ),
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
  final String image;
  final bool selected;
  final VoidCallback onPressed;

  LanguageTile({
    this.name,
    this.image,
    this.selected,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Row(children: [
        Image.asset(image, height: 25, width: 45, fit: BoxFit.cover),
        // Placeholder(fallbackHeight: 25, fallbackWidth: 45),
        SizedBox(width: 10),
        Expanded(child: Text(name)),
        if (selected)
          Icon(
            Icons.check_circle,
            size: 20,
            color: Colors.green.shade800,
          )
      ]),
    );
  }
}
