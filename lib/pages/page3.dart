import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:machine_test/tabs/tab1.dart';
import 'package:machine_test/tabs/tab2.dart';
import 'package:machine_test/tabs/tab3.dart';
import 'page4.dart'; // Import Page4

class Page3 extends StatelessWidget {
  const Page3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Page 3'),centerTitle: true,),
         body: DefaultTabController(
        length: 3,
        child: Column(
          children: [
              const TabBar(
              labelColor: Colors.black,
              tabs: [
                Tab(text: 'Tab 1'),
                Tab(text: 'Tab 2'),
                Tab(text: 'Tab 3'),
              ],
            ),
             Expanded(
              child: TabBarView(
                children:   [
                   Tab1(widget:    Column(
                     children: [
                      Expanded(child: Text('')),
                       ElevatedButton(onPressed: () {
                                Get.toNamed('/page4');
                              }, child: Text('Go to Page 4')),
                              Expanded(child: Text('')),
                     ],
                   ),),
                   Tab2(),
                   Tab3(widget: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () {
              Get.toNamed('/page5');
            },
            child: const Text('Go to Page 5'),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              Get.toNamed('/page6');
            },
            child: const Text('Go to Page 6'),
          ),
        ],
      ),),
                ],
              ),
            ),
          ],
        ),
      ),
      // body: Center(
      //   child: ElevatedButton(
      //     onPressed: () {
      //       Get.toNamed('/page4');
      //     },
      //     child: const Text('Go to Page 4'),
      //   ),
      // ),
    );
  }
}
