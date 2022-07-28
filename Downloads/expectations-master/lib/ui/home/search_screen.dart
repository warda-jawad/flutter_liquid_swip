import 'package:expectations/controllers/search_controller.dart';
import 'package:expectations/model/search.dart';
import 'package:expectations/routes/routes.dart';
import 'package:expectations/shared/components/constants.dart';
import 'package:expectations/shared/style/colors.dart';
import 'package:expectations/utils/app_helper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hex_color/flutter_hex_color.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class SearchScreen extends GetView<SearchController> {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SearchController>(builder: (con) => Scaffold(
      body: Column(
        children: [
          Container(
            height: 120,
            decoration: BoxDecoration(
                color: HexColor(AppColors.defualtColor),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(24),
                    bottomRight: Radius.circular(24))),
            child: Container(
              margin: EdgeInsets.only(top: 25),
              child: Row(
                children: [
                  SizedBox(width: 20),
                  InkWell(
                      child: SvgPicture.asset('assets/icons/back.svg'),
                      onTap: () => Get.offAndToNamed(Routes.home)),
                  Expanded(
                    child: Text(
                      textAlign: TextAlign.center,
                      'البحث',
                      style: TextStyle(
                          color: HexColor(AppColors.whiteColor),
                          fontSize: 22,
                          fontWeight: FontWeight.w500,
                          fontFamily: Const.appFont),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            alignment: Alignment.centerRight,
            margin: EdgeInsets.only(left: 16, right: 16, top: 20),
            child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: GetBuilder<SearchController>(
                  builder: (controller) => TextFormField(
                    controller: controller.searchController,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                        hintText: 'ابحث هنا.......',
                        hintStyle: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            fontFamily: Const.appFont),
                        prefix: Icon(CupertinoIcons.search),
                        suffixIcon: IconButton(
                          icon: Icon(controller.clearIcon),
                          onPressed: () => controller.clearText(),
                        )),
                    onChanged: (value) => controller.search(word: value),
                  ),
                )),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(
                  width: 1,
                  style: BorderStyle.solid,
                  color: HexColor(AppColors.blackColor)),
            ),
          ),
          Expanded(
            child: ListView.builder(
                physics: BouncingScrollPhysics(),
                itemCount: controller.listSearchs.length,
                itemBuilder: (context, index) =>
                    buildSearchItem(controller.listSearchs[index])),
          )
        ],
      ),
    ));
  }

  Widget buildSearchItem(SearchData search) => Container(
    width: double.infinity,
    height: 160,
    margin: EdgeInsets.symmetric(horizontal: 4, vertical: 8),
    child: Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        // side: BorderSide(color: Colors.black),
        borderRadius: BorderRadius.all(Radius.circular(14)),
      ),
      child: Stack(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            child: Row(
              children: [
                Text('${search.periodical!.name!}',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  fontFamily: Const.appFont
                ),),
                Spacer(),
                Text('${search.leagueRound}',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      fontFamily: Const.appFont
                  ),),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20),
            child: Padding(
              padding: const EdgeInsets.only(top: 30, left: 8, right: 8),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Column(
                      children: [
                        Container(
                          width: 50,
                          height: 50,
                          margin: EdgeInsets.symmetric(horizontal: 16),
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage(
                                      '${Const.baseImagesUrl}${AppHelper.getTeamImage(search.teamHome!.image!)}'))),
                        ),
                        Text(
                          '${search.teamHome!.name!}',
                          style: TextStyle(
                              color: HexColor(AppColors.blackColor),
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              fontFamily: Const.appFont),
                        ),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 30),
                      child: Row(
                        children: [
                          search.result1 != null ? Container(
                            width: 30,
                            height: 30,
                            margin: EdgeInsets.symmetric(horizontal: 16),
                            alignment: Alignment.center,
                            child: Text(
                              '${search.result1 == null ? '' : search.result1}',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            decoration: BoxDecoration(
                                border: Border.all(
                                  color: HexColor(AppColors.defualtColor),
                                ),
                                borderRadius: BorderRadius.circular(50)),
                          ) : Container(
                            width: 30,
                            height: 30,
                            margin: EdgeInsets.symmetric(horizontal: 16),
                            alignment: Alignment.center,
                            child: Text(
                              '',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            decoration: BoxDecoration(
                                border: Border.all(
                                  color: HexColor(AppColors.whiteColor),
                                ),
                                borderRadius: BorderRadius.circular(50)),
                          ),
                          Container(
                            padding: EdgeInsets.all(6),
                            margin: EdgeInsets.symmetric(horizontal: 16),
                            height: double.infinity,
                            alignment: Alignment.center,
                            child: Text(
                                '${AppHelper.formatTime(search.timing!)}',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: HexColor(AppColors.defualtColor),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: Const.appFont)),
                          ),
                          search.result2 != null ? Container(
                            width: 30,
                            height: 30,
                            margin: EdgeInsets.symmetric(horizontal: 16),
                            alignment: Alignment.center,
                            child: Text(
                              '${search.result2 == null ? '' : search.result2}',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            decoration: BoxDecoration(
                                border: Border.all(
                                  color: HexColor(AppColors.defualtColor),
                                ),
                                borderRadius: BorderRadius.circular(50)),
                          ) : Container(
                            width: 30,
                            height: 30,
                            margin: EdgeInsets.symmetric(horizontal: 16),
                            alignment: Alignment.center,
                            child: Text(
                              '',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            decoration: BoxDecoration(
                                border: Border.all(
                                  color: HexColor(AppColors.whiteColor),
                                ),
                                borderRadius: BorderRadius.circular(50)),
                          ),
                        ],
                      ),
                    ),
                    Column(
                      children: [
                        Container(
                          width: 50,
                          height: 50,
                          margin: EdgeInsets.symmetric(horizontal: 16),
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage(
                                      '${Const.baseImagesUrl}${AppHelper.getTeamImage(search.teamAway!.image!)}'))),
                        ),
                        Text(
                          '${search.teamAway!.name!}',
                          style: TextStyle(
                              color: HexColor(AppColors.blackColor),
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              fontFamily: Const.appFont),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
