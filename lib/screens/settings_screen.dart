import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'change_username_screen.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: [
        SizedBox(height: 10),
        Text('user_name'.tr, style: Get.textTheme.headlineLarge),
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
                onPressed: () {
                  Get.updateLocale(Locale("ru", "RU"));
                },
                child: Text("RU")),
            ElevatedButton(
                onPressed: () {
                  Get.updateLocale(Locale("esp", "ESP"));
                },
                child: Text("ESP")),
            ElevatedButton(
                onPressed: () {
                  Get.updateLocale(Locale("en", "US"));
                },
                child: Text("ENG")),
          ],
        ),
        SizedBox(height: 10),
        ElevatedButton(
            onPressed: () {
              Get.to(() => ChangeUsernameScreen());
            },
            child: Text("change_username".tr)),
      ],
    ));
  }
}
