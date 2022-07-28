import 'package:expectations/controllers/ads_controller.dart';
import 'package:expectations/controllers/boarding_controller.dart';
import 'package:expectations/controllers/contact_us_controller.dart';
import 'package:expectations/controllers/edit_profile_controller.dart';
import 'package:expectations/controllers/home_controller.dart';
import 'package:expectations/controllers/notifications_controller.dart';
import 'package:expectations/controllers/profile_controller.dart';
import 'package:expectations/controllers/splash_controller.dart';
import 'package:get/get.dart';

class AppBindings implements Bindings{

  @override
  void dependencies() {
    Get.put(SplashController());
    Get.put(BoardingsController());
    // Get.put(StartedController());
    Get.put(HomeController());
    Get.put(AdsController());
    // Get.put(SearchController());
    // Get.lazyPut(() => HomePageController());
    // Get.lazyPut(() => ProfilePageController());
    // Get.lazyPut(() => ExpectionsPageController());
    // Get.lazyPut(() => FavoriteController());
    Get.lazyPut(() => NotificationsController());
    Get.lazyPut(() => ProfileController());
    Get.lazyPut(() => EditProfileController());
    Get.lazyPut(() => ContactUsController());
    // Get.lazyPut(() => AwardsController());
    // Get.lazyPut(() => WinnersController());
  }

}