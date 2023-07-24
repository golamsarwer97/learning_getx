// ignore_for_file: use_key_in_widget_constructors, must_be_immutable

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class StateManage extends StatelessWidget {
  // const StateManage({super.key});

  var count = 0.obs; // observable variable

  void increment() {
    count++;
  }

  // void decrement() {
  //   count-- == 0.obs;
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('State Manage Reactive'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Obx(
              () => Text('Count Value $count'),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: increment,
              child: const Text('Increment Button'),
            ),
            // const SizedBox(height: 10),
            // ElevatedButton(
            //   onPressed: decrement,
            //   child: const Text('Decrement Button'),
            // ),
          ],
        ),
      ),
    );
  }
}
