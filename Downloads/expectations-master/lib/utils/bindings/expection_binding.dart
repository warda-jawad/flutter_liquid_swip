import 'package:expectations/controllers/awards_controller.dart';
import 'package:expectations/controllers/expection_controller.dart';
import 'package:get/get.dart';

class ExpectionBinding implements Bindings {

  @override
  void dependencies() {
    Get.lazyPut(() => ExpectionController());
    Get.lazyPut(() => AwardsController());
  }
}