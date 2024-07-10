import 'package:flutter/material.dart';

class TrendingCategoryItem {
  final String code;
  final String title;
  final String imagePath;
  final Color categoryBgColor;

  const TrendingCategoryItem({
    required this.code,
    required this.title,
    required this.imagePath,
    required this.categoryBgColor,
  });
}
