import 'package:expectations/api/api_requests.dart';
import 'package:expectations/routes/routes.dart';
import 'package:expectations/utils/app_helper.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class ContactUsController extends GetxController{

  RxBool isLoading = false.obs;
  late GlobalKey<FormState> formKey;
  late TextEditingController titleController;
  late TextEditingController phoneController;
  late TextEditingController descController;


  @override
  void onInit(){
    formKey = GlobalKey<FormState>();
    titleController = TextEditingController();
    phoneController = TextEditingController();
    descController = TextEditingController();
  }

  @override
  void dispose(){
    formKey.currentState!.dispose();
    titleController.dispose();
    phoneController.dispose();
    descController.dispose();
    super.dispose();
  }

  void contactUs(){
    print(titleController.text);
    bool isValidate = formKey.currentState!.validate();
    if(isValidate){
      isLoading(true);
      ApiRequests.contactUs(userId: AppHelper.getUserId(),phone: phoneController.text, title: titleController.text, description: descController.text)
          .then((value) {
            Get.snackbar('تم الإرسال', 'تم إرسال رسالة شكرا لك');
            phoneController.clear();
            titleController.clear();
            descController.clear();
        Get.toNamed(Routes.home);
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