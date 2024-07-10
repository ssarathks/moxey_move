import 'package:flutter/material.dart';
import 'package:moxey_move/constants/dummy_data.dart';
import 'package:moxey_move/constants/theme_constants.dart';
import 'package:moxey_move/models/ui/bottom_navigation_item.dart';
import 'package:moxey_move/models/ui/drawer_list_item.dart';

class UiProvider extends ChangeNotifier {
  final List<BottomNavigationItem> _bottomNavItems = bottomNavidationItems;

  List<BottomNavigationItem> get bottomNavItems => [..._bottomNavItems];

  final List<DrawerListItem> _topDrawerListItems = topDrawerListItemDummy;

  List<DrawerListItem> get topDrawerListItems => [..._topDrawerListItems];

  final List<DrawerListItem> _bottomDrawerListItems = bottomDrawerListItemDummy;

  List<DrawerListItem> get bottomDrawerListItems => [..._bottomDrawerListItems];

  ThemeData currentThemeData = ThemeConstants.lightTheme;

  void toggleTheme() {
    if (currentThemeData == ThemeConstants.darkTheme) {
      currentThemeData = ThemeConstants.lightTheme;
    } else {
      currentThemeData = ThemeConstants.darkTheme;
    }
    notifyListeners();
  }
}
