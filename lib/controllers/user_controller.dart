import 'package:get/get.dart';

class UserController extends GetxController {
  String get username => _username.value;
  RxString _username = "Unknown user".obs;
  void changeUsername(String value) {
    _username.value = value;
  }
}