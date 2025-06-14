import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DisplayScreen extends StatelessWidget {
  const DisplayScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final String number = Get.arguments;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(200), // Increased height
        child: Container(
          decoration: const BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(30),
              bottomRight: Radius.circular(30),
            ),
          ),
          padding: const EdgeInsets.only(top: 60, left: 16, right: 16, bottom: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Back button
              GestureDetector(
                onTap: () => Get.back(),
                child: const Icon(Icons.arrow_back, color: Colors.white, size: 28),
              ),

              // Title
              const Text(
                'NotesNest',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 26, // Bigger text
                  fontWeight: FontWeight.bold,
                ),
              ),

              // Settings icon
              const Icon(Icons.settings, color: Colors.white, size: 28),
            ],
          ),
        ),
      ),
      body: Center(
        child: Text(
          number,
          style: const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
