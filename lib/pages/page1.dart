import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Page 1'),centerTitle: true,),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Get.toNamed('/page2');
          },
          child: const Text('Go to Page 2'),
        ),
      ),
    );
  }
}