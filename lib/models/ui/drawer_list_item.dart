import 'package:flutter/material.dart';

class DrawerListItem {
  final String title;
  final IconData iconData;
  final bool hasInternalNavigation;

  const DrawerListItem({
    required this.title,
    required this.iconData,
    required this.hasInternalNavigation,
  });
}
