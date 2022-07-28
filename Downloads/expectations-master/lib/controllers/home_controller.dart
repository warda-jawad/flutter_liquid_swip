import 'dart:convert';

import 'package:expectations/api/api_requests.dart';
import 'package:expectations/model/ads.dart';
import 'package:get/get.dart';

class HomeController extends GetxController{

  var navIndex = 0;

  void getCurrenNavIndex(int navIndex){
    this.navIndex = navIndex;
    update();
  }

  @override
  void onInit(){
    super.onInit();
  }


}