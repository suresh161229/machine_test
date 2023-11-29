import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:machine_test/pages/page2.dart';

class Popup1 extends StatelessWidget {
  const Popup1({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height / 9,
      child: Stack(
        alignment: Alignment.topRight,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const Expanded(child: SizedBox()), // Empty SizedBox to occupy space
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Get.toNamed('/page3');
                    },
                    child: const Text('Go to Page 3'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                       Get.back(); // Close the popup
                      Get.until(ModalRoute.withName('/')); // Close until the dialog
                      Get.offAll(() => Page2(
                        index: 1,
                      )); // Navigate to the second tab
                    },
                    child: const Text('Go to Tab 2'),
                  ),
                ],
              ),
            ],
          ),
          
        ],
      ),
    );
  }
}
