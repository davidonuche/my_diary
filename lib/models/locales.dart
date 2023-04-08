import 'package:get/route_manager.dart';

class Locales extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        "en_US": {
          "change_username": "Change Username",
          "diary" : "My Diary",
          "add" : "Add",
        },
        "ru_RU": {
          "change_username": "Изменить имя пользователя",
          "diary" : "Мой дневник",
          "add" : "Добавить",
        },
        "esp_ESP": {
          "change_username": "Cambie el nombre de usuario",
          "diary" : "Mi Diario",
          "add" : "Añadir",
        },
      };
}
