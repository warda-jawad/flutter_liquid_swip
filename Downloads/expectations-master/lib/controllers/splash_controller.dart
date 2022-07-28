import 'package:expectations/routes/routes.dart';
import 'package:expectations/shared/components/constants.dart';
import 'package:expectations/utils/app_helper.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  bool? boarding = AppHelper.getAppData(key: Const.KEY_BOARDING);

  @override
  void onInit() {
    getFirebaseToken();
    startApp();
    super.onInit();
  }

  Future startApp() {
    // Future.delayed(Duration(seconds: 8), () => Get.offAndToNamed('/boarding'));
    if (boarding != null) {
      if (AppHelper.getUserToken(key: Const.KEY_USER_TOKEN) != null)
        return Future.delayed(
            Duration(seconds: 8), () => Get.offAndToNamed(Routes.home));
      else
        return Future.delayed(
            Duration(seconds: 8), () => Get.offAndToNamed(Routes.started));
    } else
      return Future.delayed(
          Duration(seconds: 8), () => Get.offAndToNamed(Routes.boarding));
  }

  void getFirebaseToken() {
    FirebaseMessaging.instance.getToken().then((newToken) {
      print("Token: $newToken");
      AppHelper.saveUserToken(key: Const.KEY_FIREBASE_TOKEN, token: newToken!);
    });
    update();
  }
}
