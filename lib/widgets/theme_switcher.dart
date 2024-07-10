import 'package:flutter/material.dart';
import 'package:moxey_move/constants/theme_constants.dart';
import 'package:moxey_move/providers/ui_provider.dart';
import 'package:provider/provider.dart';

class ThemeSwitcher extends StatelessWidget {
  const ThemeSwitcher({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<UiProvider>(builder: (context, uiModal, _) {
      bool isDarkTheme = uiModal.currentThemeData == ThemeConstants.darkTheme;
      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: SwitchListTile.adaptive(
          value: isDarkTheme,
          onChanged: (value) => toggleSwitchHandler(context),
          title: Text(
            'Switch to Dark theme',
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: ThemeConstants.mutedTextColor,
                ),
          ),
        ),
      );
    });
  }

  void toggleSwitchHandler(BuildContext context) {
    Provider.of<UiProvider>(context, listen: false).toggleTheme();
  }
}
