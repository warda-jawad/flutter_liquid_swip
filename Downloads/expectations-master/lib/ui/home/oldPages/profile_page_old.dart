import 'package:expectations/controllers/home_controller.dart';
import 'package:expectations/controllers/profile_controller.dart';
import 'package:expectations/controllers/profile_page_controller.dart';
import 'package:expectations/routes/routes.dart';
import 'package:expectations/shared/components/constants.dart';
import 'package:expectations/shared/style/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hex_color/flutter_hex_color.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class ProfilePageOld extends GetView<ProfilePageController> {

  String? userName;
  String? userPhone;

  @override
  Widget build(BuildContext context) {
    ProfileController profileController = Get.find();
    // profileController.fetchUserData();
    if(profileController.profile.name != null && profileController.profile.phone != null){
      userName = profileController.profile.name;
      userPhone = profileController.profile.phone;
    }

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
                  Expanded(
                    child: Text(
                      textAlign: TextAlign.center,
                      'الإعدادات',
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
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 30, right: 24),
                    child: InkWell(
                      child: Row(
                        children: [
                          Container(
                            width: 80,
                            height: 80,
                            child: CircleAvatar(
                              backgroundColor: Colors.transparent,
                            backgroundImage: NetworkImage('https://i.postimg.cc/B6GcTk8F/default-avatar2.png')),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              border: Border.all(color: HexColor(AppColors.defualtColor))
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 10),
                            child: Column(
                              children: [
                                Text('${userName}',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: Const.appFont
                                ),),
                                Text('${userPhone}',
                                style: TextStyle(
                                  color: HexColor(AppColors.greyColor),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: Const.appFont
                                ),),
                              ],
                            ),
                          ),
                        ],
                      ),
                      onTap: (){},
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 48, right: 24, left: 24),
                    child: InkWell(
                      child: Row(
                        children: [
                          SvgPicture.asset('assets/icons/profile.svg'),
                          SizedBox(width: 20),
                          Text('الملف الشخصي',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            fontFamily: Const.appFont,
                          ),),
                          Spacer(),
                          SvgPicture.asset('assets/icons/arrow.svg', width: 14, height: 14),
                        ],
                      ),
                      onTap: () => Get.toNamed(Routes.profile),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 48, right: 24, left: 24),
                    child: InkWell(
                      child: Row(
                        children: [
                          SvgPicture.asset('assets/icons/lock_password.svg'),
                          SizedBox(width: 20),
                          Text('تغيير كلمة المرور',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              fontFamily: Const.appFont,
                            ),),
                          Spacer(),
                          SvgPicture.asset('assets/icons/arrow.svg', width: 14, height: 14),
                        ],
                      ),
                      onTap: () => Get.toNamed(Routes.resetPassword),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 40, right: 24, left: 24),
                    child: InkWell(
                      child: Row(
                        children: [
                          SvgPicture.asset('assets/icons/notifications.svg'),
                          SizedBox(width: 20),
                          Text('الإشعارات',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              fontFamily: Const.appFont,
                            ),),
                          Spacer(),
                          SvgPicture.asset('assets/icons/arrow.svg', width: 14, height: 14),
                        ],
                      ),
                      onTap: () => Get.toNamed(Routes.notifications),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 40, right: 24, left: 24),
                    child: GetBuilder<HomeController>(builder: (home) => InkWell(
                      child: Row(
                        children: [
                          SvgPicture.asset('assets/icons/favorite_icon.svg'),
                          SizedBox(width: 20),
                          Text('المفضلة',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              fontFamily: Const.appFont,
                            ),),
                          Spacer(),
                          SvgPicture.asset('assets/icons/arrow.svg', width: 14, height: 14),
                        ],
                      ),
                      onTap: () {
                        home.getCurrenNavIndex(2);
                      },
                    ))
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 40, right: 24, left: 24),
                    child: InkWell(
                      child: Row(
                        children: [
                          SvgPicture.asset('assets/icons/share_app.svg'),
                          SizedBox(width: 20),
                          Text('شارك التطبيق',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              fontFamily: Const.appFont,
                            ),),
                          Spacer(),
                          SvgPicture.asset('assets/icons/arrow.svg', width: 14, height: 14),
                        ],
                      ),
                      onTap: (){
                      },
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 40, right: 24, left: 24),
                    child: InkWell(
                      child: Row(
                        children: [
                          SvgPicture.asset('assets/icons/contact_us.svg'),
                          SizedBox(width: 20),
                          Text('تواصل معنا',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              fontFamily: Const.appFont,
                            ),),
                          Spacer(),
                          SvgPicture.asset('assets/icons/arrow.svg', width: 14, height: 14),
                        ],
                      ),
                      onTap: () => Get.toNamed(Routes.contactUs),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 40, right: 24, left: 24),
                    child: InkWell(
                      child: Row(
                        children: [
                          SvgPicture.asset('assets/icons/about_us.svg'),
                          SizedBox(width: 20),
                          Text('معلومات عنا',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              fontFamily: Const.appFont,
                            ),),
                          Spacer(),
                          SvgPicture.asset('assets/icons/arrow.svg', width: 14, height: 14),
                        ],
                      ),
                      onTap: () => Get.toNamed(Routes.aboutUs),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 40, right: 24, left: 24, bottom: 50),
                    child: InkWell(
                      child: Row(
                        children: [
                          SvgPicture.asset('assets/icons/sign_out.svg'),
                          SizedBox(width: 20),
                          Text('تسجيل الخروج',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              fontFamily: Const.appFont,
                            ),),
                          Spacer(),
                          SvgPicture.asset('assets/icons/arrow.svg', width: 14, height: 14),
                        ],
                      ),
                      onTap: () => controller.logout(context),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}