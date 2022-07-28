
import 'package:expectations/controllers/home_controller.dart';
import 'package:expectations/shared/style/colors.dart';
import 'package:expectations/ui/home/oldPages/favorite_page_old.dart';
import 'package:expectations/ui/home/pages/home_page.dart';
import 'package:expectations/ui/home/pages/profile_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hex_color/flutter_hex_color.dart';
import 'package:get/get.dart';

import 'pages/expections_page.dart';
import 'pages/favorite_page.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: HexColor(AppColors.defualtColor)));

    return GetBuilder<HomeController>(builder: (controller) => Scaffold(
      body: SafeArea(
        child: IndexedStack(
          index: controller.navIndex,
          children: [
            HomePage(),
            ExpectionsPage(),
            FavoritePage(),
            ProfilePage(),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        child: BottomNavigationBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          selectedItemColor: HexColor(AppColors.defualtColor),
          currentIndex: controller.navIndex,
          items: _bottomNavigationBarItems(),
          onTap: (navIndex) => controller.getCurrenNavIndex(navIndex),
        ),
        decoration: BoxDecoration(
            color: HexColor(AppColors.bottomNavColor),
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(20), topLeft: Radius.circular(20))),
      ),
    ));
  }

  List<BottomNavigationBarItem> _bottomNavigationBarItems() => [
        BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.home), label: "الرئيسية"),
        BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.person_3), label: "توقعاتي"),
        BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.heart), label: "المفضلة"),
        BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.person), label: "الملف الشخصي"),
      ];
}
