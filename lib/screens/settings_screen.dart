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
        Text('User Name', style: Get.textTheme.headlineLarge),
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(onPressed: () {}, child: Text("RU")),
            ElevatedButton(onPressed: () {}, child: Text("ESP")),
            ElevatedButton(onPressed: () {}, child: Text("ENG")),
          ],
        ),
        SizedBox(height: 10),
        ElevatedButton(
            onPressed: () {
              Get.to(() => ChangeUsernameScreen());
            },
            child: Text("Change User Name")),
      ],
    ));
  }
}
