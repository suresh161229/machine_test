import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:machine_test/pages/page2.dart';
import 'package:machine_test/tabs/tab1.dart';
import 'package:machine_test/tabs/tab2.dart';
import 'package:machine_test/tabs/tab3.dart';

class Page6 extends StatelessWidget {
  const Page6({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page 6'),
        centerTitle: true,
      ),
      body: DefaultTabController(
        initialIndex: 2,
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
                children: [
                  Tab1(widget: Text("")),
                  Tab2(),
                  Tab3(
                    widget: Column(
                      children: [
                        Expanded(child: Text('')),
                        ElevatedButton(
                            onPressed: () {
                              Get.off(() => Page2(
                                    index: 1,
                                  ));
                            },
                            child: Text('Go to Tab 2')),
                        Expanded(child: Text('')),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      // body: Center(
      //   child: ElevatedButton(
      //     onPressed: () {
      //       Get.toNamed('/page2'); // Navigate back to Tab2
      //     },
      //     child: const Text('Go to Tab 2'),
      //   ),
      // ),
    );
  }
}
