import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/controller.dart';

class LanguageTranslation extends StatefulWidget {
  const LanguageTranslation({super.key});

  @override
  State<LanguageTranslation> createState() => _LanguageTranslationState();
}

class _LanguageTranslationState extends State<LanguageTranslation> {
  Controller controller = Get.put(Controller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Internationalization')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('hello'.tr),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                controller.changeLanguage('bengali', 'Bangladesh');
              },
              child: const Text('Bengali'),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                controller.changeLanguage('en', 'America');
              },
              child: const Text('English'),
            ),
          ],
        ),
      ),
    );
  }
}
