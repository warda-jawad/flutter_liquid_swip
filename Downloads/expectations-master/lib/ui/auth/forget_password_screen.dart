import 'package:expectations/controllers/forget_password_controller.dart';
import 'package:expectations/routes/routes.dart';
import 'package:expectations/shared/components/components.dart';
import 'package:expectations/shared/components/constants.dart';
import 'package:expectations/shared/style/colors.dart';
import 'package:expectations/utils/app_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hex_color/flutter_hex_color.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class ForgetPasswordScreen extends GetView<ForgetPasswordController> {
  const ForgetPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: controller.formKey,
        child: Column(
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
                        onTap: () => Get.offAndToNamed(Routes.login)),
                    Expanded(
                      child: Text(
                        textAlign: TextAlign.center,
                        'نسيت كلمة المرور',
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
                      margin: EdgeInsets.only(top: 20, right: 20),
                      padding: EdgeInsets.only(left: 10),
                      alignment: Alignment.centerRight,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'إعادة تعيين كلمة المرور',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 24,
                                fontWeight: FontWeight.w500,
                                fontFamily: Const.appFont),
                          ),
                          SizedBox(height: 10),
                          Text(
                            'أدخل البريد الإلكتروني المرتبط بحسابك وسنرسل بريدًا إلكترونيًا يحتوي على إرشادات لإعادة تعيين كلمة المرور الخاصة بك.',
                            style: TextStyle(
                                color: HexColor(AppColors.subTextColor),
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                fontFamily: Const.appFont),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 20, top: 20),
                      alignment: Alignment.centerRight,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('البريد الإلكتروني',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                fontFamily: Const.appFont
                            ),),
                          Container(
                            margin: EdgeInsets.only(left: 20, top: 8),
                            child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 8.0),
                                child: GetBuilder<ForgetPasswordController>(builder: (controller) => TextFormField(
                                  controller: controller.emailController,
                                    keyboardType: TextInputType.emailAddress,
                                    decoration: InputDecoration(
                                      hintText: 'example@example.com',
                                      hintStyle: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                          fontFamily: Const.appFont
                                      ),
                                      suffixIcon: IconButton(
                                        icon: Icon(controller.clearDataIcon),
                                        onPressed: () => controller.clearData(),
                                      ),
                                    ),
                                    validator: (value) => AppHelper.validateEmail(email: value!)
                                ),)
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
                    SizedBox(height: 20),
                    Column(
                      children: [
                        Obx(() => controller.isLoading == true ? CircularProgressIndicator() : Container()),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                          child: CustomButton(
                              text: 'إرسال',
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                              fontfamily: Const.appFont,
                              radius: 8,
                              background: HexColor(AppColors.defualtColor),
                              click: () => controller.forgetPassword()),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
