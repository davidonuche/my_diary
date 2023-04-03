import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_diary/diary_tab_bar_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          appBarTheme: AppBarTheme(backgroundColor: Colors.deepPurple),
          colorScheme: ColorScheme.fromSwatch(
            primarySwatch: Colors.lime,
          )),
      home: DiaryTabBarView(),
    );
  }
}
