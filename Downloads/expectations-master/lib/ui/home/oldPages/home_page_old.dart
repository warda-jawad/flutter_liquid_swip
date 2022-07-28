

import 'package:expandable/expandable.dart';
import 'package:expectations/controllers/ads_controller.dart';
import 'package:expectations/controllers/home_controller.dart';
import 'package:expectations/controllers/home_page_controller.dart';
import 'package:expectations/controllers/profile_controller.dart';
import 'package:expectations/model/days.dart';
import 'package:expectations/routes/routes.dart';
import 'package:expectations/shared/components/constants.dart';
import 'package:expectations/shared/style/colors.dart';
import 'package:expectations/ui/home/show_periodicals.dart';
import 'package:expectations/utils/app_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hex_color/flutter_hex_color.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

class HomePageOld extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return GetBuilder<HomePageController>(builder: (controller) {
      // controller.fetchPeriodicals();
      return Scaffold(
        body: Column(
          children: [
            Container(
              height: 100,
              decoration: BoxDecoration(
                  color: HexColor(AppColors.defualtColor),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(24),
                      bottomRight: Radius.circular(24))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(width: 20),
                  /*InkWell(
                    child: Icon(Icons.exit_to_app_rounded,
                        size: 30, color: Colors.white),
                    onTap: () => AppHelper.clearData(key: Const.KEY_USER_DATA)
                            .then((value) {
                          AppHelper.clearAllData()
                              .then((value) => Get.offAndToNamed(Routes.login));
                        })),*/
                  Spacer(),
                  Text(
                    'الرئيسية',
                    style: TextStyle(
                        color: HexColor(AppColors.whiteColor),
                        fontSize: 22,
                        fontWeight: FontWeight.w500,
                        fontFamily: Const.appFont),
                  ),
                  SizedBox(width: 100),
                  InkWell(
                      child: SvgPicture.asset('assets/icons/search.svg', height: 20, width: 20),
                      onTap: () => Get.toNamed(Routes.search)),
                  SizedBox(
                    width: 20,
                  ),
                  GetBuilder<HomeController>(builder: (home) => InkWell(
                    child: SvgPicture.asset('assets/icons/menu.svg'),
                    onTap: () => home.getCurrenNavIndex(3),
                  )),
                  SizedBox(
                    width: 20,
                  ),
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Column(
                  children: [
                    GetBuilder<HomePageController>(builder: (adsController) => ImageSlideshow(
                      width: 400,
                      height: 200,
                      initialPage: 0,
                      autoPlayInterval: 3000,
                      isLoop: true,
                      indicatorColor: Colors.transparent,
                      indicatorBackgroundColor: Colors.transparent,
                      children: adsController.listPeriodicals
                          .map((element) => Container(
                        margin: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(
                                    '${Const.baseImagesUrl}${element.image}'),
                                fit: BoxFit.cover),
                            borderRadius: BorderRadius.circular(10)),
                      ))
                          .toList(),
                    )),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      physics: BouncingScrollPhysics(),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: controller.listDays.map(
                                (day) {
                              return InkWell(
                                child: Container(
                                  margin: EdgeInsets.all(10),
                                  child: Text(
                                    '${day.day}',
                                    style: TextStyle(
                                        color: HexColor(AppColors.blackColor),
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                        fontFamily: Const.appFont),
                                  ),
                                ),
                                onTap: () {
                                  if(day.day == 'كل المباريات') {
                                    print("ALL");
                                    controller.fetchPeriodicals();
                                  }else {
                                    print("DATE");
                                    controller.fetchPeriodicalsByDate(
                                        date: '${day.date}');
                                  }
                                }
                                ,
                              );
                            },
                          ).toList()),
                    ),
                    SizedBox(height: 4),
                    Obx(() => controller.isLoading == true ? Center(child: CircularProgressIndicator()) : Container()),
                    SizedBox(height: 16),
                    ExpandableTheme(
                        data: ExpandableThemeData(useInkWell: true),
                        child: ListView.builder(
                          primary: false,
                          shrinkWrap: true,
                          itemCount: controller.listPeriodicals.length,
                          itemBuilder: (context, index) => controller
                              .listPeriodicals[index].matches!.isEmpty
                              ? Container()
                              : ShowPeriodicals(periodicals: controller.listPeriodicals[index]),
                        )),
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    });
  }
}
