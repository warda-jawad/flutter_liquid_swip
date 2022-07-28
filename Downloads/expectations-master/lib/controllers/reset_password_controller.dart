import 'package:expectations/api/api_requests.dart';
import 'package:expectations/routes/routes.dart';
import 'package:expectations/utils/app_helper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChangePasswordController extends GetxController{

  RxBool isLoading = false.obs;
  late GlobalKey<FormState> formKey;
  late TextEditingController oldPassController;
  late TextEditingController newPassController;
  late TextEditingController confirmPassController;

  bool isVisibleOldPass = true;
  bool isVisibleNewPass = true;
  bool isVisibleConfirmPass = true;

  IconData visibleOldPassIcon = Icons.visibility;
  IconData visibleNewPassIcon = Icons.visibility;
  IconData visibleConfirmPassIcon = Icons.visibility;

  @override
  void onInit(){
    formKey = GlobalKey<FormState>();
    oldPassController = TextEditingController();
    newPassController = TextEditingController();
    confirmPassController = TextEditingController();
    super.onInit();
  }

  @override
  void dispose(){
    formKey.currentState!.dispose();
    oldPassController.dispose();
    newPassController.dispose();
    confirmPassController.dispose();
    super.dispose();
  }

  void visibleOldPassword() {
    isVisibleOldPass = !isVisibleOldPass;
    visibleOldPassIcon = isVisibleOldPass ? Icons.visibility : Icons.visibility_off;
    update();
  }

  void visibleNewPassword() {
    isVisibleNewPass = !isVisibleNewPass;
    visibleNewPassIcon = isVisibleNewPass ? Icons.visibility : Icons.visibility_off;
    update();
  }

  void visibleConfirmPassword() {
    isVisibleConfirmPass = !isVisibleConfirmPass;
    visibleConfirmPassIcon =
    isVisibleConfirmPass ? Icons.visibility : Icons.visibility_off;
    update();
  }

  void resetPassword(){
    bool isValidate = formKey.currentState!.validate();
    if(isValidate){
      isLoading(true);
      ApiRequests.resetPassword(
          token: AppHelper.getCurrentUserToken(),
          oldPassword: oldPassController.text,
          newPassword: newPassController.text,
          confirmPassword: confirmPassController.text)
      .then((value) {
        print('Old: ${value.code}');
          Get.snackbar('تغيير كلمة المرور', 'تم إعادة تعيين كلمة المرور');
          Get.offAndToNamed(Routes.home);
          isLoading(false);
      })
      .catchError((error) {
        Get.snackbar(
            'خطأ في تغيير كلمة المرور', 'كلمة المرور القديمة غير صحيحة');
        print('catchError: $error');
        isLoading(false);
      });
    }else
      isLoading(false);
  }

}