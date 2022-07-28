import 'dart:convert';

import 'package:expectations/api/api_requests.dart';
import 'package:expectations/model/favorite_match.dart';
import 'package:expectations/model/user_expectations.dart';
import 'package:expectations/model/match.dart';
import 'package:expectations/utils/app_helper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ExpectionsPageController extends GetxController {
  List<ExpectationData> listExpectations = [];

  @override
  void onInit() {
    super.onInit();
  }

  void fetchExpectations(){
    ApiRequests.fetchExpectations(token: AppHelper.getCurrentUserToken())
        .then((value) {
      listExpectations.addAll(value!.data!);
      update();
    });
  }

  Icon checkIsMatchInFavorite(Match match){
    if(!match.favorites!.isEmpty) {
      for(FavoriteMatch fav in match.favorites!){
        if (fav.userId == AppHelper.getUserId()){
          print('CurrentUserID: ${AppHelper.getUserId()}');
          print('UserID: ${fav.userId}');
          // update();
          return Icon(CupertinoIcons.heart_fill, color: Colors.redAccent);
        }else{
          // update();
          return Icon(CupertinoIcons.heart, color: Colors.redAccent);
        }
      }
    }else{
      // update();
      return Icon(CupertinoIcons.heart, color: Colors.redAccent);
    }
    update();
    return Icon(CupertinoIcons.heart, color: Colors.redAccent);
  }

  void addRemoveFavorite(Match match) {
    if(!match.favorites!.isEmpty){
      removeFromFavorite(matchId: match.id!);
      checkIsMatchInFavorite(match);
      // for(FavoriteMatch fav in match.favorites!){
      //   if(fav.userId == AppHelper.getUserId()) {
      //
      //   }else {
      //
      //   }
      // }
    }else{
      addToFavorite(matchId: match.id!);
      checkIsMatchInFavorite(match);
    }
  }

  void addToFavorite({required int matchId}) {
    ApiRequests.addToFavorite(
        token: AppHelper.getCurrentUserToken(), matchId: matchId)
        .then((value) {
      update();
      Get.snackbar('إضافة إلى المفضلة', 'تم إضافة المبارة إلى المفضلة');
    });
  }

  void removeFromFavorite({required int matchId}) {
    ApiRequests.removeFromFavorite(
        token: AppHelper.getCurrentUserToken(), matchId: matchId)
        .then((value) {
      update();
      Get.snackbar('حذف من المفضلة', 'تم حذف المبارة إلى المفضلة');
    });
  }
}
