import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text("diary".tr, style: TextStyle(color: Colors.white)),
          actions: [
            IconButton(
                onPressed: () {
                  Get.bottomSheet(BottomSheet(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30),
                              topRight: Radius.circular(30))),
                      enableDrag: false,
                      builder: (context) {
                        return Padding(
                          padding: const EdgeInsets.all(18.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              TextField(
                                onChanged: (value) {},
                              ),
                              SizedBox(height: 8),
                              ElevatedButton(
                                  onPressed: () {
                                    Get.back();
                                  },
                                  child: Text("add".tr)),
                            ],
                          ),
                        );
                      },
                      onClosing: () {}));
                },
                icon: Icon(
                  Icons.add,
                  color: Colors.white,
                  size: 30,
                )),
          ],
          bottom: TabBar(tabs: [
            Tab(icon: Icon(Icons.event_note)),
            Tab(icon: Icon(Icons.settings)),
          ]),
        ),
        body: TabBarView(children: [
          DiaryScreen(),
          SettingsScreen(),
        ]),
      ),
    );
  }
}
