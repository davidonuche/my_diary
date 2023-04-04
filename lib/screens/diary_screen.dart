import 'package:flutter/material.dart';

class DiaryScreen extends StatelessWidget {
  const DiaryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView.separated(
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Date here"),
                    SizedBox(height: 5),
                    Text("Content here"),
                  ]),
            );
          },
          separatorBuilder: (context, index) => Divider(
                height: 5,
              ),
          itemCount: 4),
    );
  }
}
