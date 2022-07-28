import 'package:expectations/controllers/edit_profile_controller.dart';
import 'package:expectations/routes/routes.dart';
import 'package:expectations/shared/components/components.dart';
import 'package:expectations/shared/components/constants.dart';
import 'package:expectations/shared/style/colors.dart';
import 'package:expectations/utils/app_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hex_color/flutter_hex_color.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class EditProfileScreen extends GetView<EditProfileController> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: controller.formKey,
        child: Column(
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
                      onTap: () => Get.offAndToNamed(Routes.profile)),
                  Spacer(),
                  Text(
                    'تعديل الحساب',
                    style: TextStyle(
                        color: HexColor(AppColors.whiteColor),
                        fontSize: 22,
                        fontWeight: FontWeight.w500,
                        fontFamily: Const.appFont),
                  ),
                  Spacer(),
                  SvgPicture.asset('assets/icons/done.svg'),
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
                      width: 80,
                      height: 80,
                      margin: EdgeInsets.only(top: 30, right: 24),
                      child: CircleAvatar(
                          backgroundColor: Colors.transparent,
                          backgroundImage: NetworkImage('https://i.postimg.cc/B6GcTk8F/default-avatar2.png')),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          border: Border.all(color: HexColor(AppColors.defualtColor))
                      ),
                    ),
                    Container(
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
                                controller: controller.nameController,
                                keyboardType: TextInputType.text,
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
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 20, top: 30),
                      alignment: Alignment.centerRight,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('عنوان البريد الإلكتروني',
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
                                controller: controller.emailController,
                                  keyboardType: TextInputType.emailAddress,
                                  validator: (value) => AppHelper.validateEmail(email: value)
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
                                  validator: (value) =>AppHelper.validatePhone(phone: value!)
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
                          Text('العنوان',
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
                                controller: controller.addressController,
                                  keyboardType: TextInputType.streetAddress,
                                  validator: (value) => AppHelper.validateAddress(address: value!)
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
                          Text('تاريخ الميلاد',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                fontFamily: Const.appFont
                            ),),
                          InkWell(
                            child: Container(
                              margin: EdgeInsets.only(left: 20, top: 8),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 8.0),
                                child: TextFormField(
                                  controller: controller.birthDateController,
                                    keyboardType: TextInputType.datetime,
                                    enabled: false,
                                    validator: (value) => AppHelper.validatePassword(password: value!)
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
                            onTap: () async {
                              DateTime? newDate = await showDatePicker(
                                  context: context,
                                  initialDate: controller.date,
                                  firstDate: DateTime(1900),
                                  lastDate: DateTime(2100));
                              if (newDate == null) return;
                              controller.date = newDate;
                              int year = controller.date.year;
                              int month = controller.date.month;
                              int day = controller.date.day;
                              controller.birthDateController.text =
                              '$year-$month-$day';
                            },
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
                          Text('الميول الرياضي',
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
                                controller: controller.sportsController,
                                  keyboardType: TextInputType.text,
                                  decoration: InputDecoration(
                                    hintText:
                                    'الميول الرياضي',
                                  ),
                                  validator: (value) {}
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
                  ],
                ),
              ),
            ),
            Column(
              children: [
                Obx(() => controller.isLoading == true ? CircularProgressIndicator() : Container()),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  child: CustomButton(
                      text: 'حفظ',
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                      fontfamily: Const.appFont,
                      radius: 8,
                      background: HexColor(AppColors.defualtColor),
                      click: () => controller.editProfile()),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
