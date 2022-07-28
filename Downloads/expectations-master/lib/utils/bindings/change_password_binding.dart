import 'package:expectations/controllers/reset_password_controller.dart';
import 'package:get/get.dart';

class ResetPasswordBinding implements Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => ChangePasswordController());
  }

}