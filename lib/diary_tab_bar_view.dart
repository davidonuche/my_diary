import 'package:flutter/material.dart';

import 'screens/diary_screen.dart';
import 'screens/settings_screen.dart';

class DiaryTabBarView extends StatefulWidget {
  const DiaryTabBarView({super.key});

  @override
  State<DiaryTabBarView> createState() => _DiaryTabBarViewState();
}

class _DiaryTabBarViewState extends State<DiaryTabBarView> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 2,
     child: Scaffold(
      appBar: AppBar(
        bottom: TabBar(tabs: [
          Tab(icon: Icon(Icons.event_note)),
          Tab(icon: Icon(Icons.settings)),
        ]),
      ),
      body: TabBarView(children: [
        DiaryScreen(),
        SettingsScreen(),
      ]),
     ),);
  }
}