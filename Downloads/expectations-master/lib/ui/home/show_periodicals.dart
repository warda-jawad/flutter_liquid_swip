import 'package:expandable/expandable.dart';
import 'package:expectations/api/api_requests.dart';
import 'package:expectations/controllers/home_page_controller.dart';
import 'package:expectations/model/favorite_match.dart';
import 'package:expectations/model/periodicals.dart';
import 'package:expectations/routes/routes.dart';
import 'package:expectations/shared/components/constants.dart';
import 'package:expectations/shared/style/colors.dart';
import 'package:expectations/ui/match/match_expection_screen.dart';
import 'package:expectations/ui/match/match_show_expection_screen.dart';
import 'package:expectations/utils/app_helper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hex_color/flutter_hex_color.dart';
import 'package:expectations/model/match.dart';
import 'package:get/get.dart';

class ShowPeriodicals extends StatelessWidget {

  late PeriodicalsData periodicals;

  ShowPeriodicals({required this.periodicals});

  @override
  Widget build(BuildContext context) {
    // print('COUNT: ${periodicals.matchsCount}');
    return ExpandableNotifier(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Card(
            color: HexColor(AppColors.defualtColor),
            clipBehavior: Clip.antiAlias,
            child: Column(
              children: <Widget>[
                ScrollOnExpand(
                  scrollOnExpand: true,
                  scrollOnCollapse: false,
                  child: Container(
                    color: HexColor(AppColors.defualtColor),
                    child: ExpandablePanel(
                      theme: const ExpandableThemeData(
                        headerAlignment: ExpandablePanelHeaderAlignment.center,
                        // tapBodyToCollapse: true,
                        iconColor: Colors.white,
                        expandIcon: Icons.arrow_drop_up,
                        collapseIcon: Icons.arrow_drop_down,
                        iconSize: 40,
                      ),
                      header: Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            color: HexColor(AppColors.defualtColor),
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20))),
                        child: Row(
                          children: [
                            Container(
                              margin:
                              EdgeInsets.symmetric(vertical: 4, horizontal: 6),
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: periodicals.image != null
                                        ? NetworkImage(
                                        '${Const.baseImagesUrl}${periodicals.image}')
                                        : NetworkImage(
                                        'https://i.postimg.cc/s2WwRQW8/playstore.png'),
                                    fit: BoxFit.cover),
                              ),
                            ),
                            SizedBox(width: 10),
                            Text(
                              '${periodicals.name}',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: Const.appFont),
                            ),
                            Spacer(),
                            GetBuilder<HomePageController>(builder: (controller) =>  Text(
                              '${controller.checkPeriodicalsCount(periodicals.matches!.length)}',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: Const.appFont),
                            ),)
                          ],
                        ),
                      ),
                      collapsed: Container(),
                      expanded: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: periodicals.matches!.map((match) {
                          if (match != null)
                            return MatchItem(
                                periodicals: periodicals, match: match);
                          else
                            return Container();
                        }).toList(),
                      ),
                      builder: (_, collapsed, expanded) {
                        return Expandable(
                          collapsed: collapsed,
                          expanded: expanded,
                          theme: const ExpandableThemeData(crossFadePoint: 0),
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }

}

class MatchItem extends StatelessWidget {
  late PeriodicalsData periodicals;
  late Match match;

  MatchItem({required this.periodicals, required this.match});

  @override
  Widget build(BuildContext context) {
    return InkWell(
        child: Container(
          color: Colors.white,
          height: 80,
          child: Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(right: 16),
                  child: Row(
                    children: [
                      Container(
                        width: 30,
                        height: 30,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(
                                    '${Const.baseImagesUrl}${AppHelper
                                        .getTeamHomeImage(match)}'))),
                      ),
                      SizedBox(width: 10),
                      Text(
                        '${match.teamHome!.name}',
                        style: TextStyle(
                            color: HexColor(AppColors.blackColor),
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            fontFamily: Const.appFont),
                      ),
                    ],
                  ),
                ),
              ),
              Text('${AppHelper.formatMatchTime(match)}'),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(right: 24),
                  child: Row(
                    children: [
                      Container(
                        width: 30,
                        height: 30,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(
                                    '${Const.baseImagesUrl}${AppHelper
                                        .getTeamAwayImage(match)}'))),
                      ),
                      SizedBox(width: 10),
                      Text(
                        '${match.teamAway!.name}',
                        style: TextStyle(
                            color: HexColor(AppColors.blackColor),
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            fontFamily: Const.appFont),
                      ),
                      // IconButton(icon: Icon(CupertinoIcons.heart), onPressed: (){}),
                    ],
                  ),
                ),
              ),
              Container(
                child: IconButton(
                  icon: checkIsMatchInFavorite(match),
                  // match.favorites!.isEmpty
                  //     ?  Icon(CupertinoIcons.heart, color: Colors.redAccent)
                  //     : Icon(CupertinoIcons.heart_fill, color: Colors.redAccent),
                  onPressed: () => addRemoveFavorite(match),),

              ),
            ],
          ),
        ),
        onTap: () {
          if (match.result1 == null && match.result2 == null) {
            Get.toNamed(Routes.matchPrediction,
                arguments:
                ExpectionScreen(periodicals: periodicals, match: match));
          } else {
            Get.toNamed(Routes.showMatchPrediction,
                arguments: ShowExpectionScreen(
                    periodicals: periodicals, match: match));
          }
        });
  }

  Icon checkIsMatchInFavorite(Match match) {
    if (!match.favorites!.isEmpty) {
      for (FavoriteMatch fav in match.favorites!) {
        if (fav.userId == AppHelper.getUserId()) {
          print('CurrentUserID: ${AppHelper.getUserId()}');
          print('UserID: ${fav.userId}');
          // update();
          return Icon(CupertinoIcons.heart_fill, color: Colors.redAccent);
        } else {
          // update();
          return Icon(CupertinoIcons.heart, color: Colors.redAccent);
        }
      }
    } else {
      // update();
      return Icon(CupertinoIcons.heart, color: Colors.redAccent);
    }
    return Icon(CupertinoIcons.heart, color: Colors.redAccent);
  }

  void addRemoveFavorite(Match match) {
    if (!match.favorites!.isEmpty) {
      removeFromFavorite(matchId: match.id!);
      checkIsMatchInFavorite(match);
      // for(FavoriteMatch fav in match.favorites!){
      //   if(fav.userId == AppHelper.getUserId()) {
      //
      //   }else {
      //
      //   }
      // }
    } else {
      addToFavorite(matchId: match.id!);
      checkIsMatchInFavorite(match);
    }
  }

  void addToFavorite({required int matchId}) {
    ApiRequests.addToFavorite(
        token: AppHelper.getCurrentUserToken(), matchId: matchId)
        .then((value) {
      Get.snackbar('إضافة إلى المفضلة', 'تم إضافة المبارة إلى المفضلة');
    });
  }

  void removeFromFavorite({required int matchId}) {
    ApiRequests.removeFromFavorite(
        token: AppHelper.getCurrentUserToken(), matchId: matchId)
        .then((value) {
      Get.snackbar('حذف من المفضلة', 'تم حذف المبارة إلى المفضلة');
    });
  }

}
