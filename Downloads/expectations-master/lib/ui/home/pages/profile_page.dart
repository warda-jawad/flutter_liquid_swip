import 'package:expectations/api/api_requests.dart';
import 'package:expectations/controllers/home_controller.dart';
import 'package:expectations/model/profile.dart';
import 'package:expectations/routes/routes.dart';
import 'package:expectations/shared/components/constants.dart';
import 'package:expectations/shared/style/colors.dart';
import 'package:expectations/utils/app_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hex_color/flutter_hex_color.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class ProfilePage extends StatefulWidget {

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {

  ProfileData profile = ProfileData();

  @override
  void initState(){
    fetchUserData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
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
                                Text('${profile.name}',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500,
                                      fontFamily: Const.appFont
                                  ),),
                                Text('${profile.phone}',
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
                  /*Container(
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
                  ),*/
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
                      onTap: () => logout(context),
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

  void fetchUserData(){
    ApiRequests.fetchUserData(token: AppHelper.getCurrentUserToken())
        .then((value) => profile = value!.data!);
  }

  void logout(BuildContext context) {
    showDialog(
        context: context,
        builder: (con) => AlertDialog(
          content: Container(
            width: double.infinity,
            height: 180,
            child: Column(
              children: [
                SizedBox(height: 16),
                Text(
                  'تسجيل الخروج',
                  style: TextStyle(
                      color: HexColor(AppColors.defualtColor),
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      fontFamily: Const.appFont),
                ),
                SizedBox(height: 16),
                Text(
                  'هل أنت متأكد من عملية تسجيل الخروج',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      fontFamily: Const.appFont),
                ),
                Container(
                  margin: EdgeInsets.all(16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      TextButton(
                          child: Text(
                            'نعم',
                            style: TextStyle(
                                color: HexColor(AppColors.defualtColor),
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                fontFamily: Const.appFont),
                          ),
                          onPressed: () {
                            HomeController controller = Get.find();
                            ApiRequests.logout(token: AppHelper.getCurrentUserToken()).then((value) {
                              AppHelper.clearData(key: Const.KEY_USER_TOKEN).then((value) {
                                AppHelper.clearData(key: Const.KEY_USER_DATA).then((value) {
                                  Get.offAndToNamed(Routes.login);
                                  controller.navIndex = 0;
                                  controller.getCurrenNavIndex(0);
                                });
                              });
                            }).catchError((error) {
                              print('catchError: $error');
                            });
                          }),
                      TextButton(
                          child: Text(
                            'لا',
                            style: TextStyle(
                                color: HexColor(AppColors.blackColor),
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                fontFamily: Const.appFont),
                          ),
                          onPressed: () => Navigator.pop(context)),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }

}
