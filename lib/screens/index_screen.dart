import 'dart:io';

import 'package:final_smart_farm/controller/bottom_nav_controller.dart';
import 'package:final_smart_farm/screens/component/message_popup.dart';
import 'package:final_smart_farm/screens/screen_index/temp/fifth_screen.dart';
import 'package:final_smart_farm/screens/screen_index/temp/first_screen.dart';
import 'package:final_smart_farm/screens/screen_index/temp/fourth_screen.dart';
import 'package:final_smart_farm/screens/screen_index/temp/second_screen.dart';
import 'package:final_smart_farm/screens/screen_index/temp/third_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class IndexScreen extends GetView<BottomNavController> {
  const IndexScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: willPopAction,
      child: Obx(()=>Scaffold(
        body: Center(
          child: IndexedStack(
            index: controller.pageIndex.value,
            children: [
              FirstScreen(),
              SecondScreen(),
              ThirdScreen(),
              FourthScreen(),
              FifthScreen()
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Color(0xff151816),
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          currentIndex: controller.pageIndex.value,
          elevation: 0,
          onTap: (value) {
            controller.changeBottomNav(value);
          },
          items: [
            BottomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ImageIcon(AssetImage("assets/images/MyGardenActive.png")),
              ),
              activeIcon: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ImageIcon(
                  AssetImage("assets/images/MyGardenActive.png"),
                  color: Colors.green,
                ),
              ),
              label: 'first',
            ),
            BottomNavigationBarItem(
                icon: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ImageIcon(AssetImage("assets/images/NeighberGarden.png")),
                ),
                activeIcon: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ImageIcon(
                    AssetImage(
                      "assets/images/NeighberGardenActive.png",
                    ),
                    color: Colors.green,
                  ),
                ),
                label: 'second'),
            BottomNavigationBarItem(
                icon: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ImageIcon(AssetImage("assets/images/Market.png")),
                ),
                activeIcon: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ImageIcon(
                    AssetImage(
                      "assets/images/MarketActive.png",
                    ),
                    color: Colors.green,
                  ),
                ),
                label: 'third'),
            BottomNavigationBarItem(
                icon: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ImageIcon(AssetImage("assets/images/Chatting.png")),
                ),
                activeIcon: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ImageIcon(
                    AssetImage(
                      "assets/images/Chatting.png",
                    ),
                    color: Colors.green,
                  ),
                ),
                label: 'fourth'),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/images/MyProfile.png"),color: Colors.white54),
                activeIcon: ImageIcon(
                  AssetImage(
                    "assets/images/MyProfile.png",
                  ),
                  color: Colors.green,
                ),
                label: 'fifth'),
          ],
        ),
      )),
    );

  }
  Future<bool> willPopAction() async {
    showDialog(
        context: Get.context!,
        builder: (context) => MessagePopup(
          title: 'Smart Farm',
          message: '정말 종료하시겠습니까?',
          okCallback: () {
            exit(0);
          },
          cancelCallback: Get.back,
        ));
    return true;
  }

}
