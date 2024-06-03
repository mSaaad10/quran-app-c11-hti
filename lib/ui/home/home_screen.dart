import 'package:flutter/material.dart';
import 'package:quran_app/ui/home/ahadeth_tab/ahadeth_tab_widget.dart';
import 'package:quran_app/ui/home/quran_tab/quran_tab_widget.dart';
import 'package:quran_app/ui/home/radio_tab/radio_tab_widget.dart';
import 'package:quran_app/ui/home/settings_tab/settings_tab_widget.dart';
import 'package:quran_app/ui/home/tasbeh_tab/tasbeh_tab_widget.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = 'Home-Screen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;

  List<Widget> tabs = [
    QuranTabWidget(),
    AhadethTabWidget(),
    TasbehTabWidget(),
    RadioTabWidget(),
    SettingsTabWidget(),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(ThemeMode == ThemeMode.light
                  ? 'assets/images/main_background.png'
                  : 'assets/images/main_bg_dark.png'))),
      child: Scaffold(
        appBar: AppBar(
          title: Text('Islami'),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedIndex,
          onTap: (index) {
            selectedIndex = index;
            setState(() {});
          },
          backgroundColor: Color(0xFFB7935F),
          items: [
            BottomNavigationBarItem(
                backgroundColor: Theme.of(context).primaryColor,
                icon: ImageIcon(AssetImage('assets/images/quran_ic.png')),
                label: 'Quran'),
            BottomNavigationBarItem(
                backgroundColor: Theme.of(context).primaryColor,
                icon: ImageIcon(AssetImage('assets/images/ahadeth_ic.png')),
                label: 'Ahadeth'),
            BottomNavigationBarItem(
                backgroundColor: Theme.of(context).primaryColor,
                icon: ImageIcon(AssetImage('assets/images/tasbeh_ic.png')),
                label: 'Tasbeh'),
            BottomNavigationBarItem(
                backgroundColor: Theme.of(context).primaryColor,
                icon: ImageIcon(AssetImage('assets/images/radio_ic.png')),
                label: 'Radio'),
            BottomNavigationBarItem(
                backgroundColor: Theme.of(context).primaryColor,
                icon: Icon(Icons.settings),
                label: 'Settings'),
          ],
        ),
        body: tabs[selectedIndex],
      ),
    );
  }
}
