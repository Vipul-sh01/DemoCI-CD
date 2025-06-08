import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ButtonController extends GetxController {
  Rx<Color> buttonColor = Rx<Color>(Colors.grey);
  Rx<bool> isButtonEnabled = Rx<bool>(false);

  void fun(String inputText) {
    if (inputText.length == 10 && RegExp(r'^[0-9]+$').hasMatch(inputText)) { // RegExp if method to check if the input is a valid number
      // If the input is valid, change the button color and enable it
      buttonColor.value = Colors.blue;
      isButtonEnabled.value = true;
    } else {
      buttonColor.value = Colors.grey;
      isButtonEnabled.value = false;
    }
  }
}

// Function to navigate to the next screen with the provided number
void NextScreen(String Number) {
  Get.toNamed('/displayScreen', arguments: Number);
}
