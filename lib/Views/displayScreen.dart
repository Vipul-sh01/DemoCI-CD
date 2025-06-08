import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DisplayScreen extends StatelessWidget {
  const DisplayScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final String Number = Get.arguments; // Retrieve the number passed from the previous screen
    //Get.arguments is used to get the arguments passed to the route, in this case, the number input from the previous screen.

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
