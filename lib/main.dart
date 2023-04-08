import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:my_diary/diary_tab_bar_view.dart';
import 'models/locales.dart';

void main() async {
  await GetStorage.init();
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.deepPurple),
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.lime,
        ),
      ),
      home: DiaryTabBarView(),
      translations: Locales(),
      locale: Locale("en", "US"),
    );
  }
}