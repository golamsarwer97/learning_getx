import 'package:flutter/material.dart';
import 'package:get/get.dart';

import './screens/dialog_box.dart';
import './screens/bottom_sheet.dart';
import './screens/route_page1.dart';
import './screens/state_manage.dart';
import './screens/state_manage_with_class.dart';
import './screens/getx_controller.dart';
import './screens/internationalization.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'GetX',
      debugShowCheckedModeBanner: false,
      // darkTheme: ThemeData.dark(),
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // home: const BottomSheetGetx(),
      // home: const RoutePageOne(),
      // home: GetControllerState(),
      home: const LanguageTranslation(),
    );
  }
}
