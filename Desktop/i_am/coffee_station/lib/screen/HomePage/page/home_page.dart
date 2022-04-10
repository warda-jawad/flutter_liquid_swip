import 'package:coffee_station/core/constant.dart';
import 'package:coffee_station/screen/HomePage/page/side_drawar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      drawer: Theme(
        data: Theme.of(context).copyWith(
          canvasColor:
              Colors.black, //This will change the drawer background to blue.
        ),
        child: SideDrawer(),
      ),
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
                        InkWell(
                          //   onTap: SideDrawar(),
                          child: Icon(
                            Icons.view_headline,
                            color: Colors.white,
                            size: 40,
                          ),
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
                        height: size.height / 13.5,
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
                        height: size.height / 13.5,
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
                        height: size.height / 13.5,
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
              margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
                  Text(
                    "الاصناف",
                    style: TextStyle(
                      fontSize: 25,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: size.width / 2.7,
                        height: size.height / 7,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assest/images/juice.png"),
                            fit: BoxFit.fill,
                          ),
                        ),
                        child: Container(
                          margin: const EdgeInsets.only(top: 90),
                          child: const Center(
                            child: Text(
                              "صنف العصائر",
                              style:
                                  TextStyle(fontSize: 25, color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: size.width / 2.7,
                        height: size.height / 7,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assest/images/nut.png"),
                            fit: BoxFit.fill,
                          ),
                        ),
                        child: Container(
                          margin: EdgeInsets.only(top: 90),
                          child: const Center(
                            child: Text(
                              "صنف المكسرات",
                              style:
                                  TextStyle(fontSize: 25, color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    width: size.width / 2,
                    height: size.height / 3.5,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assest/images/sweets.png"),
                        fit: BoxFit.fill,
                      ),
                    ),
                    child: Container(
                      margin: const EdgeInsets.only(top: 220),
                      child: const Center(
                        child: Text(
                          "صنف الحلويات",
                          style: TextStyle(fontSize: 25, color: Colors.white),
                        ),
                      ),
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
              margin: const EdgeInsets.symmetric(
                vertical: 30,
              ),
              width: size.width,
              height: size.height / 9,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Image.asset(
                    "assest/images/veg.png",
                    fit: BoxFit.fill,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Image.asset(
                    "assest/images/spacice.png",
                    fit: BoxFit.fill,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Image.asset(
                    "assest/images/veg.png",
                    fit: BoxFit.fill,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Image.asset(
                    "assest/images/spacice.png",
                    fit: BoxFit.fill,
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 1),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
                  Text(
                    "المتاجر",
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
              margin: const EdgeInsets.symmetric(
                vertical: 30,
              ),
              width: size.width,
              height: size.height / 9,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Image.asset(
                    "assest/images/store1.png",
                    fit: BoxFit.fill,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Image.asset(
                    "assest/images/store2.png",
                    fit: BoxFit.fill,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Image.asset(
                    "assest/images/store1.png",
                    fit: BoxFit.fill,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Image.asset(
                    "assest/images/store2.png",
                    fit: BoxFit.fill,
                  ),
                ],
              ),
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
