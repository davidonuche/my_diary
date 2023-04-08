import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class UserController extends GetxController {
  String get username => _username.value;
  RxString _username = "Unknown user".obs;
  final GetStorage _getStroage = GetStorage();
  @override
  void onInit() {
    _username.value = _getStroage.read("username") ?? "Unknown user";
    super.onInit();
  }

  void changeUsername(String value) {
    _username.value = value;
    _getStroage.write("username", value);
  }
}
