import 'package:expectations/routes/routes.dart';
import 'package:expectations/shared/components/components.dart';
import 'package:expectations/shared/components/constants.dart';
import 'package:expectations/shared/style/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hex_color/flutter_hex_color.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class CheckEmailScreen extends StatelessWidget {
  const CheckEmailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 120,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(24),
                    bottomRight: Radius.circular(24))),
            child: Container(
              margin: EdgeInsets.only(top: 25),
              child: Row(
                children: [
                  SizedBox(width: 20),
                  InkWell(
                      child: SvgPicture.asset('assets/icons/back.svg', color: Colors.black,),
                      onTap: () => Get.offAndToNamed(Routes.forgetPassword)),
                ],
              ),
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Column(
                  children: [
                    SvgPicture.asset('assets/icons/check_email.svg'),
                    Container(
                      margin: EdgeInsets.all(20),
                      child: Text('تحقق من بريدك الالكتروني',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 24,
                        fontWeight: FontWeight.w500,
                        fontFamily: Const.appFont
                      ),),
                    ),
                    Container(
                      margin: EdgeInsets.all(8),
                      child: Text('لقد أرسلنا تعليمات استعادة كلمة المرور إلى بريدك الإلكتروني.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: HexColor(AppColors.subTextColor),
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        fontFamily: Const.appFont
                      ),),
                    ),
                    Container(
                      margin: EdgeInsets.all(20),
                      child: CustomButton(
                          text: 'افتح تطبيق البريد الإلكتروني',
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          fontfamily: Const.appFont,
                          background: HexColor(AppColors.defualtColor),
                          radius: 8,
                          click: (){}),
                    ),
                    Container(
                      margin: EdgeInsets.all(8),
                      child: InkWell(
                        child: Text('تخطي ، سأؤكد لاحقًا',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: HexColor(AppColors.subTextColor),
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              fontFamily: Const.appFont
                          ),),
                        onTap: () => Get.offAndToNamed(Routes.login),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(20),
                      child: InkWell(
                        child: RichText(
                          textAlign: TextAlign.center,
                          text: TextSpan(text: 'لم تتلق البريد الإلكتروني؟ تحقق من عامل تصفية البريد العشوائي الخاص بك ،',
                            style: TextStyle(
                                color: HexColor(AppColors.subTextColor),
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                fontFamily: Const.appFont
                            ),
                            children: [
                              TextSpan(
                                onEnter: (va) {print(va);},
                                text: 'جرب عنوان بريد إلكتروني آخر',
                                style: TextStyle(
                                    color: HexColor(AppColors.blackColor),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w700,
                                    fontFamily: Const.appFont
                                ),),
                            ]),),
                        onTap: () => Get.offAndToNamed(Routes.forgetPassword),
                      ),
                    ),
                  ],
                ),),
          ),
        ],
      ),
    );
  }
}
