import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_diary/controllers/diary_controller.dart';

class DiaryScreen extends StatelessWidget {
  DiaryScreen({super.key});

  final DiaryController _diaryController = Get.find(tag: "diary_controller");
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Obx(
        () => _diaryController.diaryEntries.isEmpty
            ? Text("What's Up...")
            : ListView.separated(
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(_diaryController.diaryEntries[index].dateString,
                              style: Get.textTheme.headlineSmall),
                          SizedBox(height: 5),
                          Text(_diaryController.diaryEntries[index].content,
                              style: Get.textTheme.headlineSmall),
                        ]),
                  );
                },
                separatorBuilder: (context, index) => Divider(
                      height: 5,
                    ),
                itemCount: _diaryController.diaryEntries.length),
      ),
    );
  }
}
