import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:moxey_move/constants/theme_constants.dart';
import 'package:moxey_move/providers/ui_provider.dart';
import 'package:moxey_move/widgets/main_drawer_list_tile.dart';
import 'package:moxey_move/widgets/theme_switcher.dart';
import 'package:moxey_move/widgets/usertype_switcher.dart';
import 'package:provider/provider.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.transparent,
      child: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromARGB(0, 20, 22, 46),
              ThemeConstants.primaryGreen,
            ],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(
            ThemeConstants.scaffoldHorizontalPadding,
          ),
          child: Stack(
            children: [
              BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 20.0, sigmaY: 20.0),
                child: Container(
                  color: Colors
                      .transparent, // Optional: Add a semi-transparent background color
                ),
              ),
              Consumer<UiProvider>(builder: (context, uiModal, _) {
                return Column(
                  children: [
                    const ThemeSwitcher(),
                    Row(
                      children: [
                        SizedBox(
                          width: 50,
                          height: 50,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              'assets/images/profile.jpeg',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text.rich(
                              TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'Hello ',
                                    style: TextStyle(
                                      color: ThemeConstants.mutedTextColor,
                                    ),
                                  ),
                                  TextSpan(
                                    text: '👋',
                                  ),
                                ],
                              ),
                            ),
                            Text(
                              "Zubair Khan",
                              style: Theme.of(context)
                                  .textTheme
                                  .headlineSmall
                                  ?.copyWith(
                                    color: const Color.fromARGB(
                                        255, 255, 255, 255),
                                  ),
                            )
                          ],
                        )
                      ],
                    ),
                    const Divider(
                      height: 30,
                    ),
                    const UsertypeSwitcher(),
                    Expanded(
                        child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Column(
                            children: uiModal.topDrawerListItems
                                .map((item) => MainDrawerListTile(item: item))
                                .toList(),
                          ),
                          Column(
                            children: uiModal.bottomDrawerListItems
                                .map((item) => MainDrawerListTile(item: item))
                                .toList(),
                          )
                        ],
                      ),
                    )),
                  ],
                );
              })
            ],
          ),
        ),
      ),
    );
  }
}
