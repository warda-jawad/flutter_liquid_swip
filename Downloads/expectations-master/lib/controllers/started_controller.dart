import 'dart:convert';

import 'package:expectations/api/api_requests.dart';
import 'package:expectations/model/boarding.dart';
import 'package:get/get.dart';

class StartedController extends GetxController {

  List<BoardingData> listBoardings = [];
  RxString title = ''.obs, description = ''.obs;

  @override
  void onInit() {
    // getBoardings();
    super.onInit();
  }

  void getBoardings() {
    // ApiRequests.getData(endPoint: 'setting')
    //     .then((value)  {
    //   Boarding boarding = Boarding.fromJson(value.data);
    //
    //   for(int x = 0; x < boarding.data!.length; x++){
    //     if(x == 3){
    //       listBoardings.addAll(boarding.data!);
    //       title.value = listBoardings[x].title!;
    //       description.value = listBoardings[x].description!;
    //       print("Index: $x title: ${listBoardings[x].title}");
    //       print("Index: $x description: ${listBoardings[x].description}");
    //     }
    //   }
    //
    // }).catchError((error) {
    //   print('StartedController: catchError: $error');
    // });
  }
}