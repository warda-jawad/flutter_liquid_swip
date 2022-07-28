
import 'package:expectations/controllers/login_controller.dart';
import 'package:expectations/routes/routes.dart';
import 'package:expectations/shared/components/components.dart';
import 'package:expectations/shared/components/constants.dart';
import 'package:expectations/shared/style/colors.dart';
import 'package:expectations/utils/app_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hex_color/flutter_hex_color.dart';
import 'package:get/get.dart';

class LoginScreen extends GetView<LoginController> {
  LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Colors.black));
    if (AppHelper.getUserData(key: Const.KEY_USER_DATA) != null) {
      print(
          "LoginScreen: ${AppHelper.getUserData(key: Const.KEY_USER_DATA).name}");
    }

    // controller.emailController.text = 'ahmet.mandil@gmail.com';
    // controller.passwordController.text = '12345678';

    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Form(
          key: controller.formKey,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 65),
                  child: Image.asset(
                    'assets/icons/logo.png',
                    width: 150,
                    height: 150,
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  "تسجيل الدخول",
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                      fontFamily: '${Const.appFont}'),
                ),
                // SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: Text(
                      'قم بتسجيل الدخول بالبيانات التي أدخلتها أثناء التسجيل.',
                      style: TextStyle(
                        color: HexColor(AppColors.subTextColor),
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        fontFamily: '${Const.appFont}',
                      ),
                      textAlign: TextAlign.center),
                ),
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "البريد الإلكتروني",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            fontFamily: '${Const.appFont}'),
                      ),
                      SizedBox(height: 8),
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: TextFormField(
                            controller: controller.emailController,
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                              hintText: 'قم بإدخال البريد الإلكتروني',
                            ),
                            validator: (value) => AppHelper.validateEmail(email: value!),
                          ),
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                              width: 1,
                              style: BorderStyle.solid,
                              color: HexColor(AppColors.blackColor)),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 14),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "كلمة المرور",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            fontFamily: '${Const.appFont}'),
                      ),
                      SizedBox(height: 8),
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: GetBuilder<LoginController>(
                            builder: (controller) => TextFormField(
                              controller: controller.passwordController,
                              keyboardType: TextInputType.visiblePassword,
                              obscureText: controller.isVisiblePass,
                              decoration: InputDecoration(
                                hintText: 'أدخل كلمة المرور',
                                suffixIcon: IconButton(
                                  icon: Icon(controller.visiblePassIcon),
                                  onPressed: () => controller.visiblePassword(),
                                ),
                              ),
                              validator: (value) => AppHelper.validatePassword(password: value!),
                            ),
                          ),
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                              width: 1,
                              style: BorderStyle.solid,
                              color: HexColor(AppColors.blackColor)),
                        ),
                      ),
                      SizedBox(height: 8),
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: InkWell(
                          child: Text(
                            "نسيت كلمة المرور ؟",
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                fontFamily: '${Const.appFont}',
                                decoration: TextDecoration.underline),
                          ),
                          onTap: () => Get.toNamed(Routes.forgetPassword),
                        ),
                      ),
                    ],
                  ),
                ),
                Obx(() => controller.isLoading == true ? CircularProgressIndicator() : Container()),
                Container(
                  margin: EdgeInsets.only(top: 40, left: 30, right: 30),
                  child: CustomButton(
                    text: 'تسجيل الدخول',
                    textColor: HexColor(AppColors.whiteColor),
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    fontfamily: '${Const.appFont}',
                    radius: 8,
                    background: HexColor(AppColors.defualtColor),
                    click: () => controller.login(),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'ليس لديك حساب؟ ',
                        style: TextStyle(
                            color: HexColor(AppColors.subTextColor),
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            fontFamily: Const.appFont),
                      ),
                      InkWell(
                        child: Text(
                          'إنشاء حساب',
                          style: TextStyle(
                              color: HexColor(AppColors.blackColor),
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              fontFamily: Const.appFont),
                        ),
                        onTap: () => Get.toNamed('/register'),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
