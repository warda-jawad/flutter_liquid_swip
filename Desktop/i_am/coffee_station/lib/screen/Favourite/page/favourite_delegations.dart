import 'package:coffee_station/core/constant.dart';
import 'package:flutter/material.dart';

class FavouriteDelegations extends StatelessWidget {
  const FavouriteDelegations({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                width: size.width,
                height: size.height / 4,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      "assest/images/rectangle.png",
                    ),
                    fit: BoxFit.fill,
                  ),
                ),
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      const Center(
                        child: Text(
                          "المندوبين المفضلين",
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      ),
                      const SizedBox(
                        height: 90,
                      ),
                      Row(
                        // mainAxisAlignment: MainAxisAlignment.end,
                        children: const [
                          Icon(
                            Icons.view_headline,
                            color: Colors.white,
                            size: 40,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                "المندوبين المفضلين",
                style: TextStyle(
                  fontSize: 20,
                  color: secondaryColor,
                  decoration: TextDecoration.underline,
                ),
              ),
              Text(
                "محلاتي المفضلة",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              Text(
                "منتجاتي المفضلة",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
