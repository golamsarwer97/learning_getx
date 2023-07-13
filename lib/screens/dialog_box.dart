import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DialogBox extends StatelessWidget {
  const DialogBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dialog Box Area'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Get.defaultDialog(
                  title: 'Dialog title',
                  titleStyle: const TextStyle(fontSize: 18),
                  middleText: 'This will be middle area',
                  middleTextStyle: const TextStyle(fontSize: 19),
                  backgroundColor: Colors.cyanAccent,
                  radius: 25,
                  textCancel: 'no',
                  textConfirm: 'yes',
                  onCancel: () {},
                  onConfirm: () {},
                  buttonColor: Colors.pink,
                );
              },
              child: const Text('This is show dialog button'),
            ),
          ],
        ),
      ),
    );
  }
}
