import 'package:expectations/controllers/forget_password_controller.dart';
import 'package:get/get.dart';

class ForgetPasswordBinding implements Bindings{
  @override
  void dependencies() {
    Get.put(ForgetPasswordController());
  }
}