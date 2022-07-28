import 'package:expectations/api/api_requests.dart';
import 'package:expectations/model/notifications.dart';
import 'package:get/get.dart';

class NotificationsController extends GetxController{

  List<NotificationData> listNotifications = [];

  @override
  void onInit(){
    super.onInit();
  }

  void fetchNotifications(){
    ApiRequests.fetchNotifications().then((value) => listNotifications.addAll(value!.data!));
  }
}