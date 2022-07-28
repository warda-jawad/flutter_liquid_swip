
import 'package:expectations/api/api_requests.dart';
import 'package:expectations/model/register.dart';
import 'package:expectations/routes/routes.dart';
import 'package:expectations/shared/components/constants.dart';
import 'package:expectations/utils/app_helper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterController extends GetxController {

  RxBool isLoading = false.obs;

  late GlobalKey<FormState> formKey;
  late TextEditingController nameController;
  late TextEditingController birthDateController;
  late TextEditingController emailController;
  late TextEditingController passwordController;
  late TextEditingController confirmPasswordController;
  late TextEditingController addressController;
  late TextEditingController phoneController;
  late TextEditingController sportsController;

  DateTime date = DateTime(2022, 5, 29);

  bool isVisiblePass = true;
  bool isVisibleConfirmPass = true;

  IconData visiblePassIcon = Icons.visibility;
  IconData visibleConfirmPassIcon = Icons.visibility;

  @override
  void onInit() {
    formKey = GlobalKey<FormState>();
    nameController = TextEditingController();
    birthDateController = TextEditingController();
    emailController = TextEditingController();
    passwordController = TextEditingController();
    confirmPasswordController = TextEditingController();
    addressController = TextEditingController();
    phoneController = TextEditingController();
    sportsController = TextEditingController();
    super.onInit();
  }

  @override
  dispose() {
    nameController.dispose();
    birthDateController.dispose();
    emailController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    addressController.dispose();
    phoneController.dispose();
    sportsController.dispose();
    super.dispose();
  }

  void visiblePassword() {
    isVisiblePass = !isVisiblePass;
    visiblePassIcon = isVisiblePass ? Icons.visibility : Icons.visibility_off;
    update();
  }

  void visibleConfirmPassword() {
    isVisibleConfirmPass = !isVisibleConfirmPass;
    visibleConfirmPassIcon =
    isVisibleConfirmPass ? Icons.visibility : Icons.visibility_off;
    update();
  }

  void createAccount() {
    print("createAccount");
    bool isValidate = formKey.currentState!.validate();
    if (isValidate) {
      isLoading(true);
      ApiRequests
          .createAccount(
          name: nameController.text,
          email: emailController.text,
          password: passwordController.text,
          confirmPassword: confirmPasswordController.text,
          phone: phoneController.text,
          dateOfBirth: birthDateController.text,
          address: addressController.text,
          fcmToken: AppHelper.getUserToken(key: Const.KEY_FIREBASE_TOKEN))
          .then((value) {
        if (value != null) {
          Register register = value;
          // print("RegisterController Token: ${register.data!.token}");
          // print('RegisterController User: ${jsonEncode(register)}');

          AppHelper.saveUserToken(
              key: Const.KEY_USER_TOKEN, token: value.data!.token!);
          AppHelper.saveRegisterUserData(
              key: Const.KEY_USER_DATA, registerData: value.data!);
          AppHelper.saveAppData(
              key: Const.KEY_LOGIN_REGISTER, value: Const.Value_Register);
          Get.offAndToNamed(Routes.home);
          formKey.currentState!.save();
          isLoading(false);
        } else {
          isLoading(false);
        }
      }).catchError((error) {
        isLoading(false);
        print("catchError: $error");
      });
    }else
      isLoading(false);
  }
}
