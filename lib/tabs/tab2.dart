import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Tab2 extends StatelessWidget {
  const Tab2({super.key});

  @override
  Widget build(BuildContext context) {
     return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () {
              Get.toNamed('/page5');
            },
            child: const Text('Go to Page 5'),
          ),
        ],
      ),
    );
  }
}