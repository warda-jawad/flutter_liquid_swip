
import 'package:expectations/controllers/favorite_controller.dart';
import 'package:expectations/model/favorite.dart';
import 'package:expectations/shared/components/constants.dart';
import 'package:expectations/shared/style/colors.dart';
import 'package:expectations/utils/app_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hex_color/flutter_hex_color.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class FavoritePageOld extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<FavoriteController>(builder: (controller) {
      controller.fetchFavorites();
      return Scaffold(
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
                    Expanded(
                      child: Text(
                        textAlign: TextAlign.center,
                        'المفضلة',
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
            Expanded(
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Obx(() => controller.isLoading == true ? Center(child: CircularProgressIndicator(),) : Container()),
                  ListView.builder(
                      physics: BouncingScrollPhysics(),
                      itemCount: controller.listFavorites.length,
                      itemBuilder: (context, index) => FavoritesItem(favorite: controller.listFavorites[index]))
                ],
              ),
            ),
          ],
        ),
      );
    });
  }
}

class FavoritesItem extends StatelessWidget {

  FavoriteData? favorite;

  FavoritesItem({required this.favorite});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<FavoriteController>(builder: (controller) => Container(
      width: double.infinity,
      height: 150,
      margin: EdgeInsets.symmetric(horizontal: 4, vertical: 8),
      child: Card(
        elevation: 4,
        shape: RoundedRectangleBorder(
          // side: BorderSide(color: Colors.black),
          borderRadius: BorderRadius.all(Radius.circular(14)),
        ),
        child: Stack(
          alignment: Alignment.topLeft,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 8, left: 8),
              child: InkWell(
                child: SvgPicture.asset('assets/icons/addedd_fav_red.svg'),
                onTap: () => controller.removeFromFavorite(),
              ),
            ),
            Padding(
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
                                      '${Const.baseImagesUrl}${AppHelper.getTeamHomeImage(favorite!.match!)}'))),
                        ),
                        Text(
                          '${favorite!.match!.teamHome!.name!}',
                          style: TextStyle(
                              color: HexColor(AppColors.blackColor),
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              fontFamily: Const.appFont),
                        ),
                      ],
                    ),
                    // SizedBox(width: 16),
                    favorite!.match!.result1 != null ? Container(
                      width: 30,
                      height: 30,
                      margin: EdgeInsets.symmetric(horizontal: 8),
                      alignment: Alignment.center,
                      child: Text(
                        '${favorite!.match!.result1}',
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
                      margin: EdgeInsets.symmetric(horizontal: 8),
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
                    // SizedBox(width: 16),
                    Container(
                      padding: EdgeInsets.all(6),
                      margin: EdgeInsets.symmetric(horizontal: 14),
                      height: double.infinity,
                      alignment: Alignment.center,
                      child: Column(
                        children: [
                          Container(
                            child: Text('لم تبدأ',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: HexColor(AppColors.subTextColor),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: Const.appFont)),
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: HexColor(AppColors.greyColor2)),
                                borderRadius: BorderRadius.circular(20)),
                          ),
                          Text('${AppHelper.formatMatchTime(favorite!.match!)}',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: HexColor(AppColors.defualtColor),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: Const.appFont)),
                          Text('${AppHelper.formatMatchDate(favorite!.match!)}',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: HexColor(AppColors.subTextColor),
                                  fontSize: 11,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: Const.appFont)),
                        ],
                      ),
                    ),
                    // SizedBox(width: 16),
                    favorite!.match!.result2 != null ? Container(
                      width: 30,
                      height: 30,
                      margin: EdgeInsets.symmetric(horizontal: 8),
                      alignment: Alignment.center,
                      child: Text(
                        '${favorite!.match!.result2}',
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
                      margin: EdgeInsets.symmetric(horizontal: 8),
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
                    // SizedBox(width: 16),
                    Column(
                      children: [
                        Container(
                          width: 50,
                          height: 50,
                          margin: EdgeInsets.only(right: 16, left: 28),
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage(
                                      '${Const.baseImagesUrl}${AppHelper.getTeamAwayImage(favorite!.match!)}'))),
                        ),
                        Text(
                          '${favorite!.match!.teamAway!.name!}',
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
          ],
        ),
      ),
    ));
  }
}

