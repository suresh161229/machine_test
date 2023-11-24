import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:machine_test/pages/page1.dart';
import 'package:machine_test/pages/page2.dart';
import 'package:machine_test/pages/page3.dart';
import 'package:machine_test/pages/page4.dart';
import 'package:machine_test/pages/page5.dart';
import 'package:machine_test/pages/page6.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'GetX Navigation',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/page1',
      getPages: [
        GetPage(name: '/page1', page: () => const Page1()),
        GetPage(name: '/page2', page: () =>  Page2(index: 0,)),
        GetPage(name: '/page3', page: () => const Page3()),
        GetPage(name: '/page4', page: () => const Page4()),
        GetPage(name: '/page5', page: () => const Page5()),
        GetPage(name: '/page6', page: () => const Page6()),
      ],
    );
  }
}