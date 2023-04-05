import 'package:get/get.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';
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
      initializeDateFormatting();
      DateFormat format = DateFormat.yMMMMEEEEd(Get.locale.toString());
      String dateString = format.format(DateTime.now());
      _diaryEntries.add(DiaryEntry(
        dateString: dateString,
        content: _entryText,
      ));
    }
    // Reset the Diary text
    _entryText = "";
  }

  void deleteDiaryEntry(int index) {
    _diaryEntries.removeAt(index);
  }
}
