import 'package:flutter/material.dart';

class MyThemeData {
  static Color lightPrimaryColor = Color(0xFFB7935F);
  static Color yellowColor = Color(0xFFFACC1D);
  static Color darkPrimaryColor = Color(0xFF141A2E);
  static ThemeData lightTheme = ThemeData(
      primaryColor: lightPrimaryColor,
      cardTheme: CardTheme(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(22),
        ),
        elevation: 18,
      ),
      colorScheme: ColorScheme.fromSeed(
          seedColor: lightPrimaryColor,
          primary: lightPrimaryColor,
          onPrimary: Color(0xFFffffff),
          secondary: Color(0x79B7935F),
          onSecondary: Colors.black),
      appBarTheme: AppBarTheme(
          iconTheme: IconThemeData(color: Colors.black),
          color: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          titleTextStyle: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 30, color: Colors.black)),
      scaffoldBackgroundColor: Colors.transparent,
      dividerColor: lightPrimaryColor,
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: lightPrimaryColor,
        selectedItemColor: Colors.black,
        selectedIconTheme: IconThemeData(
          color: Colors.black,
          size: 42,
        ),
        unselectedItemColor: Colors.white,
      ),
      textTheme: TextTheme(
          titleMedium: TextStyle(
            color: Colors.black,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
          bodyMedium: TextStyle(
              color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold),
          displaySmall: TextStyle(fontSize: 20, color: Colors.black),
          labelMedium: TextStyle(
            color: lightPrimaryColor,
            fontSize: 26,
            fontWeight: FontWeight.bold,
          )));
  static ThemeData darkTheme = ThemeData(
      primaryColor: darkPrimaryColor,
      dividerColor: yellowColor,
      cardTheme: CardTheme(
        color: darkPrimaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(22),
        ),
        elevation: 18,
      ),
      colorScheme: ColorScheme.fromSeed(
          seedColor: darkPrimaryColor,
          primary: darkPrimaryColor,
          onPrimary: Color(0xFFffffff),
          secondary: yellowColor,
          onSecondary: Colors.black),
      appBarTheme: AppBarTheme(
          iconTheme: IconThemeData(color: Colors.white),
          color: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          titleTextStyle: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 30, color: Colors.white)),
      scaffoldBackgroundColor: Colors.transparent,
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: darkPrimaryColor,
        selectedItemColor: yellowColor,
        selectedIconTheme: IconThemeData(
          color: yellowColor,
          size: 42,
        ),
        unselectedItemColor: Colors.white,
      ),
      textTheme: TextTheme(
          titleMedium: TextStyle(
            color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
          bodyMedium: TextStyle(
              color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
          displaySmall: TextStyle(fontSize: 20, color: yellowColor),
          labelMedium: TextStyle(
            color: yellowColor,
            fontSize: 26,
            fontWeight: FontWeight.bold,
          )));
}
