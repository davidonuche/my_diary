import 'package:get/get.dart';
import '../models/diary_entry_model.dart';

class DiaryController extends GetxController {
  List<DiaryEntry> get diaryEntries => [..._diaryEntries].toList();
  List<DiaryEntry> _diaryEntries = <DiaryEntry>[].obs;
  String _entryText = "";
  void changeEntryText(String text) {
    _entryText = text;
  }

  void addDiaryEntry() {
    if (_entryText != "") {
      String dateString = DateTime.now().toString();
      _diaryEntries.add(DiaryEntry(
        dateString: dateString,
        content: _entryText,
      ));
    }
    // Reset the Diary text
    _entryText = "";
  }
}
