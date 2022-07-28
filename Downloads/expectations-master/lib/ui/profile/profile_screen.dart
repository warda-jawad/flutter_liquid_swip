import 'dart:convert';

import 'package:expectations/api/api_requests.dart';
import 'package:expectations/controllers/edit_profile_controller.dart';
import 'package:expectations/model/profile.dart';
import 'package:expectations/routes/routes.dart';
import 'package:expectations/shared/components/constants.dart';
import 'package:expectations/shared/style/colors.dart';
import 'package:expectations/ui/home/pages/profile_page.dart';
import 'package:expectations/utils/app_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hex_color/flutter_hex_color.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class ProfileScreen extends StatefulWidget {
  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {

  ProfileData profile = ProfileData();

  @override
  void initState(){
   setState(() =>  fetchUserData());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<EditProfileController>(builder: (controller) => Scaffold(
      body: Column(
        children: [
          Container(
            height: 120,
            margin: EdgeInsets.only(top: 20),
            decoration: BoxDecoration(
                color: HexColor(AppColors.defualtColor),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(24),
                    bottomRight: Radius.circular(24))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(width: 20),
                InkWell(
                    child: SvgPicture.asset('assets/icons/back.svg'),
                    onTap: () => Get.offAndToNamed(Routes.home)),
                Spacer(),
                Text(
                  'الملف الشخصي',
                  style: TextStyle(
                      color: HexColor(AppColors.whiteColor),
                      fontSize: 22,
                      fontWeight: FontWeight.w500,
                      fontFamily: Const.appFont),
                ),
                Spacer(),
                InkWell(
                    child: SvgPicture.asset('assets/icons/edit_profile.svg'),
                    onTap: () => Get.toNamed(Routes.editProfile)),
                SizedBox(
                  width: 20,
                ),
                // SvgPicture.asset('assets/icons/add_favorit.svg'),
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
                  Container(
                    margin: EdgeInsets.only(top: 30, right: 24),
                    child: Column(
                      children: [
                        Container(
                          width: 80,
                          height: 80,
                          child: CircleAvatar(
                              backgroundColor: Colors.transparent,
                              backgroundImage: NetworkImage(
                                  'https://i.postimg.cc/B6GcTk8F/default-avatar2.png')),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              border: Border.all(
                                  color: HexColor(AppColors.defualtColor))),
                        ),
                        Text(
                          '${controller.profile.name}',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              fontFamily: Const.appFont),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 20, top: 40),
                    alignment: Alignment.centerRight,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'الإسم كاملا',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              fontFamily: Const.appFont),
                        ),
                        Text(
                          '${controller.profile.name}',
                          style: TextStyle(
                              color: HexColor(AppColors.subTextColor),
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              fontFamily: Const.appFont),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 20, top: 30),
                    alignment: Alignment.centerRight,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'عنوان البريد الإلكتروني',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              fontFamily: Const.appFont),
                        ),
                        Text(
                          '${controller.profile.email}',
                          style: TextStyle(
                              color: HexColor(AppColors.subTextColor),
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              fontFamily: Const.appFont),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 20, top: 30),
                    alignment: Alignment.centerRight,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'رقم الهاتف',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              fontFamily: Const.appFont),
                        ),
                        Text(
                          '${controller.profile.phone}',
                          style: TextStyle(
                              color: HexColor(AppColors.subTextColor),
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              fontFamily: Const.appFont),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 20, top: 30),
                    alignment: Alignment.centerRight,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'العنوان',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              fontFamily: Const.appFont),
                        ),
                        Text(
                          '${controller.profile.address}',
                          style: TextStyle(
                              color: HexColor(AppColors.subTextColor),
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              fontFamily: Const.appFont),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 20, top: 30),
                    alignment: Alignment.centerRight,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'تاريخ الميلاد',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              fontFamily: Const.appFont),
                        ),
                        Text(
                          '${controller.profile.dateOfBirth}',
                          style: TextStyle(
                              color: HexColor(AppColors.subTextColor),
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              fontFamily: Const.appFont),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 20, top: 30, bottom: 30),
                    alignment: Alignment.centerRight,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'الميول الرياضي',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              fontFamily: Const.appFont),
                        ),
                        Text(
                          'كرة القدم',
                          style: TextStyle(
                              color: HexColor(AppColors.subTextColor),
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              fontFamily: Const.appFont),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    ));
  }

  void fetchUserData() {
    setState(() {
      ApiRequests.fetchUserData(token: AppHelper.getCurrentUserToken())
          .then((value) {
        profile = value!.data!;
        print("ProfileScreen: ${jsonEncode(profile)}");
      });
    });
  }
}
