import 'package:expectations/controllers/boarding_controller.dart';
import 'package:expectations/shared/components/components.dart';
import 'package:expectations/shared/components/constants.dart';
import 'package:expectations/shared/style/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:flutter_hex_color/flutter_hex_color.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class BoardingScreen extends GetView<BoardingsController> {
  BoardingScreen({Key? key}) : super(key: key);

  PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Colors.white));
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        alignment: Alignment.center,
        children: [
          SizedBox(height: 18),
          PageView.builder(
            physics: BouncingScrollPhysics(),
            controller: pageController,
            itemCount: 3,
            itemBuilder: (context, index) =>
                PageViewScreens(controller.listBoardings[index]),
            onPageChanged: (int index) {
              if (index == controller.listBoardings.length - 2)
                controller.isLast.value = true;
              else
                controller.isLast.value = false;
            },
          ),
          Container(
            margin: EdgeInsets.only(top: 100),
            child: SmoothPageIndicator(
              controller: pageController,
              count: 3,
              effect: CustomizableEffect(
                dotDecoration: DotDecoration(
                  height: 4,
                  width: 15,
                  color: HexColor(AppColors.dotColor),
                  borderRadius: BorderRadius.circular(8),
                ),
                activeDotDecoration: DotDecoration(
                  height: 4,
                  width: 35,
                  color: HexColor(AppColors.dotActiveColor),
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              onDotClicked: (index) {
                if (controller.isLast.value)
                  pageController.previousPage(
                      duration: Duration(milliseconds: 750),
                      curve: Curves.easeInToLinear);
                else
                  pageController.nextPage(
                      duration: Duration(milliseconds: 750),
                      curve: Curves.easeInToLinear);
              },
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 550),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                InkWell(
                  child: Text('تخطي',
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 24,
                          color: Colors.black,
                          fontFamily: '${Const.appFont}',
                          decoration: TextDecoration.underline)),
                  onTap: () => controller.goToLogin(),
                ),
                SizedBox(height: 20),
                FloatingActionButton(
                  child: Icon(Icons.arrow_forward, color: Colors.white),
                  elevation: 16,
                  backgroundColor: HexColor(AppColors.defualtColor),
                  onPressed: () {
                    if (controller.isLast.value)
                      controller.goToLogin();
                    else
                      pageController.nextPage(
                          duration: Duration(milliseconds: 500),
                          curve: Curves.easeInToLinear);
                  },
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
