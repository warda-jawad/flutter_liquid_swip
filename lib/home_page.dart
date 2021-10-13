import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _pages = [
      Container(
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "GoldCoin",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 20,
                        decoration: TextDecoration.none),
                  ),
                  Text(
                    "Skip",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 20,
                        decoration: TextDecoration.none),
                  ),
                ],
              ),
            ),
            Image.asset("assest/firstImage.png"),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Online",
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.grey,
                        decoration: TextDecoration.none),
                  ),
                  Text(
                    "Gaming",
                    style: TextStyle(
                        fontSize: 44,
                        color: Colors.black,
                        decoration: TextDecoration.none),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "In this tutorial, how to Create liquid Swipe /n"
                    "Animation in a flutter inspired by Cuberto. Liquid ",
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                        decoration: TextDecoration.none),
                  )
                ],
              ),
            )
          ],
        ),
      ),
      Container(
        color: Colors.purple,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "GoldCoin",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 20,
                        decoration: TextDecoration.none),
                  ),
                  Text(
                    "Skip",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 20,
                        decoration: TextDecoration.none),
                  ),
                ],
              ),
            ),
            Image.asset("assest/secondImage.png"),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Online",
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.grey,
                        decoration: TextDecoration.none),
                  ),
                  Text(
                    "Gaming",
                    style: TextStyle(
                        fontSize: 44,
                        color: Colors.black,
                        decoration: TextDecoration.none),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "In this tutorial, how to Create liquid Swipe /n"
                    "Animation in a flutter inspired by Cuberto. Liquid ",
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                        decoration: TextDecoration.none),
                  )
                ],
              ),
            )
          ],
        ),
      ),
      Container(
        color: Colors.yellow,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "GoldCoin",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 20,
                        decoration: TextDecoration.none),
                  ),
                  Text(
                    "Skip",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 20,
                        decoration: TextDecoration.none),
                  ),
                ],
              ),
            ),
            Image.asset("assest/firstImage.png"),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Online",
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.grey,
                        decoration: TextDecoration.none),
                  ),
                  Text(
                    "Gaming",
                    style: TextStyle(
                        fontSize: 44,
                        color: Colors.black,
                        decoration: TextDecoration.none),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "In this tutorial, how to Create liquid Swipe /n"
                    "Animation in a flutter inspired by Cuberto. Liquid ",
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                        decoration: TextDecoration.none),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    ];
    return LiquidSwipe(
      pages: _pages,
      enableLoop: true,
      fullTransitionValue: 300,
      //enableSideReveal: true,
      slideIconWidget: Icon(
        Icons.arrow_forward_ios_rounded,
        size: 30,
      ),
      waveType: WaveType.liquidReveal,
      positionSlideIcon: 0.7,
    );
  }
}
