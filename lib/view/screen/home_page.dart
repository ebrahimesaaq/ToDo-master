import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_master/view/widget/Tasks/floating_action_button_add_tastk.dart';
import 'package:todo_master/view/widget/Tasks/tab_bar.dart';
import 'package:todo_master/view/widget/Tasks/tasks_bottom_nav_bar.dart';
import 'package:todo_master/view/widget/drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        bottomNavigationBar: const TasksBottomNavBar(),
        floatingActionButton: const FloatingActionButtonAddTask(),
        appBar: AppBar(
          title: Text('homeAppBar'.tr),
          bottom: myTabBar,
        ),
        drawer: const MyDrawer(),
        body: TabBarView(children: const [
          Center(child: Text("Home Page")),
          Center(child: Text("Favorites Page")),
          Center(child: Text("Settings Page")),
        ]),
        // body: Padding(
        //   padding: const EdgeInsets.all(8.0),
        //   child: ListView(
        //     children: [
        //       Text(
        //         'ToDay'.tr,
        //         style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        //       ),
        //       const SizedBox(height: 10),
        //       Card(
        //         child: Column(
        //           children: const [
        //             ListTile(
        //               leading: Icon(Icons.check_box, color: AppColor.blue),
        //               trailing: Icon(Icons.keyboard_arrow_down),
        //               title: Text('Plan anniversary trip',
        //                   style: TextStyle(fontWeight: FontWeight.bold)),
        //             ),
        //             Row(
        //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //               children: [
        //                 Text('   2 of 3 tasks completed',
        //                     style:
        //                         TextStyle(color: AppColor.grey1, fontSize: 12)),
        //                 Text('66%',
        //                     style:
        //                         TextStyle(color: AppColor.grey1, fontSize: 12)),
        //               ],
        //             ),
        //             Padding(
        //               padding: EdgeInsets.all(8.0),
        //               child: LinearProgressIndicator(
        //                   value: 0.666666666, color: AppColor.blue),
        //             ),
        //             Row(
        //               children: [
        //                 SizedBox(width: 50),
        //                 Expanded(
        //                   child: ListTile(
        //                     leading: Icon(Icons.check_box, color: AppColor.blue),
        //                     title: Text('Book flights'),
        //                   ),
        //                 )
        //               ],
        //             ),
        //             Row(
        //               children: [
        //                 SizedBox(width: 50),
        //                 Expanded(
        //                   child: ListTile(
        //                     leading: Icon(Icons.check_box, color: AppColor.blue),
        //                     title: Text('Reserve hotel'),
        //                   ),
        //                 )
        //               ],
        //             ),
        //             Row(
        //               children: [
        //                 SizedBox(width: 50),
        //                 Expanded(
        //                   child: ListTile(
        //                     leading: Icon(Icons.check_box_outline_blank),
        //                     title: Text('Plan daily itinerary'),
        //                   ),
        //                 )
        //               ],
        //             ),
        //           ],
        //         ),
        //       ),
        //       Card(
        //         child: ListTile(
        //           leading: const Icon(
        //             Icons.check_box,
        //             color: AppColor.blue,
        //           ),
        //           title: const Text('Task 1'),
        //           subtitle: const Text('Task details go here'),
        //         ),
        //       ),
        //     ],
        //   ),
        // ),
      ),
    );
  }
}
