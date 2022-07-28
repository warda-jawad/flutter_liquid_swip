import 'dart:convert';

import 'package:expectations/api/api_requests.dart';
import 'package:expectations/model/boarding.dart';
import 'package:expectations/routes/routes.dart';
import 'package:expectations/shared/components/constants.dart';
import 'package:expectations/utils/app_helper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BoardingsController extends GetxController {
  RxBool isLast = false.obs;

  late Boarding boarding;
  List<BoardingData> listBoardings = [];

  @override
  void onInit() {
    ApiRequests.fetchBoardings()
        .then((value) => listBoardings.addAll(value!.data!));
    super.onInit();
  }

  void goToLogin() {
    // Get.offAndToNamed("/started");
    AppHelper.saveAppData(key: Const.KEY_BOARDING, value: true)
        .then((value) => {if (value) Get.offAndToNamed(Routes.started)});
  }


}
