import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'Views/displayScreen.dart';
import 'Views/homeScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'GetX Basic App',
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => const HomeScreen()),
        GetPage(name: '/displayScreen', page: () => const DisplayScreen()),
      ],
    );
  }
}

