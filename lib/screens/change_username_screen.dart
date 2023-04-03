import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChangeUsernameScreen extends StatefulWidget {
  const ChangeUsernameScreen({super.key});

  @override
  State<ChangeUsernameScreen> createState() => _ChangeUsernameScreenState();
}

class _ChangeUsernameScreenState extends State<ChangeUsernameScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              onChanged: (value) {
                // TODO:- Change username here if value is not != "",
              },
            ),
            SizedBox(height: 20),
            ElevatedButton(
                onPressed: () {
                  Get.back();
                },
                child: Text("Change Username")),
          ],
        ),
      ),
    );
  }
}
