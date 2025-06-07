import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DisplayScreen extends StatelessWidget {
  const DisplayScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final String Number = Get.arguments;

    return Scaffold(
      body: Center(
        child: Text(
          "$Number",
          style: const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
