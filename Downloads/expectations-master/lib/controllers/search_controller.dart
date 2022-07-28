import 'dart:convert';

import 'package:expectations/api/api_requests.dart';
import 'package:expectations/model/search.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SearchController extends GetxController{

  List<SearchData> listSearchs = [];
  late TextEditingController searchController;
  IconData clearIcon = CupertinoIcons.clear_thick_circled;

  @override
  void onInit(){
    searchController = TextEditingController();
    super.onInit();
  }

  @override
  void dispose(){
    searchController.dispose();
    super.dispose();
  }

  void clearText(){
    searchController.clear();
    update();
  }
  
  void search({required String word}){
    ApiRequests.search(word: word)
        .then((value) {
      listSearchs.addAll(value!.data!);
      update();
    });
  }
}