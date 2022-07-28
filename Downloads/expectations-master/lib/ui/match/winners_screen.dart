
import 'package:expectations/controllers/winners_controller.dart';
import 'package:expectations/model/winners.dart';
import 'package:expectations/routes/routes.dart';
import 'package:expectations/shared/components/constants.dart';
import 'package:expectations/shared/style/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hex_color/flutter_hex_color.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class WinnersScreen extends GetView<WinnersController> {

  late int matchId;

  WinnersScreen({required this.matchId});

  @override
  Widget build(BuildContext context) {
    // print('MatchId: $matchId');
    // controller.matchId = matchId;
    // fetchWinners(matchId: 1);
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
                  InkWell(
                      child: SvgPicture.asset('assets/icons/back.svg'),
                      onTap: () => Get.offAndToNamed(Routes.home)),
                  Expanded(
                    child: Text(
                      textAlign: TextAlign.center,
                      'الفائزين',
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
          !controller.listWinners.isEmpty ? Expanded(
            child: ListView.builder(
                physics: BouncingScrollPhysics(),
                itemCount: controller.listWinners.length,
                itemBuilder: (context, index) => buildWinnersItem(controller.listWinners[index])),
          ) : Expanded(
            child: Center(
              child: Text('لا يوجد فائزيين لحتى هذه اللحظة',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.w500,
                fontFamily: Const.appFont
              ),),
            ),
          ),
        ],
      ),
    );
  }



  Widget buildWinnersItem(WinnersData winners) => Card(
    margin: EdgeInsets.all(10),
    elevation: 8,
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16)
    ),
    child: Container(
      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Row(
        children: [
          Container(
            width: 80,
            height: 80,
            child: CircleAvatar(
                backgroundColor: Colors.transparent,
                backgroundImage: NetworkImage('https://i.postimg.cc/B6GcTk8F/default-avatar2.png')),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),

            ),
          ),
          SizedBox(width: 24),
          Text('${winners.user!.name!}',
            style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.w500,
                fontFamily: Const.appFont
            ),),
        ],
      ),
    ),
  );
}
