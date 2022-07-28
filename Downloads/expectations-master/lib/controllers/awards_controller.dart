import 'dart:convert';

import 'package:expectations/api/api_requests.dart';
import 'package:expectations/controllers/expection_controller.dart';
import 'package:expectations/model/awards.dart';
import 'package:expectations/model/winners.dart';
import 'package:expectations/ui/match/awards_screen.dart';
import 'package:expectations/ui/match/winners_screen.dart';
import 'package:get/get.dart';

class AwardsController extends GetxController{

  // AwardsScreen screen = Get.arguments;
  List<AwardData> listAwards = [];
  ExpectionController con = Get.find();

  @override
  void onInit(){
    print("ID: ${con.screen.match.id}");
    print("Befor Super");
    fetchAwards(matchId: con.screen.match.id!);
    super.onInit();
    print("After Super");
    // fetchAwards(matchId: screen.matchId);
  }

  void fetchAwards({required int matchId}){
    ApiRequests.fetchAwards(matchId: matchId).then((value) {
      listAwards.addAll(value!.data!);
      // print('fetchWinners: ${listAwards.length}');
      // print('fetchWinners: ${jsonEncode(listAwards)}');
    });
  }

}