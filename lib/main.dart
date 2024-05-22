import 'package:flutter/material.dart';
import 'package:quran_app/ui/home/ahadeth_tab/hadeth_details/hadeth_details_screen.dart';
import 'package:quran_app/ui/home/chapter_details_screen/chapter_details_screen.dart';
import 'package:quran_app/ui/home/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primaryColor: Color(0xFFB7935F),
          colorScheme: ColorScheme.fromSeed(
              seedColor: Color(0xFFB7935F),
              primary: Color(0xFFB7935F),
              onPrimary: Color(0xFFffffff),
              secondary: Color(0x79B7935F),
              onSecondary: Colors.black),
          appBarTheme: AppBarTheme(
              iconTheme: IconThemeData(color: Colors.black),
              color: Colors.transparent,
              elevation: 0,
              centerTitle: true,
              titleTextStyle: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: Colors.black)),
          scaffoldBackgroundColor: Colors.transparent,
          bottomNavigationBarTheme: BottomNavigationBarThemeData(
            backgroundColor: Color(0xFFB7935F),
            selectedItemColor: Colors.black,
            selectedIconTheme: IconThemeData(
              color: Colors.black,
              size: 42,
            ),
            unselectedItemColor: Colors.white,
          )),
      darkTheme: ThemeData(
          primaryColor: Color(0xFF141A2E),
          colorScheme: ColorScheme.fromSeed(
              seedColor: Color(0xFFB7935F),
              primary: Color(0xFF141A2E),
              onPrimary: Color(0xFFffffff),
              secondary: Color(0xFFFACC1D),
              onSecondary: Colors.black),
          appBarTheme: AppBarTheme(
              iconTheme: IconThemeData(color: Colors.white),
              color: Colors.transparent,
              elevation: 0,
              centerTitle: true,
              titleTextStyle: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: Colors.black)),
          scaffoldBackgroundColor: Colors.transparent,
          bottomNavigationBarTheme: BottomNavigationBarThemeData(
            backgroundColor: Color(0xFFB7935F),
            selectedItemColor: Colors.black,
            selectedIconTheme: IconThemeData(
              color: Colors.black,
              size: 42,
            ),
            unselectedItemColor: Colors.white,
          )),
      routes: {
        ChapterDetailsScreen.routeName: (context) => ChapterDetailsScreen(),
        HomeScreen.routeName: (_) => HomeScreen(),
        HadethDetailsScreen.routeName: (context) => HadethDetailsScreen(),
      },
      initialRoute: HomeScreen.routeName,
    );
  }
}
