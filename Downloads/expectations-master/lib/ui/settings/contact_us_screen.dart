import 'package:expectations/controllers/contact_us_controller.dart';
import 'package:expectations/routes/routes.dart';
import 'package:expectations/shared/components/components.dart';
import 'package:expectations/shared/components/constants.dart';
import 'package:expectations/shared/style/colors.dart';
import 'package:expectations/utils/app_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hex_color/flutter_hex_color.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class ContactUsScreen extends GetView<ContactUsController> {

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
                        onTap: () => Get.offAndToNamed(Routes.home)),
                    Expanded(
                      child: Text(
                        textAlign: TextAlign.center,
                        'تواصل معنا',
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
                      width: 100,
                      height: 100,
                      margin: EdgeInsets.only(top: 20),
                      child: CircleAvatar(
                          backgroundColor: Colors.transparent,
                          backgroundImage: AssetImage('assets/icons/logo.png')),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          border: Border.all(color: HexColor(AppColors.defualtColor))
                      ),
                    ),
                    /*Container(
                      margin: EdgeInsets.only(right: 20, top: 40),
                      alignment: Alignment.centerRight,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('الإسم كاملا',
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
                              child: TextFormField(
                                  // controller: controller.nameController,
                                  keyboardType: TextInputType.text,
                                  decoration: InputDecoration(
                                    hintText: 'اكتب اسم المستخدم الخاص بك',
                                    hintStyle: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      fontFamily: Const.appFont
                                    )
                                  ),
                                  validator: (value) => AppHelper.validateName(name: value!)
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
                    ),*/
                    Container(
                      margin: EdgeInsets.only(right: 20, top: 20),
                      alignment: Alignment.centerRight,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('رقم الهاتف',
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
                              child: TextFormField(
                                controller: controller.phoneController,
                                  keyboardType: TextInputType.phone,
                                  decoration: InputDecoration(
                                      hintText: '+666 000 000 000',
                                      hintStyle: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                          fontFamily: Const.appFont
                                      )
                                  ),
                                  validator: (value) => AppHelper.validatePhone(phone: value!)
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
                    Container(
                      margin: EdgeInsets.only(right: 20, top: 20),
                      alignment: Alignment.centerRight,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('الرسالة',
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
                              child: TextFormField(
                                controller: controller.titleController,
                                  keyboardType: TextInputType.text,
                                  decoration: InputDecoration(
                                      hintText: 'عنوان رسالتك',
                                      hintStyle: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                          fontFamily: Const.appFont
                                      )
                                  ),
                                  validator: (value) => AppHelper.validateTitle(title: value!)
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
                    Container(
                      margin: EdgeInsets.only(right: 20, top: 30),
                      alignment: Alignment.centerRight,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('الوصف',
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
                              child: TextFormField(
                                controller: controller.descController,
                                maxLines: 5,
                                  keyboardType: TextInputType.text,
                                  decoration: InputDecoration(
                                      hintText: 'اكتب رسالتك هنا ......',
                                      hintStyle: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                          fontFamily: Const.appFont
                                      )
                                  ),
                                  validator: (value) => AppHelper.validateDescription(description: value!)
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
                    SizedBox(height: 20,),
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
                              click: () => controller.contactUs()),
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
