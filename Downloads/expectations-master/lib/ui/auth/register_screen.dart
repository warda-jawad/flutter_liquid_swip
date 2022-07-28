
import 'package:expectations/controllers/register_controller.dart';
import 'package:expectations/shared/components/components.dart';
import 'package:expectations/shared/components/constants.dart';
import 'package:expectations/shared/style/colors.dart';
import 'package:expectations/utils/app_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hex_color/flutter_hex_color.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class RegisterScreen extends GetView<RegisterController> {
  RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Colors.black));

    // controller.nameController.text = 'Ahmed Wasfe';
    // controller.birthDateController.text = '1995-02-01';
    // controller.emailController.text = 'ahmet.mandil@gmail.com';
    // controller.passwordController.text = '123456';
    // controller.confirmPasswordController.text = '123456';
    // controller.addressController.text = 'Gaza';
    // controller.phoneController.text = '0592435704';
    // controller.sportsController.text = 'Barcelona';

    return Scaffold(
      body: Form(
        key: controller.formKey,
        // autovalidateMode: AutovalidateMode.onUserInteraction,
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Center(
            child: Container(
              margin: EdgeInsets.only(bottom: 50),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 65),
                    child: Image.asset(
                      'assets/icons/logo.png',
                      width: 133,
                      height: 121.6,
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    "إنشاء حساب",
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                        fontFamily: '${Const.appFont}'),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: Text('يرجى ملء هذا النموذج لإنشاء حسابك!',
                        style: TextStyle(
                          color: HexColor(AppColors.subTextColor),
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          fontFamily: '${Const.appFont}',
                        ),
                        textAlign: TextAlign.center),
                  ),
                  SizedBox(height: 20),
                  ////////////////////////////////////////////////////////////////////////////////////////////
                  Container(
                    height: 350,
                    child: SingleChildScrollView(
                      physics: BouncingScrollPhysics(),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 24),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "الإسم كاملا",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500,
                                      fontFamily: '${Const.appFont}'),
                                ),
                                SizedBox(height: 8),
                                Container(
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 8.0),
                                    child: TextFormField(
                                      controller: controller.nameController,
                                      keyboardType: TextInputType.text,
                                      decoration: InputDecoration(
                                        hintText:
                                            'الرجاء كتابة الاسم كاملاً (الاسم الأول واسم العائلة)',
                                      ),
                                      validator: (value) =>
                                          AppHelper.validateName(name: value!),
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
                                  "تاريخ الميلاد",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500,
                                      fontFamily: '${Const.appFont}'),
                                ),
                                SizedBox(height: 8),
                                InkWell(
                                  child: Container(
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 8.0),
                                      child: TextFormField(
                                        controller:
                                            controller.birthDateController,
                                        keyboardType: TextInputType.datetime,
                                        enabled: false,
                                        decoration: InputDecoration(
                                          hintText: 'إختار عمرك',
                                          enabled: true,
                                          suffixIcon: IconButton(
                                            icon: SvgPicture.asset(
                                                'assets/icons/icon_date.svg'),
                                            onPressed: () {},
                                          ),
                                        ),
                                        validator: (value) =>
                                            AppHelper.validateDateOfBirth(
                                                dateOfBirth: value),
                                      ),
                                    ),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      border: Border.all(
                                          width: 1,
                                          style: BorderStyle.solid,
                                          color:
                                              HexColor(AppColors.blackColor)),
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
                          SizedBox(height: 14),
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
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 8.0),
                                    child: TextFormField(
                                      controller: controller.emailController,
                                      keyboardType: TextInputType.emailAddress,
                                      decoration: InputDecoration(
                                        hintText: 'قم بإدخال البريد الإلكتروني',
                                      ),
                                      validator: (value) => AppHelper
                                          .validateEmail(email: value),
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
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 8.0),
                                    child: GetBuilder<RegisterController>(
                                      builder: (controller) => TextFormField(
                                        controller:
                                            controller.passwordController,
                                        keyboardType:
                                            TextInputType.visiblePassword,
                                        obscureText: controller.isVisiblePass,
                                        decoration: InputDecoration(
                                            hintText: 'أدخل كلمة المرور',
                                            suffixIcon: IconButton(
                                              icon: Icon(
                                                  controller.visiblePassIcon),
                                              onPressed: () =>
                                                  controller.visiblePassword(),
                                            )),
                                        validator: (value) => AppHelper
                                            .validatePassword(password: value!),
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
                                  "تأكيد كلمة المرور",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500,
                                      fontFamily: '${Const.appFont}'),
                                ),
                                SizedBox(height: 8),
                                Container(
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 8.0),
                                    child: GetBuilder<RegisterController>(
                                      builder: (controller) => TextFormField(
                                        controller: controller
                                            .confirmPasswordController,
                                        keyboardType:
                                            TextInputType.visiblePassword,
                                        obscureText:
                                            controller.isVisibleConfirmPass,
                                        decoration: InputDecoration(
                                          hintText: 'تأكيد كلمة المرور',
                                          suffixIcon: IconButton(
                                            icon: Icon(controller
                                                .visibleConfirmPassIcon),
                                            onPressed: () => controller
                                                .visibleConfirmPassword(),
                                          ),
                                        ),
                                        validator: (value) =>
                                            AppHelper.validateConfirmPassword(
                                                password: controller
                                                    .passwordController.text,
                                                conformPassword: value!),
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
                                  "العنوان",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500,
                                      fontFamily: '${Const.appFont}'),
                                ),
                                SizedBox(height: 8),
                                Container(
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 8.0),
                                    child: TextFormField(
                                      controller: controller.addressController,
                                      keyboardType: TextInputType.streetAddress,
                                      decoration: InputDecoration(
                                        hintText: 'قم بإدخال عنوانك المفضل',
                                      ),
                                      validator: (value) => AppHelper
                                          .validateAddress(address: value!),
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
                                  "رقم الهاتف",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500,
                                      fontFamily: '${Const.appFont}'),
                                ),
                                SizedBox(height: 8),
                                Container(
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 8.0),
                                    child: TextFormField(
                                      controller: controller.phoneController,
                                      keyboardType: TextInputType.phone,
                                      decoration: InputDecoration(
                                        hintText: 'قم بإدخال رقم هاتفك',
                                      ),
                                      validator: (value) => AppHelper
                                          .validatePhone(phone: value!),
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
                                  "الميول الرياضي",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500,
                                      fontFamily: '${Const.appFont}'),
                                ),
                                SizedBox(height: 8),
                                Container(
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 8.0),
                                    child: TextFormField(
                                      controller: controller.sportsController,
                                      keyboardType: TextInputType.text,
                                      decoration: InputDecoration(
                                        hintText: 'قم بإدخال ميولك الرياضي',
                                      ),
                                      validator: (value) {},
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
                  ////////////////////////////////////////////////////////////////////////////////////////////
                  SizedBox(height: 18),
                  Obx(() => controller.isLoading == true ? CircularProgressIndicator() : Container()),
                  Container(
                    margin: EdgeInsets.only(top: 20, left: 30, right: 30),
                    child: CustomButton(
                      text: 'إنشاء حساب',
                      textColor: HexColor(AppColors.whiteColor),
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      fontfamily: '${Const.appFont}',
                      radius: 8,
                      background: HexColor(AppColors.defualtColor),
                      click: () => controller.createAccount(),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'لدي حساب بالفعل ',
                          style: TextStyle(
                              color: HexColor(AppColors.subTextColor),
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              fontFamily: Const.appFont),
                        ),
                        InkWell(
                          child: Text(
                            'تسجيل الدخول',
                            style: TextStyle(
                                color: HexColor(AppColors.blackColor),
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                fontFamily: Const.appFont),
                          ),
                          onTap: () => Get.offAllNamed('/login'),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
