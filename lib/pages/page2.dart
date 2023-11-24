import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:machine_test/pages/page3.dart';
import 'package:machine_test/popup1.dart';
import 'package:machine_test/tabs/tab1.dart';
import 'package:machine_test/tabs/tab2.dart';
import 'package:machine_test/tabs/tab3.dart';

class Page2 extends StatelessWidget {
  int index;
   Page2({super.key,required this.index});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Page 2'),centerTitle: true,automaticallyImplyLeading: false,),
      body: DefaultTabController(
        initialIndex: index,
        length: 3,
        child: Column(
          children: [
            TabBar(
              labelColor: Colors.black,
              tabs: [
               const Tab(text: 'Tab 1'),
               const Tab(text: 'Tab 2'),
                const Tab(text: 'Tab 3'),
              ],
            ),
            Expanded(
              child: TabBarView(
                children: [
                  Tab1(
                    widget: Column(
                      children: [
                        Expanded(child: Text('')),
                        Column(
                        children: [
                          
                          ElevatedButton(onPressed: () {
                            Get.toNamed('/page3');
                          }, child: Text('Go to Page 3')),
                          const SizedBox(height: 20),
                          ElevatedButton(
                            onPressed: () {
                              Get.dialog(
                                AlertDialog(
                                  title: Text(''),
                                  content: Popup1(key: key),
                                  actions: <Widget>[
                                    TextButton(
                                      onPressed: () {
                                        Get.back(); // Close the dialog
                                      },
                                      child: Text('Close'),
                                    ),
                                  ],
                                ),
                              );
                            },
                            child: const Text('Show Popup 1'),
                          ),
                        ],
                      ),
                      Expanded(child: Text('')),
                      ],
                    ),
                  ),
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
    );
  }
}
