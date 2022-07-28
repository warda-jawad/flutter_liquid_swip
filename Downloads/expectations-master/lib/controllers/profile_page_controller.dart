import 'package:expectations/api/api_requests.dart';
import 'package:expectations/controllers/home_controller.dart';
import 'package:expectations/controllers/home_page_controller.dart';
import 'package:expectations/controllers/profile_controller.dart';
import 'package:expectations/routes/routes.dart';
import 'package:expectations/shared/components/constants.dart';
import 'package:expectations/shared/style/colors.dart';
import 'package:expectations/utils/app_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hex_color/flutter_hex_color.dart';
import 'package:get/get.dart';

class ProfilePageController extends GetxController {
  // late String userName;
  // late int userPhone;

  @override
  void onInit() {
    super.onInit();
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
                                  controller.navIndex = 0;
                                  controller.getCurrenNavIndex(0);
                                  Get.offAndToNamed(Routes.login);
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
