import 'package:coffee_station/core/constant.dart';
import 'package:coffee_station/screen/OnBoardingScreen/widget/on_boarding_buttons.dart';
import 'package:flutter/material.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Image.asset(
                    "assest/images/background.png",
                    fit: BoxFit.cover,
                    width: size.width,
                    height: size.height / 2,
                  ),
                  Container(
                      margin: const EdgeInsets.only(top: 320),
                      child:
                          Center(child: Image.asset("assest/images/logo.png"))),
                ],
              ),
              Container(
                width: size.width / 1.2,
                margin: const EdgeInsets.only(bottom: 20),
                child: Text(
                  "Lorem ipsum dolor sit amet, "
                  "consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et",
                  style: TextStyle(fontSize: 15, color: greyColor),
                ),
              ),
              const OnBoardingButtons(),
            ],
          ),
        ),
      ),
    );
  }
}
