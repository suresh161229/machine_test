import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:machine_test/pages/page2.dart';

class Popup1 extends StatelessWidget {
  const Popup1({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
        height: size.height/3,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  Get.toNamed('/page3');
                },
                child: const Text('Go to Page 3'),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Get.back(); // Close the popup
                  Get.off(() => Page2(
                        index: 1,
                      )); // Navigate to the second tab
                },
                child: const Text('Go to Tab 2'),
              ),
              const SizedBox(height: 20),
              // ElevatedButton(
              //   onPressed: () {
              //     Get.back();
              //   },
              //   child: const Text('Close'),
              // ),
            ],
          ),
        ),
    );
  }
}
