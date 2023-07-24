import 'dart:ui';

import 'package:get/get.dart';

class Controller extends GetxController {
  var count = 0.obs;

  void increment() {
    count++;
  }

  void decrement() {
    count--;
  }

  /* Internationalization */
  void changeLanguage(var language, var country) {
    var local = Locale(language, country);
    Get.updateLocale(local);
  }
}
