import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'dart:convert';

import 'package:machine_test/tabs/tab1.dart';
import 'package:machine_test/tabs/tab2.dart';
import 'package:machine_test/tabs/tab3.dart';

class Page4 extends StatefulWidget {
  const Page4({super.key});

  @override
  _Page4State createState() => _Page4State();
}

class _Page4State extends State<Page4> {
  List<dynamic> items = [ // Initialize an empty list

  
    "Samosas.",
    "Chaat.",
    "Pani Puri.",
    "Bhelpuri.",
    "Kachori.",
    "Chole Bhature.",
    "Matar Kulcha.",
    "Dosa.",
    "Milk.",
    "Bread.",
    "Butter.",
    "Cheese.",
    "Yoghurt.",
    "Sandwich.",
    "Pancake.",
    "Pie."
  

  ];

  @override
  void initState() {
    super.initState();
   // loadJsonData(); // Load JSON data on initialization
  }

  // Future<void> loadJsonData() async {
  //   // Read JSON data from the file or any source
  //   String jsonString =
  //       await DefaultAssetBundle.of(context).loadString('assets/data.json');
  //   setState(() {
  //     items = json.decode(jsonString);
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Page 4'),centerTitle: true,),
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
                children: [
                  Tab1(
                    widget: ListView.builder(
                      itemCount: items.length,
                      itemBuilder: (context, index) {
                        return ListTile(
                          title: Text(items[index]),
                          subtitle: Text(items[index]),
                          // Add other fields as needed from your JSON structure
                        );
                      },
                    ),
                  ),
                  Tab2(),
                  Tab3(
                    widget: Column(
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
      ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      // body: ListView.builder(
      //   itemCount: items.length,
      //   itemBuilder: (context, index) {
      //     return ListTile(
      //       title: Text(items[index]['title']),
      //       subtitle: Text(items[index]['description']),
      //       // Add other fields as needed from your JSON structure
      //     );
      //   },
      // ),
    );
  }
}
