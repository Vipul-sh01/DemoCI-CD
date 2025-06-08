import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import '../ViewModels/ButtonController.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final ButtonController buttonController = Get.put(ButtonController()); // this will create an instance of ButtonController, and this dependency will be available throughout the app

    final TextEditingController numberController = TextEditingController(); // Create a TextEditingController to manage the text field input

    // Listen to changes in the text field and update the button state
    // using the ButtonController
    // This will enable the button if the input is valid
    numberController.addListener(() {
      buttonController.fun(numberController.text);
    });

    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextField(
                controller: numberController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.number,
                inputFormatters: [
                  FilteringTextInputFormatter.digitsOnly,
                ],
              ),
              const SizedBox(height: 20),
              Obx(() {
                return ElevatedButton(
                  onPressed: buttonController.isButtonEnabled.value
                      ? () {
                    NextScreen(numberController.text);
                  }
                      : null,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: buttonController.buttonColor.value,
                  ),
                  child: const Text("Button"),
                );
              }),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
