import 'package:flutter/material.dart';
import 'package:get/get.dart';

import './route_page2.dart';

class RoutePageOne extends StatelessWidget {
  const RoutePageOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GetX Routing One'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Get.to(const RoutePageSecond());
          },
          child: const Text('Go to next Page'),
        ),
      ),
    );
  }
}
