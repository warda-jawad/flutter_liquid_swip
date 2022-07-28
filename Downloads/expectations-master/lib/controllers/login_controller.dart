import 'dart:convert';

import 'package:expectations/api/api_requests.dart';
import 'package:expectations/model/user.dart';
import 'package:expectations/routes/routes.dart';
import 'package:expectations/shared/components/constants.dart';
import 'package:expectations/utils/app_helper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  RxBool isLoading = false.obs;

  late GlobalKey<FormState> formKey;
  late TextEditingController emailController;
  late TextEditingController passwordController;

  bool isVisiblePass = true;
  IconData visiblePassIcon = Icons.visibility;

  @override
  void onInit() {
    formKey = GlobalKey<FormState>();
    emailController = TextEditingController();
    passwordController = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  void visiblePassword() {
    isVisiblePass = !isVisiblePass;
    visiblePassIcon = isVisiblePass ? Icons.visibility : Icons.visibility_off;
    update();
  }
  void login() {
    print(
        'login Token: ${AppHelper.getUserToken(key: Const.KEY_FIREBASE_TOKEN)}');
    bool isValidate = formKey.currentState!.validate();
    if (isValidate) {
      isLoading(true);
      ApiRequests.login(
              email: emailController.text,
              password: passwordController.text,
              token: AppHelper.getUserToken(key: Const.KEY_FIREBASE_TOKEN))
          .then((value) {
        if (value != null) {
          User user = value;
          // print('loginController Token: ${user.data!.accessToken}');
          // print('loginController UserData: ${jsonEncode(user.data)}');
          AppHelper.saveUserToken(
              key: Const.KEY_USER_TOKEN, token: user.data!.accessToken!);
          AppHelper.saveUserData(
              key: Const.KEY_USER_DATA, userData: user.data!);
          AppHelper.saveAppData(
              key: Const.KEY_LOGIN_REGISTER, value: Const.Value_Login);
          Get.offAndToNamed(Routes.home);
          formKey.currentState!.save();
          isLoading(false);
        } else {
          isLoading(false);
          Get.snackbar('خطأ في تسجيل الدخول',
              'هناك خطأ ما يرجى التحقق من جميع البيانات المدخلة');
        }
      }).catchError((error) {
        isLoading(false);
        print("catchError: $error");
      });
    }else
      isLoading(false);
  }
}
