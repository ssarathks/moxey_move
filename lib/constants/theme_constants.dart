import 'package:flutter/material.dart';

class ThemeConstants {
  static const Color lightThemeScaffoldColor =
      Color.fromARGB(255, 244, 246, 245);
  static const Color darkThemeScaffoldColor = Color.fromARGB(255, 0, 0, 0);
  static const Color selectedBottomNavItemColor =
      Color.fromARGB(255, 38, 237, 138);
  static const Color mutedTextColor = Color.fromARGB(102, 255, 255, 255);
  static const primaryGreen = Color.fromARGB(255, 34, 180, 112);
  static const greyTextColor = Color.fromARGB(255, 119, 119, 119);
  static const bool bottomNavBarShowSelectedLabels = true;
  static const double scaffoldHorizontalPadding = 15;

  static ElevatedButtonThemeData elevatedButtonThemeData =
      ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      foregroundColor: Colors.white,
      backgroundColor: primaryGreen,
      textStyle: const TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 18,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
    ),
  );

  static TextButtonThemeData textButtonThemeData = TextButtonThemeData(
    style: TextButton.styleFrom(
      foregroundColor: primaryGreen,
    ),
  );
  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    scaffoldBackgroundColor: lightThemeScaffoldColor,
    appBarTheme: const AppBarTheme(
      color: lightThemeScaffoldColor,
      elevation: 0,
      actionsIconTheme: IconThemeData(
        color: Color.fromARGB(255, 141, 143, 144),
      ),
    ),
    cardTheme: const CardTheme(
      color: Color.fromARGB(255, 255, 255, 255),
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      showUnselectedLabels: bottomNavBarShowSelectedLabels,
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      type: BottomNavigationBarType.fixed,
      unselectedItemColor: greyTextColor,
      selectedItemColor: selectedBottomNavItemColor,
    ),
    textButtonTheme: textButtonThemeData,
    elevatedButtonTheme: elevatedButtonThemeData,
  );

  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    scaffoldBackgroundColor: darkThemeScaffoldColor,
    appBarTheme: const AppBarTheme(
      color: darkThemeScaffoldColor,
      elevation: 0,
      actionsIconTheme: IconThemeData(
        color: Color.fromARGB(255, 141, 143, 144),
      ),
    ),
    cardTheme: const CardTheme(
      color: Color.fromARGB(255, 19, 19, 19),
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      showUnselectedLabels: bottomNavBarShowSelectedLabels,
      backgroundColor: Color.fromARGB(255, 20, 22, 46),
      type: BottomNavigationBarType.fixed,
      unselectedItemColor: Color.fromARGB(255, 255, 255, 255),
      selectedItemColor: selectedBottomNavItemColor,
    ),
    textButtonTheme: textButtonThemeData,
    elevatedButtonTheme: elevatedButtonThemeData,
  );
}
