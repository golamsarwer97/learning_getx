import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RoutePageSecond extends StatelessWidget {
  const RoutePageSecond({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GetX Routing Two'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Get.back();
          },
          child: const Text('Back to the Previous Page'),
        ),
      ),
    );
  }
}
