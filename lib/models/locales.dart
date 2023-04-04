import 'package:get/route_manager.dart';

class Locales extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        "en_US": {
          "Change_Username": "Change Username",
          "diary" : "My Diary",
          "Add" : "Add",
        },
        "ru_RU": {
          "Change_Username": "Изменить имя пользователя",
          "diary" : "Мой дневник",
          "Add" : "Добавить",
        },
        "esp_ESP": {
          "Change_Username": "Cambie el nombre de usuario",
          "diary" : "Mi Diario",
          "Add" : "Añadir",
        },
      };
}
