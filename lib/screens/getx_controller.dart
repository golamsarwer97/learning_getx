// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, must_be_immutable, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/controller.dart';

class GetControllerState extends StatelessWidget {
  Controller controller = Get.put(Controller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'State Management with GetxController',
          style: TextStyle(
            fontSize: 14,
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GetX<Controller>(
              builder: (controller) {
                return Text('The value is ${controller.count}');
              },
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: controller.increment,
              child: const Text('Increment Button'),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: controller.decrement,
              child: const Text('Decrement Button'),
            ),
          ],
        ),
      ),
    );
  }
}
