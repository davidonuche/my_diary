import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/user_controller.dart';
import 'change_username_screen.dart';

class SettingsScreen extends StatelessWidget {
  SettingsScreen({super.key});
  final UserController _userController =
      Get.put(UserController(), tag: "user_controller");

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: [
        SizedBox(height: 10),
        // This is an observer - reactive widget in Getx.
        // automatically rebuilds when observable (username) changes.
        Obx(() => Text(
              _userController.username,
              style: Get.textTheme.headlineLarge,
            )),
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
