import 'package:coffee_station/core/constant.dart';
import 'package:flutter/material.dart';

class ThreeProductsScreen extends StatefulWidget {
  const ThreeProductsScreen({Key? key}) : super(key: key);

  @override
  _ThreeProductsScreenState createState() => _ThreeProductsScreenState();
}

class _ThreeProductsScreenState extends State<ThreeProductsScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Icon(
                          Icons.favorite_border,
                          color: Colors.white,
                          size: 40,
                        ),
                        Icon(
                          Icons.view_headline,
                          color: Colors.white,
                          size: 40,
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 190),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: size.width / 4,
                        height: size.height / 15,
                        decoration: BoxDecoration(
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.grey,
                              blurRadius: 25.0, // soften the shadow
                              spreadRadius: 5.0, //extend the shadow
                              offset: Offset(
                                1.0, // Move to right 10  horizontally
                                1.0, // Move to bottom 10 Vertically
                              ),
                            ),
                          ],
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: const Center(
                          child: Text(
                            "الخصومات",
                            style: TextStyle(color: Colors.black, fontSize: 20),
                          ),
                        ),
                      ),
                      Container(
                        width: size.width / 4,
                        height: size.height / 15,
                        decoration: BoxDecoration(
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.grey,
                              blurRadius: 25.0, // soften the shadow
                              spreadRadius: 5.0, //extend the shadow
                              offset: Offset(
                                1.0, // Move to right 10  horizontally
                                1.0, // Move to bottom 10 Vertically
                              ),
                            ),
                          ],
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: const Center(
                          child: Text(
                            "المندوبين",
                            style: TextStyle(color: Colors.black, fontSize: 20),
                          ),
                        ),
                      ),
                      Container(
                        width: size.width / 4,
                        height: size.height / 15,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.grey,
                              blurRadius: 25.0, // soften the shadow
                              spreadRadius: 5.0, //extend the shadow
                              offset: Offset(
                                1.0, // Move to right 10  horizontally
                                1.0, // Move to bottom 10 Vertically
                              ),
                            ),
                          ],
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: const Center(
                          child: Text(
                            "المنتجات",
                            style: TextStyle(color: Colors.black, fontSize: 20),
                          ),
                        ),
                      ),
                    ],
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
                Container(
                  width: size.width / 4,
                  child: Column(
                    children: [
                      Stack(
                        children: [
                          Image.asset("assest/images/coffee4.png"),
                          Container(
                              width: size.width / 6,
                              height: size.height / 30,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(
                                    "assest/images/yellowbackground.png",
                                  ),
                                  fit: BoxFit.fill,
                                ),
                              ),
                              child: Row(
                                children: const [
                                  Icon(
                                    Icons.local_fire_department,
                                    color: Colors.white,
                                    size: 15,
                                  ),
                                  Center(
                                      child: Text(
                                    "خصم 10%",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 10),
                                  )),
                                ],
                              )),
                        ],
                      ),
                      Text("كوفي"),
                      Row(
                        children: [
                          Row(
                            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Stack(
                                children: [
                                  Image.asset(
                                    "assest/images/leaf2.png",
                                    width: 20,
                                  ),
                                  Container(
                                    margin: const EdgeInsets.symmetric(
                                        vertical: 3, horizontal: 3),
                                    child: const Icon(
                                      Icons.favorite_border,
                                      color: Colors.white,
                                      size: 12,
                                    ),
                                  ),
                                ],
                              ),
                              Text(
                                "متجر زارا",
                                style: TextStyle(
                                    color: secondaryColor, fontSize: 10),
                              ),
                              const SizedBox(
                                width: 12,
                              ),
                              const Text(
                                "٧ ريال",
                                style: TextStyle(fontSize: 10),
                              ),
                              const SizedBox(
                                width: 2,
                              ),
                              Stack(
                                children: [
                                  Image.asset(
                                    "assest/images/leaf.png",
                                    width: 20,
                                  ),
                                  Container(
                                    margin: const EdgeInsets.symmetric(
                                        vertical: 3, horizontal: 3),
                                    child: const Icon(
                                      Icons.shopping_cart_outlined,
                                      color: Colors.white,
                                      size: 12,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  width: size.width / 4,
                  child: Column(
                    children: [
                      Stack(
                        children: [
                          Image.asset("assest/images/coffee4.png"),
                          Container(
                              width: size.width / 6,
                              height: size.height / 30,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(
                                    "assest/images/yellowbackground.png",
                                  ),
                                  fit: BoxFit.fill,
                                ),
                              ),
                              child: Row(
                                children: const [
                                  Icon(
                                    Icons.local_fire_department,
                                    color: Colors.white,
                                    size: 15,
                                  ),
                                  Center(
                                      child: Text(
                                    "خصم 10%",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 10),
                                  )),
                                ],
                              )),
                        ],
                      ),
                      Text("كوفي"),
                      Row(
                        children: [
                          Row(
                            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Stack(
                                children: [
                                  Image.asset(
                                    "assest/images/leaf2.png",
                                    width: 20,
                                  ),
                                  Container(
                                    margin: const EdgeInsets.symmetric(
                                        vertical: 3, horizontal: 3),
                                    child: const Icon(
                                      Icons.favorite_border,
                                      color: Colors.white,
                                      size: 12,
                                    ),
                                  ),
                                ],
                              ),
                              Text(
                                "متجر زارا",
                                style: TextStyle(
                                    color: secondaryColor, fontSize: 10),
                              ),
                              const SizedBox(
                                width: 12,
                              ),
                              const Text(
                                "٧ ريال",
                                style: TextStyle(fontSize: 10),
                              ),
                              const SizedBox(
                                width: 2,
                              ),
                              Stack(
                                children: [
                                  Image.asset(
                                    "assest/images/leaf.png",
                                    width: 20,
                                  ),
                                  Container(
                                    margin: const EdgeInsets.symmetric(
                                        vertical: 3, horizontal: 3),
                                    child: const Icon(
                                      Icons.shopping_cart_outlined,
                                      color: Colors.white,
                                      size: 12,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  width: size.width / 4,
                  child: Column(
                    children: [
                      Stack(
                        children: [
                          Image.asset("assest/images/coffee4.png"),
                          Container(
                              width: size.width / 6,
                              height: size.height / 30,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(
                                    "assest/images/yellowbackground.png",
                                  ),
                                  fit: BoxFit.fill,
                                ),
                              ),
                              child: Row(
                                children: const [
                                  Icon(
                                    Icons.local_fire_department,
                                    color: Colors.white,
                                    size: 15,
                                  ),
                                  Center(
                                      child: Text(
                                    "خصم 10%",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 10),
                                  )),
                                ],
                              )),
                        ],
                      ),
                      Text("كوفي"),
                      Row(
                        children: [
                          Row(
                            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Stack(
                                children: [
                                  Image.asset(
                                    "assest/images/leaf2.png",
                                    width: 20,
                                  ),
                                  Container(
                                    margin: const EdgeInsets.symmetric(
                                        vertical: 3, horizontal: 3),
                                    child: const Icon(
                                      Icons.favorite_border,
                                      color: Colors.white,
                                      size: 12,
                                    ),
                                  ),
                                ],
                              ),
                              Text(
                                "متجر زارا",
                                style: TextStyle(
                                    color: secondaryColor, fontSize: 10),
                              ),
                              const SizedBox(
                                width: 12,
                              ),
                              const Text(
                                "٧ ريال",
                                style: TextStyle(fontSize: 10),
                              ),
                              const SizedBox(
                                width: 2,
                              ),
                              Stack(
                                children: [
                                  Image.asset(
                                    "assest/images/leaf.png",
                                    width: 20,
                                  ),
                                  Container(
                                    margin: const EdgeInsets.symmetric(
                                        vertical: 3, horizontal: 3),
                                    child: const Icon(
                                      Icons.shopping_cart_outlined,
                                      color: Colors.white,
                                      size: 12,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      )
                    ],
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
                Container(
                  width: size.width / 4,
                  child: Column(
                    children: [
                      Stack(
                        children: [
                          Image.asset("assest/images/coffee4.png"),
                          Container(
                              width: size.width / 6,
                              height: size.height / 30,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(
                                    "assest/images/yellowbackground.png",
                                  ),
                                  fit: BoxFit.fill,
                                ),
                              ),
                              child: Row(
                                children: const [
                                  Icon(
                                    Icons.local_fire_department,
                                    color: Colors.white,
                                    size: 15,
                                  ),
                                  Center(
                                      child: Text(
                                    "خصم 10%",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 10),
                                  )),
                                ],
                              )),
                        ],
                      ),
                      Text("كوفي"),
                      Row(
                        children: [
                          Row(
                            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Stack(
                                children: [
                                  Image.asset(
                                    "assest/images/leaf2.png",
                                    width: 20,
                                  ),
                                  Container(
                                    margin: const EdgeInsets.symmetric(
                                        vertical: 3, horizontal: 3),
                                    child: const Icon(
                                      Icons.favorite_border,
                                      color: Colors.white,
                                      size: 12,
                                    ),
                                  ),
                                ],
                              ),
                              Text(
                                "متجر زارا",
                                style: TextStyle(
                                    color: secondaryColor, fontSize: 10),
                              ),
                              const SizedBox(
                                width: 12,
                              ),
                              const Text(
                                "٧ ريال",
                                style: TextStyle(fontSize: 10),
                              ),
                              const SizedBox(
                                width: 2,
                              ),
                              Stack(
                                children: [
                                  Image.asset(
                                    "assest/images/leaf.png",
                                    width: 20,
                                  ),
                                  Container(
                                    margin: const EdgeInsets.symmetric(
                                        vertical: 3, horizontal: 3),
                                    child: const Icon(
                                      Icons.shopping_cart_outlined,
                                      color: Colors.white,
                                      size: 12,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  width: size.width / 4,
                  child: Column(
                    children: [
                      Stack(
                        children: [
                          Image.asset("assest/images/coffee4.png"),
                          Container(
                              width: size.width / 6,
                              height: size.height / 30,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(
                                    "assest/images/yellowbackground.png",
                                  ),
                                  fit: BoxFit.fill,
                                ),
                              ),
                              child: Row(
                                children: const [
                                  Icon(
                                    Icons.local_fire_department,
                                    color: Colors.white,
                                    size: 15,
                                  ),
                                  Center(
                                      child: Text(
                                    "خصم 10%",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 10),
                                  )),
                                ],
                              )),
                        ],
                      ),
                      Text("كوفي"),
                      Row(
                        children: [
                          Row(
                            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Stack(
                                children: [
                                  Image.asset(
                                    "assest/images/leaf2.png",
                                    width: 20,
                                  ),
                                  Container(
                                    margin: const EdgeInsets.symmetric(
                                        vertical: 3, horizontal: 3),
                                    child: const Icon(
                                      Icons.favorite_border,
                                      color: Colors.white,
                                      size: 12,
                                    ),
                                  ),
                                ],
                              ),
                              Text(
                                "متجر زارا",
                                style: TextStyle(
                                    color: secondaryColor, fontSize: 10),
                              ),
                              const SizedBox(
                                width: 12,
                              ),
                              const Text(
                                "٧ ريال",
                                style: TextStyle(fontSize: 10),
                              ),
                              const SizedBox(
                                width: 2,
                              ),
                              Stack(
                                children: [
                                  Image.asset(
                                    "assest/images/leaf.png",
                                    width: 20,
                                  ),
                                  Container(
                                    margin: const EdgeInsets.symmetric(
                                        vertical: 3, horizontal: 3),
                                    child: const Icon(
                                      Icons.shopping_cart_outlined,
                                      color: Colors.white,
                                      size: 12,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  width: size.width / 4,
                  child: Column(
                    children: [
                      Stack(
                        children: [
                          Image.asset("assest/images/coffee4.png"),
                          Container(
                              width: size.width / 6,
                              height: size.height / 30,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(
                                    "assest/images/yellowbackground.png",
                                  ),
                                  fit: BoxFit.fill,
                                ),
                              ),
                              child: Row(
                                children: const [
                                  Icon(
                                    Icons.local_fire_department,
                                    color: Colors.white,
                                    size: 15,
                                  ),
                                  Center(
                                      child: Text(
                                    "خصم 10%",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 10),
                                  )),
                                ],
                              )),
                        ],
                      ),
                      Text("كوفي"),
                      Row(
                        children: [
                          Row(
                            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Stack(
                                children: [
                                  Image.asset(
                                    "assest/images/leaf2.png",
                                    width: 20,
                                  ),
                                  Container(
                                    margin: const EdgeInsets.symmetric(
                                        vertical: 3, horizontal: 3),
                                    child: const Icon(
                                      Icons.favorite_border,
                                      color: Colors.white,
                                      size: 12,
                                    ),
                                  ),
                                ],
                              ),
                              Text(
                                "متجر زارا",
                                style: TextStyle(
                                    color: secondaryColor, fontSize: 10),
                              ),
                              const SizedBox(
                                width: 12,
                              ),
                              const Text(
                                "٧ ريال",
                                style: TextStyle(fontSize: 10),
                              ),
                              const SizedBox(
                                width: 2,
                              ),
                              Stack(
                                children: [
                                  Image.asset(
                                    "assest/images/leaf.png",
                                    width: 20,
                                  ),
                                  Container(
                                    margin: const EdgeInsets.symmetric(
                                        vertical: 3, horizontal: 3),
                                    child: const Icon(
                                      Icons.shopping_cart_outlined,
                                      color: Colors.white,
                                      size: 12,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      )
                    ],
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
                Container(
                  width: size.width / 4,
                  child: Column(
                    children: [
                      Stack(
                        children: [
                          Image.asset("assest/images/coffee4.png"),
                          Container(
                              width: size.width / 6,
                              height: size.height / 30,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(
                                    "assest/images/yellowbackground.png",
                                  ),
                                  fit: BoxFit.fill,
                                ),
                              ),
                              child: Row(
                                children: const [
                                  Icon(
                                    Icons.local_fire_department,
                                    color: Colors.white,
                                    size: 15,
                                  ),
                                  Center(
                                      child: Text(
                                    "خصم 10%",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 10),
                                  )),
                                ],
                              )),
                        ],
                      ),
                      Text("كوفي"),
                      Row(
                        children: [
                          Row(
                            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Stack(
                                children: [
                                  Image.asset(
                                    "assest/images/leaf2.png",
                                    width: 20,
                                  ),
                                  Container(
                                    margin: const EdgeInsets.symmetric(
                                        vertical: 3, horizontal: 3),
                                    child: const Icon(
                                      Icons.favorite_border,
                                      color: Colors.white,
                                      size: 12,
                                    ),
                                  ),
                                ],
                              ),
                              Text(
                                "متجر زارا",
                                style: TextStyle(
                                    color: secondaryColor, fontSize: 10),
                              ),
                              const SizedBox(
                                width: 12,
                              ),
                              const Text(
                                "٧ ريال",
                                style: TextStyle(fontSize: 10),
                              ),
                              const SizedBox(
                                width: 2,
                              ),
                              Stack(
                                children: [
                                  Image.asset(
                                    "assest/images/leaf.png",
                                    width: 20,
                                  ),
                                  Container(
                                    margin: const EdgeInsets.symmetric(
                                        vertical: 3, horizontal: 3),
                                    child: const Icon(
                                      Icons.shopping_cart_outlined,
                                      color: Colors.white,
                                      size: 12,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  width: size.width / 4,
                  child: Column(
                    children: [
                      Stack(
                        children: [
                          Image.asset("assest/images/coffee4.png"),
                          Container(
                              width: size.width / 6,
                              height: size.height / 30,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(
                                    "assest/images/yellowbackground.png",
                                  ),
                                  fit: BoxFit.fill,
                                ),
                              ),
                              child: Row(
                                children: const [
                                  Icon(
                                    Icons.local_fire_department,
                                    color: Colors.white,
                                    size: 15,
                                  ),
                                  Center(
                                      child: Text(
                                    "خصم 10%",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 10),
                                  )),
                                ],
                              )),
                        ],
                      ),
                      Text("كوفي"),
                      Row(
                        children: [
                          Row(
                            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Stack(
                                children: [
                                  Image.asset(
                                    "assest/images/leaf2.png",
                                    width: 20,
                                  ),
                                  Container(
                                    margin: const EdgeInsets.symmetric(
                                        vertical: 3, horizontal: 3),
                                    child: const Icon(
                                      Icons.favorite_border,
                                      color: Colors.white,
                                      size: 12,
                                    ),
                                  ),
                                ],
                              ),
                              Text(
                                "متجر زارا",
                                style: TextStyle(
                                    color: secondaryColor, fontSize: 10),
                              ),
                              const SizedBox(
                                width: 12,
                              ),
                              const Text(
                                "٧ ريال",
                                style: TextStyle(fontSize: 10),
                              ),
                              const SizedBox(
                                width: 2,
                              ),
                              Stack(
                                children: [
                                  Image.asset(
                                    "assest/images/leaf.png",
                                    width: 20,
                                  ),
                                  Container(
                                    margin: const EdgeInsets.symmetric(
                                        vertical: 3, horizontal: 3),
                                    child: const Icon(
                                      Icons.shopping_cart_outlined,
                                      color: Colors.white,
                                      size: 12,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  width: size.width / 4,
                  child: Column(
                    children: [
                      Stack(
                        children: [
                          Image.asset("assest/images/coffee4.png"),
                          Container(
                              width: size.width / 6,
                              height: size.height / 30,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(
                                    "assest/images/yellowbackground.png",
                                  ),
                                  fit: BoxFit.fill,
                                ),
                              ),
                              child: Row(
                                children: const [
                                  Icon(
                                    Icons.local_fire_department,
                                    color: Colors.white,
                                    size: 15,
                                  ),
                                  Center(
                                      child: Text(
                                    "خصم 10%",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 10),
                                  )),
                                ],
                              )),
                        ],
                      ),
                      Text("كوفي"),
                      Row(
                        children: [
                          Row(
                            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Stack(
                                children: [
                                  Image.asset(
                                    "assest/images/leaf2.png",
                                    width: 20,
                                  ),
                                  Container(
                                    margin: const EdgeInsets.symmetric(
                                        vertical: 3, horizontal: 3),
                                    child: const Icon(
                                      Icons.favorite_border,
                                      color: Colors.white,
                                      size: 12,
                                    ),
                                  ),
                                ],
                              ),
                              Text(
                                "متجر زارا",
                                style: TextStyle(
                                    color: secondaryColor, fontSize: 10),
                              ),
                              const SizedBox(
                                width: 12,
                              ),
                              const Text(
                                "٧ ريال",
                                style: TextStyle(fontSize: 10),
                              ),
                              const SizedBox(
                                width: 2,
                              ),
                              Stack(
                                children: [
                                  Image.asset(
                                    "assest/images/leaf.png",
                                    width: 20,
                                  ),
                                  Container(
                                    margin: const EdgeInsets.symmetric(
                                        vertical: 3, horizontal: 3),
                                    child: const Icon(
                                      Icons.shopping_cart_outlined,
                                      color: Colors.white,
                                      size: 12,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      )
                    ],
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
                Container(
                  width: size.width / 4,
                  child: Column(
                    children: [
                      Stack(
                        children: [
                          Image.asset("assest/images/coffee4.png"),
                          Container(
                              width: size.width / 6,
                              height: size.height / 30,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(
                                    "assest/images/yellowbackground.png",
                                  ),
                                  fit: BoxFit.fill,
                                ),
                              ),
                              child: Row(
                                children: const [
                                  Icon(
                                    Icons.local_fire_department,
                                    color: Colors.white,
                                    size: 15,
                                  ),
                                  Center(
                                      child: Text(
                                    "خصم 10%",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 10),
                                  )),
                                ],
                              )),
                        ],
                      ),
                      Text("كوفي"),
                      Row(
                        children: [
                          Row(
                            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Stack(
                                children: [
                                  Image.asset(
                                    "assest/images/leaf2.png",
                                    width: 20,
                                  ),
                                  Container(
                                    margin: const EdgeInsets.symmetric(
                                        vertical: 3, horizontal: 3),
                                    child: const Icon(
                                      Icons.favorite_border,
                                      color: Colors.white,
                                      size: 12,
                                    ),
                                  ),
                                ],
                              ),
                              Text(
                                "متجر زارا",
                                style: TextStyle(
                                    color: secondaryColor, fontSize: 10),
                              ),
                              const SizedBox(
                                width: 12,
                              ),
                              const Text(
                                "٧ ريال",
                                style: TextStyle(fontSize: 10),
                              ),
                              const SizedBox(
                                width: 2,
                              ),
                              Stack(
                                children: [
                                  Image.asset(
                                    "assest/images/leaf.png",
                                    width: 20,
                                  ),
                                  Container(
                                    margin: const EdgeInsets.symmetric(
                                        vertical: 3, horizontal: 3),
                                    child: const Icon(
                                      Icons.shopping_cart_outlined,
                                      color: Colors.white,
                                      size: 12,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  width: size.width / 4,
                  child: Column(
                    children: [
                      Stack(
                        children: [
                          Image.asset("assest/images/coffee4.png"),
                          Container(
                              width: size.width / 6,
                              height: size.height / 30,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(
                                    "assest/images/yellowbackground.png",
                                  ),
                                  fit: BoxFit.fill,
                                ),
                              ),
                              child: Row(
                                children: const [
                                  Icon(
                                    Icons.local_fire_department,
                                    color: Colors.white,
                                    size: 15,
                                  ),
                                  Center(
                                      child: Text(
                                    "خصم 10%",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 10),
                                  )),
                                ],
                              )),
                        ],
                      ),
                      Text("كوفي"),
                      Row(
                        children: [
                          Row(
                            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Stack(
                                children: [
                                  Image.asset(
                                    "assest/images/leaf2.png",
                                    width: 20,
                                  ),
                                  Container(
                                    margin: const EdgeInsets.symmetric(
                                        vertical: 3, horizontal: 3),
                                    child: const Icon(
                                      Icons.favorite_border,
                                      color: Colors.white,
                                      size: 12,
                                    ),
                                  ),
                                ],
                              ),
                              Text(
                                "متجر زارا",
                                style: TextStyle(
                                    color: secondaryColor, fontSize: 10),
                              ),
                              const SizedBox(
                                width: 12,
                              ),
                              const Text(
                                "٧ ريال",
                                style: TextStyle(fontSize: 10),
                              ),
                              const SizedBox(
                                width: 2,
                              ),
                              Stack(
                                children: [
                                  Image.asset(
                                    "assest/images/leaf.png",
                                    width: 20,
                                  ),
                                  Container(
                                    margin: const EdgeInsets.symmetric(
                                        vertical: 3, horizontal: 3),
                                    child: const Icon(
                                      Icons.shopping_cart_outlined,
                                      color: Colors.white,
                                      size: 12,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  width: size.width / 4,
                  child: Column(
                    children: [
                      Stack(
                        children: [
                          Image.asset("assest/images/coffee4.png"),
                          Container(
                              width: size.width / 6,
                              height: size.height / 30,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(
                                    "assest/images/yellowbackground.png",
                                  ),
                                  fit: BoxFit.fill,
                                ),
                              ),
                              child: Row(
                                children: const [
                                  Icon(
                                    Icons.local_fire_department,
                                    color: Colors.white,
                                    size: 15,
                                  ),
                                  Center(
                                      child: Text(
                                    "خصم 10%",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 10),
                                  )),
                                ],
                              )),
                        ],
                      ),
                      Text("كوفي"),
                      Row(
                        children: [
                          Row(
                            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Stack(
                                children: [
                                  Image.asset(
                                    "assest/images/leaf2.png",
                                    width: 20,
                                  ),
                                  Container(
                                    margin: const EdgeInsets.symmetric(
                                        vertical: 3, horizontal: 3),
                                    child: const Icon(
                                      Icons.favorite_border,
                                      color: Colors.white,
                                      size: 12,
                                    ),
                                  ),
                                ],
                              ),
                              Text(
                                "متجر زارا",
                                style: TextStyle(
                                    color: secondaryColor, fontSize: 10),
                              ),
                              const SizedBox(
                                width: 12,
                              ),
                              const Text(
                                "٧ ريال",
                                style: TextStyle(fontSize: 10),
                              ),
                              const SizedBox(
                                width: 2,
                              ),
                              Stack(
                                children: [
                                  Image.asset(
                                    "assest/images/leaf.png",
                                    width: 20,
                                  ),
                                  Container(
                                    margin: const EdgeInsets.symmetric(
                                        vertical: 3, horizontal: 3),
                                    child: const Icon(
                                      Icons.shopping_cart_outlined,
                                      color: Colors.white,
                                      size: 12,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
