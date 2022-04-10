import 'package:coffee_station/core/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class SplacScreen extends StatelessWidget {
  const SplacScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            SizedBox(
                width: size.width / 1,
                height: size.height / 1.8,
                child: Image.asset("assest/images/splash_image.png")),
            const Center(
                child: Text(
              "سارع بالطلب",
              style: TextStyle(fontSize: 30),
            )),
            Container(
              margin: const EdgeInsets.only(top: 15, bottom: 80),
              width: size.width / 1.2,
              child: const Text("Lorem ipsum dolor sit amet, "
                  "consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et"),
            ),
            Container(
              width: size.width / 1.1,
              height: size.height / 14,
              decoration: BoxDecoration(
                color: primaryColor,
                borderRadius: const BorderRadius.all(Radius.circular(10)),
              ),
              child: const Center(
                child: Text(
                  "تخطي",
                  style: TextStyle(color: Colors.white, fontSize: 24),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
