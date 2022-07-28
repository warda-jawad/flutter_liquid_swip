import 'package:expectations/shared/style/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hex_color/flutter_hex_color.dart';

ThemeData appTheme() =>
    ThemeData(
      primarySwatch: AppColors.primaryColor,
      primaryColor: HexColor(AppColors.defualtColor),
      // accentColor: HexColor(AppColors.defualtColor),
      scaffoldBackgroundColor: HexColor(AppColors.whiteColor),
      appBarTheme: AppBarTheme(
        titleSpacing: 20.0,
        // backwardsCompatibility: false,
        // systemOverlayStyle: SystemUiOverlayStyle(
        //   statusBarColor: HexColor(AppColors.whiteColor),
        //   statusBarIconBrightness: Brightness.dark,
        // ),
        backgroundColor: HexColor(AppColors.whiteColor),
        elevation: 0.0,
        titleTextStyle: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 20.0,
        ),
        iconTheme: IconThemeData(
          color: HexColor(AppColors.defualtColor),
        ),
      ),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: HexColor(AppColors.defualtColor),
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        type: BottomNavigationBarType.fixed,
        backgroundColor: HexColor(AppColors.whiteColor),
        selectedItemColor: HexColor(AppColors.blackColor),
        unselectedItemColor: HexColor(AppColors.greyColor),
        elevation: 25.0,
        // unselectedItemColor: Colors.white,
      ),
      textTheme: TextTheme(
          bodyText1: TextStyle(
              color: HexColor(AppColors.blackColor), fontFamily: 'Cairo')),
    );
