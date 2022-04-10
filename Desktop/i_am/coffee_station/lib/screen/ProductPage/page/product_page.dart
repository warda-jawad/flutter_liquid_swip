import 'dart:ui';

import 'package:coffee_station/core/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({Key? key}) : super(key: key);

  @override
  _ProductPageState createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  int _n = 0;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Icon(
                  Icons.favorite_border,
                  color: Colors.black,
                  size: 40,
                ),
                Icon(
                  Icons.shopping_cart_outlined,
                  color: Colors.black,
                  size: 40,
                ),
              ],
            ),
          ),
          Image.asset(
            "assest/images/coffee2.png",
            width: size.width,
            fit: BoxFit.fill,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              RatingBar.builder(
                initialRating: 4,
                minRating: 1,
                direction: Axis.horizontal,
                allowHalfRating: true,
                itemCount: 5,
                itemSize: 30,
                // itemPadding: EdgeInsets.symmetric(horizontal: 2.0),
                itemBuilder: (context, _) => const Icon(
                  Icons.star,
                  color: Colors.amber,
                ),
                onRatingUpdate: (rating) {},
              ),
              RichText(
                text: TextSpan(
                    text: '102#',
                    style: TextStyle(color: Colors.black, fontSize: 18),
                    children: <TextSpan>[
                      const TextSpan(
                          text: '  كوفي ',
                          style: TextStyle(color: Colors.black, fontSize: 18)),
                      TextSpan(
                          text: ' متجر زارا ',
                          style:
                              TextStyle(color: secondaryColor, fontSize: 18)),
                    ]),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              Text(
                "ريال 16.60  ",
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
              Text(
                "فرع الكورنيش 1100",
                style: TextStyle(fontSize: 15, color: Colors.grey),
              ),
            ],
          ),
          Container(
            margin: const EdgeInsets.only(right: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: const [
                Text(
                  "الوصف",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: const Text(
              "Lorem ipsum dolor sit amet, "
              "consectetur adipiscing elit, sed do eiusmod tempor incididunt ut ",
              style: TextStyle(fontSize: 15, color: Colors.grey),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(right: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: const [
                Text(
                  "اختر التفاصيل",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: size.width / 5,
                height: size.height / 18.5,
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Center(
                  child: Text(
                    "حليب",
                    style: TextStyle(color: Colors.black, fontSize: 15),
                  ),
                ),
              ),
              Container(
                width: size.width / 5,
                height: size.height / 18.5,
                decoration: BoxDecoration(
                  color: primaryColor,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Center(
                  child: Text(
                    " توفي",
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                ),
              ),

              /////
              Container(
                width: size.width / 3.5,
                height: size.height / 18.5,
                decoration: BoxDecoration(
                  color: primaryColor,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Center(
                  child: Text(
                    " سكر زيادة",
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                ),
              ),
              Container(
                width: size.width / 5,
                height: size.height / 18.5,
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Center(
                  child: Text(
                    " حليب",
                    style: TextStyle(color: Colors.black, fontSize: 15),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: size.width / 5,
                height: size.height / 18.5,
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Center(
                  child: Text(
                    " قرفة",
                    style: TextStyle(color: Colors.black, fontSize: 15),
                  ),
                ),
              ),
              Container(
                width: size.width / 3,
                height: size.height / 18.5,
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Center(
                  child: Text(
                    " بدون سكر",
                    style: TextStyle(color: Colors.black, fontSize: 15),
                  ),
                ),
              ),
              Container(
                width: size.width / 3,
                height: size.height / 18.5,
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Center(
                  child: Text(
                    " كريمة",
                    style: TextStyle(color: Colors.black, fontSize: 15),
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: size.width / 2.5,
                height: size.height / 30,
                margin:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: const TextField(
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 1, color: Colors.grey),
                    ),
                  ),
                ),
              ),
              const Text(
                ": كود الخصم",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Container(
            margin: const EdgeInsets.only(right: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: const [
                Text(
                  ": السعر الكلي",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                width: size.width / 3,
                height: size.height / 30,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    InkWell(
                        onTap: () {
                          setState(() {
                            if (_n != 0) _n--;
                          });
                        },
                        child: Text(" - ", style: TextStyle(fontSize: 20.0))),
                    Text('$_n', style: TextStyle(fontSize: 20.0)),
                    InkWell(
                        onTap: () {
                          setState(() {
                            _n++;
                          });
                        },
                        child: Text(" + ", style: TextStyle(fontSize: 20.0))),
                  ],
                ),
              ),
              const Text(
                " ١٩٠ ريال ",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Row(
            children: [
              Container(
                width: size.width / 2.3,
                height: size.height / 17,
                margin:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 40),
                decoration: const BoxDecoration(
                  color: Colors.black,
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                ),
                child: const Center(
                  child: Text(
                    "أضف الى السلة",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),
              Container(
                width: size.width / 2.3,
                height: size.height / 17,
                margin:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 40),
                decoration: BoxDecoration(
                  color: primaryColor,
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                ),
                child: const Center(
                  child: Text(
                    "شراء مباشرة",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),
            ],
          ),
          Container(
            margin: const EdgeInsets.only(right: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: const [
                Text(
                  "منتجات مشابهة",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Icon(Icons.navigate_before),
              Icon(Icons.navigate_next),
            ],
          ),
          Container(
            margin: const EdgeInsets.symmetric(
              vertical: 30,
            ),
            width: size.width,
            height: size.height / 9,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Card(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          const Text(
                            " كوفي",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          const Text(
                            " ريال 18",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Stack(
                                children: [
                                  Image.asset("assest/images/leaf2.png"),
                                  const Icon(
                                    Icons.favorite_border,
                                    color: Colors.white,
                                  ),
                                ],
                              ),
                              const SizedBox(
                                width: 90,
                              ),
                              Stack(
                                children: [
                                  Image.asset("assest/images/leaf.png"),
                                  const Icon(
                                    Icons.shopping_cart_outlined,
                                    color: Colors.white,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                      Image.asset(
                        "assest/images/coffee3.png",
                        // fit: BoxFit.fill,
                      ),
                    ],
                  ),
                ),
                Card(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          const Text(
                            " كوفي",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          const Text(
                            " ريال 18",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Stack(
                                children: [
                                  Image.asset("assest/images/leaf2.png"),
                                  const Icon(
                                    Icons.favorite_border,
                                    color: Colors.white,
                                  ),
                                ],
                              ),
                              const SizedBox(
                                width: 90,
                              ),
                              Stack(
                                children: [
                                  Image.asset("assest/images/leaf.png"),
                                  const Icon(
                                    Icons.shopping_cart_outlined,
                                    color: Colors.white,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                      Image.asset(
                        "assest/images/coffee3.png",
                        // fit: BoxFit.fill,
                      ),
                    ],
                  ),
                ),
                Card(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          const Text(
                            " كوفي",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          const Text(
                            " ريال 18",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Stack(
                                children: [
                                  Image.asset("assest/images/leaf2.png"),
                                  const Icon(
                                    Icons.favorite_border,
                                    color: Colors.white,
                                  ),
                                ],
                              ),
                              const SizedBox(
                                width: 90,
                              ),
                              Stack(
                                children: [
                                  Image.asset("assest/images/leaf.png"),
                                  const Icon(
                                    Icons.shopping_cart_outlined,
                                    color: Colors.white,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                      Image.asset(
                        "assest/images/coffee3.png",
                        // fit: BoxFit.fill,
                      ),
                    ],
                  ),
                ),
                Card(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          const Text(
                            " كوفي",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          const Text(
                            " ريال 18",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Stack(
                                children: [
                                  Image.asset("assest/images/leaf2.png"),
                                  const Icon(
                                    Icons.favorite_border,
                                    color: Colors.white,
                                  ),
                                ],
                              ),
                              const SizedBox(
                                width: 90,
                              ),
                              Stack(
                                children: [
                                  Image.asset("assest/images/leaf.png"),
                                  const Icon(
                                    Icons.shopping_cart_outlined,
                                    color: Colors.white,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                      Image.asset(
                        "assest/images/coffee3.png",
                        // fit: BoxFit.fill,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
