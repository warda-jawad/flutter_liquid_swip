import 'dart:convert';

import 'package:expectations/api/api_requests.dart';
import 'package:expectations/controllers/expection_controller.dart';
import 'package:expectations/model/winners.dart';
import 'package:expectations/ui/match/winners_screen.dart';
import 'package:get/get.dart';

class WinnersController extends GetxController{

  List<WinnersData> listWinners = [];
  ExpectionController con = Get.find();

  @override
  void onInit(){
    // print("MATCHID: $matchId");
    print("ID: ${con.screen.match.id}");
    fetchWinners(matchId: con.screen.match.id!);
    super.onInit();
  }

  void fetchWinners({required int matchId}){
    ApiRequests.fetchWinners(matchId: matchId).then((value) {
      listWinners.addAll(value!.data!);
      print('fetchWinners: ${listWinners.length}');
      print('fetchWinners: ${jsonEncode(listWinners)}');
    });
  }

}