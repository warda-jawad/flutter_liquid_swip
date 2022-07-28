import 'package:expectations/controllers/notifications_controller.dart';
import 'package:expectations/model/notifications.dart';
import 'package:expectations/routes/routes.dart';
import 'package:expectations/shared/components/constants.dart';
import 'package:expectations/shared/style/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hex_color/flutter_hex_color.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class NotificationsScreen extends GetView<NotificationsController> {

  @override
  Widget build(BuildContext context) {
    controller.fetchNotifications();
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 120,
            decoration: BoxDecoration(
                color: HexColor(AppColors.defualtColor),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(24),
                    bottomRight: Radius.circular(24))),
            child: Container(
              margin: EdgeInsets.only(top: 25),
              child: Row(
                children: [
                  SizedBox(width: 20),
                  InkWell(
                      child: SvgPicture.asset('assets/icons/back.svg'),
                      onTap: () => Get.offAndToNamed(Routes.home)),
                  Expanded(
                    child: Text(
                      textAlign: TextAlign.center,
                      'الإشعارات',
                      style: TextStyle(
                          color: HexColor(AppColors.whiteColor),
                          fontSize: 22,
                          fontWeight: FontWeight.w500,
                          fontFamily: Const.appFont),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
              child: ListView.builder(
                physics: BouncingScrollPhysics(),
                  itemCount: controller.listNotifications.length,
                  itemBuilder: (context, index) => buildNotificationsItem(controller.listNotifications[index]))),
        ],
      ),
    );
  }

  Widget buildNotificationsItem(NotificationData notification) => Card(
    elevation: 4,
    shape: RoundedRectangleBorder(
      // side: BorderSide(color: Colors.black),
      borderRadius: BorderRadius.all(Radius.circular(14)),
    ),
    child: Container(
      margin: EdgeInsets.only(top: 10, right: 24, left: 24, bottom: 10),
      child: InkWell(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 58,
              height: 58,
              child: CircleAvatar(
                  backgroundColor: Colors.transparent,
                  backgroundImage: AssetImage('assets/icons/logo.png')),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  border: Border.all(color: HexColor(AppColors.defualtColor))
              ),
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('الدوري الاسباني',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          fontFamily: Const.appFont
                      ),),
                    SizedBox(height: 6),
                    Text('${notification.message}',
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          color: HexColor(AppColors.greyColor,),
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          fontFamily: Const.appFont
                      ),),
                    Text('منذ دقيقة',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            fontFamily: Const.appFont
                        )),
                  ],
                ),
              ),
            ),
            Container(
              width: 24,
              height: 24,
              alignment: Alignment.center,
              margin: EdgeInsets.only(top: 26),
              child: Text(
                '8',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                ),
                textAlign: TextAlign.center,
              ),
              decoration: BoxDecoration(
                  border: Border.all(
                    color: HexColor(AppColors.defualtColor),
                  ),
                  color: HexColor(AppColors.defualtColor),
                  borderRadius: BorderRadius.circular(50)),
            ),
          ],
        ),
        onTap: (){},
      ),
    ),
  );
}
