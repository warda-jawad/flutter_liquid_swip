import 'package:expectations/model/boarding.dart';
import 'package:expectations/shared/components/constants.dart';
import 'package:expectations/shared/style/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hex_color/flutter_hex_color.dart';

Widget CustomButton({
  required String text,
  required Function() click,
  double width = double.infinity,
  double height = 48.0,
  Color background = Colors.redAccent,
  bool isUpperCase = true,
  Color textColor = Colors.white,
  double fontSize = 16.0,
  String fontfamily = "",
  FontWeight fontWeight = FontWeight.w700,
  double radius = 0.0,
  double marginLeft = 0.0,
  String borderColor = AppColors.defualtColor,
  double borderWidth = 1.5,
}) =>
    Container(
      margin: EdgeInsets.only(left: marginLeft),
      width: width,
      height: height,
      child: MaterialButton(
        onPressed: click,
        child: Text(
          isUpperCase ? text.toUpperCase() : text,
          style: TextStyle(
              color: textColor,
              fontSize: fontSize,
              fontFamily: fontfamily,
              fontWeight: fontWeight),
        ),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        color: background,
        border: Border.all(color: HexColor(borderColor), width: borderWidth)
      ),
    );

Widget PageViewScreens(BoardingData boarding) => Container(
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Container(
            width: double.infinity,
            child: Image.asset('assets/images/boarding${boarding.id}.png', fit: BoxFit.cover),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 280.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '${boarding.title}',
                  style: TextStyle(
                    fontSize: 24.0,
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontFamily: '${Const.appFont}',
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: Text(
                    '${boarding.description}',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      fontFamily: '${Const.appFont}',
                    ),
                    // overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
