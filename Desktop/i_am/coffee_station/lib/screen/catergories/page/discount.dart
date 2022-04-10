import 'package:coffee_station/core/constant.dart';
import 'package:flutter/material.dart';

class DiscountScreen extends StatefulWidget {
  const DiscountScreen({Key? key}) : super(key: key);

  @override
  _DiscountScreenState createState() => _DiscountScreenState();
}

class _DiscountScreenState extends State<DiscountScreen> {
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
                          color: brownColor,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: const Center(
                          child: Text(
                            "الخصومات",
                            style: TextStyle(color: Colors.white, fontSize: 20),
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
            Container(
              width: size.width / 1.3,
              height: 60,
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
                borderRadius: BorderRadius.circular(30),
              ),
              margin: const EdgeInsets.only(top: 20),
              child: TextField(
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  prefixIcon: const Icon(
                    Icons.search,
                    size: 20,
                  ),
                  label: const Text("ابحث هنا"),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(width: 1, color: boxColor),
                  ),
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
                            style: TextStyle(color: Colors.black, fontSize: 15),
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
                            style: TextStyle(color: Colors.black, fontSize: 15),
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
                            style: TextStyle(color: Colors.black, fontSize: 15),
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
                            style: TextStyle(color: Colors.black, fontSize: 15),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  //   width: size.width / 2,
                  child: Column(
                    children: [
                      Stack(
                        children: [
                          Image.asset("assest/images/coffee4.png"),
                          Container(
                              width: size.width / 4,
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
                                  ),
                                  Center(
                                      child: Text(
                                    "خصم 10%",
                                    style: TextStyle(color: Colors.white),
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
                                  Image.asset("assest/images/leaf2.png"),
                                  const Center(
                                    child: Icon(
                                      Icons.favorite_border,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                              Text(
                                "متجر زارا",
                                style: TextStyle(
                                    color: secondaryColor, fontSize: 12),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              const Text(
                                "٧ ريال",
                                style: TextStyle(fontSize: 12),
                              ),
                              const SizedBox(
                                width: 6,
                              ),
                              Stack(
                                children: [
                                  Image.asset("assest/images/leaf.png"),
                                  const Center(
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
                ),
                Container(
                  //   width: size.width / 2,
                  child: Column(
                    children: [
                      Stack(
                        children: [
                          Image.asset("assest/images/coffee4.png"),
                          Container(
                              width: size.width / 4,
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
                                  ),
                                  Center(
                                      child: Text(
                                    "خصم 10%",
                                    style: TextStyle(color: Colors.white),
                                  )),
                                ],
                              )),
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
                                  const Center(
                                    child: Icon(
                                      Icons.favorite_border,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                              Text(
                                "متجر زارا",
                                style: TextStyle(
                                    color: secondaryColor, fontSize: 12),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              const Text(
                                "٧ ريال",
                                style: TextStyle(fontSize: 12),
                              ),
                              const SizedBox(
                                width: 6,
                              ),
                              Stack(
                                children: [
                                  Image.asset("assest/images/leaf.png"),
                                  const Center(
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
                  //   width: size.width / 2,
                  child: Column(
                    children: [
                      Stack(
                        children: [
                          Image.asset("assest/images/coffee4.png"),
                          Container(
                              width: size.width / 4,
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
                                  ),
                                  Center(
                                      child: Text(
                                    "خصم 10%",
                                    style: TextStyle(color: Colors.white),
                                  )),
                                ],
                              )),
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
                                  const Center(
                                    child: Icon(
                                      Icons.favorite_border,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                              Text(
                                "متجر زارا",
                                style: TextStyle(
                                    color: secondaryColor, fontSize: 12),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              const Text(
                                "٧ ريال",
                                style: TextStyle(fontSize: 12),
                              ),
                              const SizedBox(
                                width: 6,
                              ),
                              Stack(
                                children: [
                                  Image.asset("assest/images/leaf.png"),
                                  const Center(
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
                ),
                Container(
                  //   width: size.width / 2,
                  child: Column(
                    children: [
                      Stack(
                        children: [
                          Image.asset("assest/images/coffee4.png"),
                          Container(
                              width: size.width / 4,
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
                                  ),
                                  Center(
                                      child: Text(
                                    "خصم 10%",
                                    style: TextStyle(color: Colors.white),
                                  )),
                                ],
                              )),
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
                                  const Center(
                                    child: Icon(
                                      Icons.favorite_border,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                              Text(
                                "متجر زارا",
                                style: TextStyle(
                                    color: secondaryColor, fontSize: 12),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              const Text(
                                "٧ ريال",
                                style: TextStyle(fontSize: 12),
                              ),
                              const SizedBox(
                                width: 6,
                              ),
                              Stack(
                                children: [
                                  Image.asset("assest/images/leaf.png"),
                                  const Center(
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
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
