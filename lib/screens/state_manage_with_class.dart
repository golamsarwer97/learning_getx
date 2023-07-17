import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../models/student.dart';

class ClassManage extends StatelessWidget {
  final student = Student(
    name: 'Golam Sarwer',
    age: '28',
  ).obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'State Management by Using Obx & Custom Class',
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
            Obx(
              () => Text('Name is ${student.value.name}'),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                student.update(
                  (student) {
                    student!.name = student.name.toString().toUpperCase();
                  },
                );

                // student.value.name = student.value.name?.toUpperCase();
              },
              child: const Text('Upper case'),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                student.update(
                  (student) {
                    student!.name = student.name.toString().toLowerCase();
                  },
                );
              },
              child: const Text('Lower case'),
            ),
          ],
        ),
      ),
    );
  }
}
