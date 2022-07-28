import 'package:expectations/controllers/awards_controller.dart';
import 'package:get/get.dart';

class AwardsBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AwardsController());
  }
}
