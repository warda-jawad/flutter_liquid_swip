import 'package:expectations/controllers/boarding_controller.dart';
import 'package:get/get.dart';

class BoardingBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => BoardingsController());
  }
}