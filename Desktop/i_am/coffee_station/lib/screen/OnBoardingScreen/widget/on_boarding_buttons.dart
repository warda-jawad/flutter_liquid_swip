import 'package:coffee_station/core/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OnBoardingButtons extends StatelessWidget {
  const OnBoardingButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
          width: size.width / 1.1,
          height: size.height / 14,
          decoration: BoxDecoration(
            color: secondaryColor,
            borderRadius: const BorderRadius.all(Radius.circular(10)),
          ),
          child: const Center(
            child: Text(
              "تسجيل الدخول",
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
          ),
        ),
        Container(
          width: size.width / 1.1,
          height: size.height / 14,
          margin: const EdgeInsets.only(top: 10),
          decoration: BoxDecoration(
            color: primaryColor,
            borderRadius: const BorderRadius.all(Radius.circular(10)),
          ),
          child: const Center(
            child: Text(
              "إنشاء حساب جديد",
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
          ),
        ),
        Container(
          width: size.width / 1.1,
          height: size.height / 14,
          margin: const EdgeInsets.only(top: 10),
          decoration: const BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          child: const Center(
            child: Text(
              "الدخول كضيف",
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
          ),
        ),
      ],
    );
  }
}
