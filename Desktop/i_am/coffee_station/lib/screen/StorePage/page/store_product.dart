import 'package:coffee_station/core/constant.dart';
import 'package:flutter/material.dart';

class StoreProducts extends StatefulWidget {
  const StoreProducts({Key? key}) : super(key: key);

  @override
  _StoreProductsState createState() => _StoreProductsState();
}

class _StoreProductsState extends State<StoreProducts> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  width: size.width,
                  height: size.height / 3,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        "assest/images/zaraStore.png",
                      ),
                      fit: BoxFit.fill,
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const SizedBox(
                        height: 100,
                      ),
                      Container(
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
                      Container(
                        width: size.width / 1.3,
                        height: size.height / 17,
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
                          color: boxColor,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        margin: const EdgeInsets.only(top: 30),
                        child: const TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            prefixIcon: Icon(
                              Icons.search,
                              size: 20,
                            ),
                            label: Text("ابحث هنا"),
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 30),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              width: size.width / 5,
                              height: size.height / 18.5,
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
                              child: Row(
                                children: const [
                                  Icon(Icons.keyboard_arrow_down_rounded),
                                  Center(
                                    child: Text(
                                      "الدمام",
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 15),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: size.width / 5,
                              height: size.height / 18.5,
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
                              child: Row(
                                children: const [
                                  Icon(Icons.keyboard_arrow_down_rounded),
                                  Center(
                                    child: Text(
                                      "وصل حديثاً",
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 15),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: size.width / 5,
                              height: size.height / 18.5,
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
                              child: Row(
                                children: const [
                                  Icon(Icons.keyboard_arrow_down_rounded),
                                  Center(
                                    child: Text(
                                      "اسم المتجر",
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 15),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: size.width / 5,
                              height: size.height / 18.5,
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
                              child: Row(
                                children: const [
                                  Icon(Icons.keyboard_arrow_down_rounded),
                                  Center(
                                    child: Text(
                                      " الاصناف",
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 15),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 1),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
                  Text(
                    "العروض",
                    style: TextStyle(
                      fontSize: 25,
                    ),
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
              margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              width: size.width,
              height: size.height / 4,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Column(
                    children: [
                      Stack(
                        children: [
                          Image.asset(
                            "assest/images/coffee4.png",
                            fit: BoxFit.fill,
                            width: size.width / 3,
                            height: size.height / 8,
                          ),
                          Row(
                            children: [
                              Container(
                                  width: size.width / 5,
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
                                        size: 20,
                                      ),
                                      Center(
                                          child: Text(
                                        "خصم 10 ",
                                        style: TextStyle(color: Colors.white),
                                      )),
                                    ],
                                  )),
                              const SizedBox(
                                width: 25,
                              ),
                            ],
                          ),
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
                                  Image.asset("assest/images/leaf2.png"),
                                  Container(
                                    margin: EdgeInsets.symmetric(
                                        vertical: 3, horizontal: 3),
                                    child: Icon(
                                      Icons.favorite_border,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              const Text(
                                "٧ ريال",
                                style: TextStyle(fontSize: 12),
                              ),
                              const SizedBox(
                                width: 16,
                              ),
                              Stack(
                                children: [
                                  Image.asset("assest/images/leaf.png"),
                                  Container(
                                    margin: EdgeInsets.symmetric(
                                        vertical: 3, horizontal: 3),
                                    child: Icon(
                                      Icons.shopping_cart_outlined,
                                      color: Colors.white,
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
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    children: [
                      Stack(
                        children: [
                          Image.asset(
                            "assest/images/coffee4.png",
                            fit: BoxFit.fill,
                            width: size.width / 3,
                            height: size.height / 8,
                          ),
                          Row(
                            children: [
                              Container(
                                  width: size.width / 5,
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
                                        size: 20,
                                      ),
                                      Center(
                                          child: Text(
                                        "خصم 10 ",
                                        style: TextStyle(color: Colors.white),
                                      )),
                                    ],
                                  )),
                              const SizedBox(
                                width: 25,
                              ),
                            ],
                          ),
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
                                  Image.asset("assest/images/leaf2.png"),
                                  Container(
                                    margin: EdgeInsets.symmetric(
                                        vertical: 3, horizontal: 3),
                                    child: Icon(
                                      Icons.favorite_border,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              const Text(
                                "٧ ريال",
                                style: TextStyle(fontSize: 12),
                              ),
                              const SizedBox(
                                width: 16,
                              ),
                              Stack(
                                children: [
                                  Image.asset("assest/images/leaf.png"),
                                  Container(
                                    margin: EdgeInsets.symmetric(
                                        vertical: 3, horizontal: 3),
                                    child: Icon(
                                      Icons.shopping_cart_outlined,
                                      color: Colors.white,
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
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    children: [
                      Stack(
                        children: [
                          Image.asset(
                            "assest/images/coffee4.png",
                            fit: BoxFit.fill,
                            width: size.width / 3,
                            height: size.height / 8,
                          ),
                          Row(
                            children: [
                              Container(
                                  width: size.width / 5,
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
                                        size: 20,
                                      ),
                                      Center(
                                          child: Text(
                                        "خصم 10 ",
                                        style: TextStyle(color: Colors.white),
                                      )),
                                    ],
                                  )),
                              const SizedBox(
                                width: 25,
                              ),
                            ],
                          ),
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
                                  Image.asset("assest/images/leaf2.png"),
                                  Container(
                                    margin: EdgeInsets.symmetric(
                                        vertical: 3, horizontal: 3),
                                    child: Icon(
                                      Icons.favorite_border,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              const Text(
                                "٧ ريال",
                                style: TextStyle(fontSize: 12),
                              ),
                              const SizedBox(
                                width: 16,
                              ),
                              Stack(
                                children: [
                                  Image.asset("assest/images/leaf.png"),
                                  Container(
                                    margin: EdgeInsets.symmetric(
                                        vertical: 3, horizontal: 3),
                                    child: Icon(
                                      Icons.shopping_cart_outlined,
                                      color: Colors.white,
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
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    children: [
                      Stack(
                        children: [
                          Image.asset(
                            "assest/images/coffee4.png",
                            fit: BoxFit.fill,
                            width: size.width / 3,
                            height: size.height / 8,
                          ),
                          Row(
                            children: [
                              Container(
                                  width: size.width / 5,
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
                                        size: 20,
                                      ),
                                      Center(
                                          child: Text(
                                        "خصم 10 ",
                                        style: TextStyle(color: Colors.white),
                                      )),
                                    ],
                                  )),
                              const SizedBox(
                                width: 25,
                              ),
                            ],
                          ),
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
                                  Image.asset("assest/images/leaf2.png"),
                                  Container(
                                    margin: EdgeInsets.symmetric(
                                        vertical: 3, horizontal: 3),
                                    child: Icon(
                                      Icons.favorite_border,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              const Text(
                                "٧ ريال",
                                style: TextStyle(fontSize: 12),
                              ),
                              const SizedBox(
                                width: 16,
                              ),
                              Stack(
                                children: [
                                  Image.asset("assest/images/leaf.png"),
                                  Container(
                                    margin: EdgeInsets.symmetric(
                                        vertical: 3, horizontal: 3),
                                    child: Icon(
                                      Icons.shopping_cart_outlined,
                                      color: Colors.white,
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
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    children: [
                      Stack(
                        children: [
                          Image.asset(
                            "assest/images/coffee4.png",
                            fit: BoxFit.fill,
                            width: size.width / 3,
                            height: size.height / 8,
                          ),
                          Row(
                            children: [
                              Container(
                                  width: size.width / 5,
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
                                        size: 20,
                                      ),
                                      Center(
                                          child: Text(
                                        "خصم 10 ",
                                        style: TextStyle(color: Colors.white),
                                      )),
                                    ],
                                  )),
                              const SizedBox(
                                width: 25,
                              ),
                            ],
                          ),
                        ],
                      ),
                      Text("كوفي"),
                      Row(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Stack(
                                children: [
                                  Image.asset("assest/images/leaf2.png"),
                                  Container(
                                    margin: EdgeInsets.symmetric(
                                        vertical: 3, horizontal: 3),
                                    child: Icon(
                                      Icons.favorite_border,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Center(
                                child: const Text(
                                  "٧ ريال",
                                  style: TextStyle(fontSize: 12),
                                ),
                              ),
                              const SizedBox(
                                width: 16,
                              ),
                              Stack(
                                children: [
                                  Image.asset("assest/images/leaf.png"),
                                  Container(
                                    margin: EdgeInsets.symmetric(
                                        vertical: 3, horizontal: 3),
                                    child: Icon(
                                      Icons.shopping_cart_outlined,
                                      color: Colors.white,
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
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 40, vertical: 1),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
                  Text(
                    "وصل حديثاً",
                    style: TextStyle(
                      fontSize: 25,
                    ),
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
              margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              width: size.width,
              height: size.height / 4,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Column(
                    children: [
                      Stack(
                        children: [
                          Image.asset(
                            "assest/images/coffee4.png",
                            fit: BoxFit.fill,
                            width: size.width / 3,
                            height: size.height / 8,
                          ),
                        ],
                      ),
                      const Text("كوفي"),
                      Row(
                        children: [
                          Row(
                            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Stack(
                                children: [
                                  Image.asset("assest/images/leaf2.png"),
                                  Container(
                                    margin: const EdgeInsets.symmetric(
                                        vertical: 3, horizontal: 3),
                                    child: const Icon(
                                      Icons.favorite_border,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              const Text(
                                "٧ ريال",
                                style: TextStyle(fontSize: 12),
                              ),
                              const SizedBox(
                                width: 16,
                              ),
                              Stack(
                                children: [
                                  Image.asset("assest/images/leaf.png"),
                                  Container(
                                    margin: const EdgeInsets.symmetric(
                                        vertical: 3, horizontal: 3),
                                    child: const Icon(
                                      Icons.shopping_cart_outlined,
                                      color: Colors.white,
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
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    children: [
                      Stack(
                        children: [
                          Image.asset(
                            "assest/images/coffee4.png",
                            fit: BoxFit.fill,
                            width: size.width / 3,
                            height: size.height / 8,
                          ),
                        ],
                      ),
                      const Text("كوفي"),
                      Row(
                        children: [
                          Row(
                            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Stack(
                                children: [
                                  Image.asset("assest/images/leaf2.png"),
                                  Container(
                                    margin: const EdgeInsets.symmetric(
                                        vertical: 3, horizontal: 3),
                                    child: const Icon(
                                      Icons.favorite_border,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              const Text(
                                "٧ ريال",
                                style: TextStyle(fontSize: 12),
                              ),
                              const SizedBox(
                                width: 16,
                              ),
                              Stack(
                                children: [
                                  Image.asset("assest/images/leaf.png"),
                                  Container(
                                    margin: const EdgeInsets.symmetric(
                                        vertical: 3, horizontal: 3),
                                    child: const Icon(
                                      Icons.shopping_cart_outlined,
                                      color: Colors.white,
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
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    children: [
                      Stack(
                        children: [
                          Image.asset(
                            "assest/images/coffee4.png",
                            fit: BoxFit.fill,
                            width: size.width / 3,
                            height: size.height / 8,
                          ),
                        ],
                      ),
                      const Text("كوفي"),
                      Row(
                        children: [
                          Row(
                            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Stack(
                                children: [
                                  Image.asset("assest/images/leaf2.png"),
                                  Container(
                                    margin: const EdgeInsets.symmetric(
                                        vertical: 3, horizontal: 3),
                                    child: const Icon(
                                      Icons.favorite_border,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              const Text(
                                "٧ ريال",
                                style: TextStyle(fontSize: 12),
                              ),
                              const SizedBox(
                                width: 16,
                              ),
                              Stack(
                                children: [
                                  Image.asset("assest/images/leaf.png"),
                                  Container(
                                    margin: const EdgeInsets.symmetric(
                                        vertical: 3, horizontal: 3),
                                    child: const Icon(
                                      Icons.shopping_cart_outlined,
                                      color: Colors.white,
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
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    children: [
                      Stack(
                        children: [
                          Image.asset(
                            "assest/images/coffee4.png",
                            fit: BoxFit.fill,
                            width: size.width / 3,
                            height: size.height / 8,
                          ),
                        ],
                      ),
                      const Text("كوفي"),
                      Row(
                        children: [
                          Row(
                            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Stack(
                                children: [
                                  Image.asset("assest/images/leaf2.png"),
                                  Container(
                                    margin: const EdgeInsets.symmetric(
                                        vertical: 3, horizontal: 3),
                                    child: const Icon(
                                      Icons.favorite_border,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              const Text(
                                "٧ ريال",
                                style: TextStyle(fontSize: 12),
                              ),
                              const SizedBox(
                                width: 16,
                              ),
                              Stack(
                                children: [
                                  Image.asset("assest/images/leaf.png"),
                                  Container(
                                    margin: const EdgeInsets.symmetric(
                                        vertical: 3, horizontal: 3),
                                    child: const Icon(
                                      Icons.shopping_cart_outlined,
                                      color: Colors.white,
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
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    children: [
                      Stack(
                        children: [
                          Image.asset(
                            "assest/images/coffee4.png",
                            fit: BoxFit.fill,
                            width: size.width / 3,
                            height: size.height / 8,
                          ),
                        ],
                      ),
                      const Text("كوفي"),
                      Row(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Stack(
                                children: [
                                  Image.asset("assest/images/leaf2.png"),
                                  Container(
                                    margin: const EdgeInsets.symmetric(
                                        vertical: 3, horizontal: 3),
                                    child: const Icon(
                                      Icons.favorite_border,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              const Center(
                                child: Text(
                                  "٧ ريال",
                                  style: TextStyle(fontSize: 12),
                                ),
                              ),
                              const SizedBox(
                                width: 16,
                              ),
                              Stack(
                                children: [
                                  Image.asset("assest/images/leaf.png"),
                                  Container(
                                    margin: const EdgeInsets.symmetric(
                                        vertical: 3, horizontal: 3),
                                    child: const Icon(
                                      Icons.shopping_cart_outlined,
                                      color: Colors.white,
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
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
