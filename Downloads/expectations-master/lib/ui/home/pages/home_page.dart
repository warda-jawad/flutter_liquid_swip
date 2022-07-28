import 'package:expandable/expandable.dart';
import 'package:expectations/api/api_requests.dart';
import 'package:expectations/controllers/ads_controller.dart';
import 'package:expectations/controllers/home_controller.dart';
import 'package:expectations/model/ads.dart';
import 'package:expectations/model/days.dart';
import 'package:expectations/model/periodicals.dart';
import 'package:expectations/routes/routes.dart';
import 'package:expectations/shared/components/constants.dart';
import 'package:expectations/shared/style/colors.dart';
import 'package:expectations/ui/home/show_periodicals.dart';
import 'package:expectations/utils/app_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hex_color/flutter_hex_color.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class HomePage extends StatefulWidget {

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  bool isLoading = false;
  List<Days> listDays = [];
  List<AdsData> listAds = [];
  List<PeriodicalsData> listPeriodicals = [];


  @override
  initState(){
    getDates();
    fetchAds();
    fetchPeriodicals();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 100,
            decoration: BoxDecoration(
                color: HexColor(AppColors.defualtColor),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(24),
                    bottomRight: Radius.circular(24))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(width: 20),
                /*InkWell(
                    child: Icon(Icons.exit_to_app_rounded,
                        size: 30, color: Colors.white),
                    onTap: () => AppHelper.clearData(key: Const.KEY_USER_DATA)
                            .then((value) {
                          AppHelper.clearAllData()
                              .then((value) => Get.offAndToNamed(Routes.login));
                        })),*/
                Spacer(),
                Text(
                  'الرئيسية',
                  style: TextStyle(
                      color: HexColor(AppColors.whiteColor),
                      fontSize: 22,
                      fontWeight: FontWeight.w500,
                      fontFamily: Const.appFont),
                ),
                SizedBox(width: 100),
                InkWell(
                    child: SvgPicture.asset('assets/icons/search.svg', height: 20, width: 20),
                    onTap: () => Get.toNamed(Routes.search)),
                SizedBox(
                  width: 20,
                ),
                GetBuilder<HomeController>(builder: (home) => InkWell(
                  child: SvgPicture.asset('assets/icons/menu.svg'),
                  onTap: () => home.getCurrenNavIndex(3),
                )),
                SizedBox(
                  width: 20,
                ),
              ],
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                children: [
                  GetBuilder<AdsController>(builder: (controller) => ImageSlideshow(
                    width: double.infinity,
                    height: 200,
                    initialPage: 0,
                    autoPlayInterval: 3000,
                    isLoop: true,
                    indicatorColor: Colors.transparent,
                    indicatorBackgroundColor: Colors.transparent,
                    children: controller.listAds
                        .map((element) => Container(
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(
                                  '${Const.baseImagesUrl}${element.image}'),
                              fit: BoxFit.cover),
                          borderRadius: BorderRadius.circular(10)),
                    ))
                        .toList(),
                  ),),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    physics: BouncingScrollPhysics(),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: listDays.map(
                              (day) {
                            return InkWell(
                              child: Container(
                                margin: EdgeInsets.all(10),
                                child: Text(
                                  '${day.day}',
                                  style: TextStyle(
                                      color: HexColor(AppColors.blackColor),
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                      fontFamily: Const.appFont),
                                ),
                              ),
                              onTap: () {
                                if(day.day == 'كل المباريات') {
                                  print("ALL");
                                  fetchPeriodicals();
                                }else {
                                  print("DATE");
                                  fetchPeriodicalsByDate(
                                      date: '${day.date}');
                                }
                              }
                              ,
                            );
                          },
                        ).toList()),
                  ),
                  SizedBox(height: 4),
                  isLoading == true ? Center(child: CircularProgressIndicator()) : Container(),
                  SizedBox(height: 16),
                  ExpandableTheme(
                      data: ExpandableThemeData(useInkWell: true),
                      child: ListView.builder(
                        primary: false,
                        shrinkWrap: true,
                        itemCount: listPeriodicals.length,
                        itemBuilder: (context, index) => listPeriodicals[index].matches!.isEmpty
                            ? Container()
                            : buildItem(listPeriodicals[index]),
                      )),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildItem(PeriodicalsData periodicals) => ExpandableNotifier(
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
                          Text(
                            '${checkPeriodicalsCount(periodicals.matches!.length)}',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                fontFamily: Const.appFont),
                          )
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

  String checkPeriodicalsCount(int? matchsCount) {
    print('COUNT: $matchsCount');
    if (matchsCount != null) {
      if (matchsCount == 1)
        return 'مباراة';
      else if (matchsCount == 2)
        return 'مبارتين';
      else if (matchsCount >= 3 && matchsCount <= 10)
        return '$matchsCount مباريات ';
      else
        return '$matchsCount مباراة ';
    }
    return '';
  }

  void getDates() {

    final now = DateTime.now();
    final today = DateTime(now.year, now.month, now.day);
    final tomorrow = DateTime(now.year, now.month, now.day + 1);
    final aftarTomorrow = DateTime(now.year, now.month, now.day + 2);

    final dateToday =
        '${today.year}-${today.month.toString().padLeft(2, '0')}-${today.day.toString().padLeft(2, '0')}';
    final dateTomorrow =
        '${tomorrow.year}-${tomorrow.month.toString().padLeft(2, '0')}-${tomorrow.day.toString().padLeft(2, '0')}';
    final dateAftarTomorrow =
        '${aftarTomorrow.year}-${aftarTomorrow.month.toString().padLeft(2, '0')}-${aftarTomorrow.day.toString().padLeft(2, '0')}';

    print('Today: $dateToday');
    print('tomorrow: $dateTomorrow');
    print('aftarTomorrow: $dateAftarTomorrow');

    listDays = [
      Days(day: 'كل المباريات', date: ''),
      Days(day: 'اليوم', date: '$dateToday'),
      Days(day: 'غدا', date: '$dateTomorrow'),
      Days(day: 'بعد غد', date: '$dateAftarTomorrow'),
      // Days(day: 'أي يوم', date: '2022-12-15'),
    ];
  }

  void fetchAds() {
    ApiRequests.fetchAds().then((value) => listAds.addAll(value!.data!));
  }

  void fetchPeriodicals() {
    setState(() => isLoading = true);
    if (AppHelper.getCurrentUserToken() != null) {
      // print(AppHelper.getCurrentUserToken());
      ApiRequests.fetchPeriodicals(token: AppHelper.getCurrentUserToken())
          .then((value) {
        if (value != null) {
          setState((){
            listPeriodicals.clear();
            listPeriodicals.addAll(value.data!);
            isLoading = false;
          });
        }else
          setState(() => isLoading = false);
      }).catchError((error) => setState(() => isLoading = false));
    }
  }

  void fetchPeriodicalsByDate({required String date}) {

    if (AppHelper.getCurrentUserToken() != null) {
      setState(() => isLoading = true);
      ApiRequests.fetchPeriodicalsByDate(
          token: AppHelper.getCurrentUserToken(), date: date)
          .then((value) {
        setState(() {
          listPeriodicals.clear();
          listPeriodicals.addAll(value!.data!);
          isLoading = false;
        });
      }).catchError((error) => setState(() => isLoading = false));
    }
  }
}
