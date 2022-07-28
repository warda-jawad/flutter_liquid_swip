import 'package:expectations/api/api_requests.dart';
import 'package:expectations/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class ForgetPasswordController extends GetxController{

  IconData clearDataIcon = Icons.clear;

  RxBool isLoading = false.obs;
  late GlobalKey<FormState> formKey = GlobalKey<FormState>();
  late TextEditingController emailController = TextEditingController();

  @override
  void omInit(){
    formKey = GlobalKey<FormState>();
    emailController = TextEditingController();
    super.onInit();
  }

  @override
  void dispose(){
    formKey.currentState!.dispose();
    emailController.dispose();
    super.dispose();
  }

  void clearData(){
    emailController.clear();
    update();
  }

  void forgetPassword(){
    bool isValidate = formKey.currentState!.validate();
    if(isValidate){
      isLoading(true);
      ApiRequests.forgetpassword(email: emailController.text)
      .then((value) {
        // isLoading(true);
        Get.snackbar('ـم الإرسال', value!.data!);
        Get.toNamed(Routes.checkEmail);
        isLoading(false);
      })
      .catchError((error) {
        isLoading(false);
        print('catchError: $error');
      });
    }else
      isLoading(false);
  }

}