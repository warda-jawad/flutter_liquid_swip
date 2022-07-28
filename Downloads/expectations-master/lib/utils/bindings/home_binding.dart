import 'package:expectations/controllers/awards_controller.dart';
import 'package:expectations/controllers/contact_us_controller.dart';
import 'package:expectations/controllers/edit_profile_controller.dart';
import 'package:expectations/controllers/expection_controller.dart';
import 'package:expectations/controllers/expections_page_controller.dart';
import 'package:expectations/controllers/favorite_controller.dart';
import 'package:expectations/controllers/home_page_controller.dart';
import 'package:expectations/controllers/notifications_controller.dart';
import 'package:expectations/controllers/profile_controller.dart';
import 'package:expectations/controllers/profile_page_controller.dart';
import 'package:expectations/controllers/search_controller.dart';
import 'package:expectations/controllers/winners_controller.dart';
import 'package:get/get.dart';

class HomeBinding extends Bindings{

  @override
  void dependencies() {

    Get.put(SearchController());
    // Get.put(HomePageController());
    // Get.put(ProfilePageController());
    // Get.put(ExpectionsPageController());
    // Get.put(FavoriteController());
    Get.put(NotificationsController());
    // Get.put(ProfileController());
    Get.put(EditProfileController());
    Get.put(ContactUsController());
    // Get.put(AwardsController());
    // Get.put(WinnersController());
  }
}