import 'package:expectations/controllers/winners_controller.dart';
import 'package:get/get.dart';

class WinnersBinding implements Bindings{
  @override
  void dependencies() {
    Get.put(WinnersController());
  }
}