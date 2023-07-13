import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomSheetGetx extends StatelessWidget {
  const BottomSheetGetx({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bottom Sheet'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Get.bottomSheet(
                  Container(
                    child: Wrap(
                      children: [
                        ListTile(
                          leading: const Icon(Icons.wb_sunny_rounded),
                          title: const Text('Light Theme'),
                          onTap: () => {
                            Get.changeTheme(
                                // Get.isDarkMode
                                //     ?
                                ThemeData.light()
                                // : ThemeData.dark(),
                                ),
                          }, // did not work
                        ),
                        ListTile(
                          leading: const Icon(Icons.wb_sunny_outlined),
                          title: const Text('Dark Theme'),
                          onTap: () => {
                            Get.changeTheme(
                              // Get.isDarkMode
                              // ? ThemeData.light()
                              // :
                              ThemeData.dark(),
                            )
                          }, // did not work
                        ),
                      ],
                    ),
                  ),
                );
              },
              child: const Text('Bottom sheet Button'),
            ),
          ],
        ),
      ),
    );
  }
}
