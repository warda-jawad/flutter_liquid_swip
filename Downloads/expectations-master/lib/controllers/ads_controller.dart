import 'dart:convert';

import 'package:expectations/api/api_requests.dart';
import 'package:expectations/model/ads.dart';
import 'package:get/get.dart';

class AdsController extends GetxController{
  var TAG = "AdsController";

  List<AdsData> listAds = [];

  @override
  void onInit(){
    fetchAds();
    super.onInit();
  }

  void fetchAds() {
    ApiRequests.fetchAds().then((value) {
      listAds.addAll(value!.data!);
      print("$TAG fetchAds: ${listAds.length}");
      print("$TAG fetchAds: ${jsonEncode(listAds)}");
    });
  }

}