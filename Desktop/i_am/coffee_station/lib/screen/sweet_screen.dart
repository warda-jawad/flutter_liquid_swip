import 'package:coffee_station/core/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class SweetPage extends StatefulWidget {
  const SweetPage({Key? key}) : super(key: key);

  @override
  _SweetPageState createState() => _SweetPageState();
}

class _SweetPageState extends State<SweetPage> {
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
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      const Icon(Icons.keyboard_arrow_up_outlined),
                      SizedBox(
                        width: size.width / 2.7,
                        height: size.height / 3,
                        child: ListView(
                          scrollDirection: Axis.vertical,
                          children: [
                            Container(
                              width: size.width / 2.7,
                              height: size.height / 7,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("assest/images/sweet2.png"),
                                  fit: BoxFit.fill,
                                ),
                              ),
                              child: Container(
                                margin: const EdgeInsets.only(top: 90),
                                child: const Center(
                                  child: Text(
                                    " حلويات شرقية",
                                    style: TextStyle(
                                        fontSize: 25, color: Colors.white),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Container(
                              width: size.width / 2.7,
                              height: size.height / 7,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("assest/images/sweet4.png"),
                                  fit: BoxFit.fill,
                                ),
                              ),
                              child: Container(
                                margin: EdgeInsets.only(top: 90),
                                child: const Center(
                                  child: Text(
                                    " حلويات شرقية",
                                    style: TextStyle(
                                        fontSize: 25, color: Colors.white),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Container(
                              width: size.width / 2.7,
                              height: size.height / 7,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("assest/images/sweet2.png"),
                                  fit: BoxFit.fill,
                                ),
                              ),
                              child: Container(
                                margin: const EdgeInsets.only(top: 90),
                                child: const Center(
                                  child: Text(
                                    " حلويات شرقية",
                                    style: TextStyle(
                                        fontSize: 25, color: Colors.white),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Icon(Icons.keyboard_arrow_down_rounded),
                    ],
                  ),
                  Container(
                    width: size.width / 2,
                    height: size.height / 3.1,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assest/images/sweet.png"),
                        fit: BoxFit.fill,
                      ),
                    ),
                    child: Container(
                      margin: const EdgeInsets.only(top: 260, left: 70),
                      child: const Text(
                        "صنف الحلويات",
                        style: TextStyle(fontSize: 25, color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      const Icon(Icons.keyboard_arrow_up_outlined),
                      SizedBox(
                        width: size.width / 2.7,
                        height: size.height / 3,
                        child: ListView(
                          scrollDirection: Axis.vertical,
                          children: [
                            Container(
                              width: size.width / 2.7,
                              height: size.height / 7,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("assest/images/sweet2.png"),
                                  fit: BoxFit.fill,
                                ),
                              ),
                              child: Container(
                                margin: const EdgeInsets.only(top: 90),
                                child: const Center(
                                  child: Text(
                                    " حلويات شرقية",
                                    style: TextStyle(
                                        fontSize: 25, color: Colors.white),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Container(
                              width: size.width / 2.7,
                              height: size.height / 7,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("assest/images/sweet4.png"),
                                  fit: BoxFit.fill,
                                ),
                              ),
                              child: Container(
                                margin: EdgeInsets.only(top: 90),
                                child: const Center(
                                  child: Text(
                                    " حلويات شرقية",
                                    style: TextStyle(
                                        fontSize: 25, color: Colors.white),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Container(
                              width: size.width / 2.7,
                              height: size.height / 7,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("assest/images/sweet2.png"),
                                  fit: BoxFit.fill,
                                ),
                              ),
                              child: Container(
                                margin: const EdgeInsets.only(top: 90),
                                child: const Center(
                                  child: Text(
                                    " حلويات شرقية",
                                    style: TextStyle(
                                        fontSize: 25, color: Colors.white),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Icon(Icons.keyboard_arrow_down_rounded),
                    ],
                  ),
                  Container(
                    width: size.width / 2,
                    height: size.height / 3.1,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assest/images/sweet.png"),
                        fit: BoxFit.fill,
                      ),
                    ),
                    child: Container(
                      margin: const EdgeInsets.only(top: 260, left: 70),
                      child: const Text(
                        "صنف الحلويات",
                        style: TextStyle(fontSize: 25, color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      const Icon(Icons.keyboard_arrow_up_outlined),
                      SizedBox(
                        width: size.width / 2.7,
                        height: size.height / 3,
                        child: ListView(
                          scrollDirection: Axis.vertical,
                          children: [
                            Container(
                              width: size.width / 2.7,
                              height: size.height / 7,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("assest/images/sweet2.png"),
                                  fit: BoxFit.fill,
                                ),
                              ),
                              child: Container(
                                margin: const EdgeInsets.only(top: 90),
                                child: const Center(
                                  child: Text(
                                    " حلويات شرقية",
                                    style: TextStyle(
                                        fontSize: 25, color: Colors.white),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Container(
                              width: size.width / 2.7,
                              height: size.height / 7,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("assest/images/sweet4.png"),
                                  fit: BoxFit.fill,
                                ),
                              ),
                              child: Container(
                                margin: EdgeInsets.only(top: 90),
                                child: const Center(
                                  child: Text(
                                    " حلويات شرقية",
                                    style: TextStyle(
                                        fontSize: 25, color: Colors.white),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Container(
                              width: size.width / 2.7,
                              height: size.height / 7,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("assest/images/sweet2.png"),
                                  fit: BoxFit.fill,
                                ),
                              ),
                              child: Container(
                                margin: const EdgeInsets.only(top: 90),
                                child: const Center(
                                  child: Text(
                                    " حلويات شرقية",
                                    style: TextStyle(
                                        fontSize: 25, color: Colors.white),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Icon(Icons.keyboard_arrow_down_rounded),
                    ],
                  ),
                  Container(
                    width: size.width / 2,
                    height: size.height / 3.1,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assest/images/sweet.png"),
                        fit: BoxFit.fill,
                      ),
                    ),
                    child: Container(
                      margin: const EdgeInsets.only(top: 260, left: 70),
                      child: const Text(
                        "صنف الحلويات",
                        style: TextStyle(fontSize: 25, color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width: size.width / 2.5,
                  height: size.width / 10,
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
                    borderRadius: BorderRadius.circular(25),
                  ),
                  margin: const EdgeInsets.only(top: 20),
                  child: TextField(
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      prefixIcon: const Icon(
                        Icons.keyboard_arrow_down_rounded,
                        size: 20,
                      ),
                      label: const Text(" حسب التقييم"),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 1, color: boxColor),
                      ),
                    ),
                  ),
                ),
                const Text(
                  "متاجر الحلويات",
                  style: TextStyle(fontSize: 25),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              width: size.width / 1.1,
              height: size.height / 8,
              decoration: const BoxDecoration(
                boxShadow: [
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
                // borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Text(
                        "متجر زارا",
                        style: TextStyle(fontSize: 20),
                      ),
                      const Text(
                        "فرع الكورنيش 0110",
                        style: TextStyle(fontSize: 20, color: Colors.grey),
                      ),
                      Row(
                        //   mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Text(
                            "الكويت",
                            style: TextStyle(fontSize: 20),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Icon(
                            Icons.location_on_rounded,
                            color: secondaryColor,
                          )
                        ],
                      ),
                    ],
                  ),
                  Container(
                    width: size.width / 2.2,
                    height: size.height / 8,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          "assest/images/zara.png",
                        ),
                        fit: BoxFit.fill,
                      ),
                    ),
                    child: Stack(
                      children: [
                        Image.asset(
                          "assest/images/blackBackground.png",
                          height: size.height / 8,
                          width: size.width / 2.2,
                          fit: BoxFit.fill,
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 50),
                          child: Center(
                            child: RatingBar.builder(
                              initialRating: 4,
                              minRating: 1,
                              direction: Axis.horizontal,
                              allowHalfRating: true,
                              itemCount: 5,
                              itemSize: 20,
                              // itemPadding: EdgeInsets.symmetric(horizontal: 2.0),
                              itemBuilder: (context, _) => const Icon(
                                Icons.star,
                                color: Colors.amber,
                              ),
                              onRatingUpdate: (rating) {},
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              width: size.width / 1.1,
              height: size.height / 8,
              decoration: const BoxDecoration(
                boxShadow: [
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
                // borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Text(
                        "متجر زارا",
                        style: TextStyle(fontSize: 20),
                      ),
                      const Text(
                        "فرع الكورنيش 0110",
                        style: TextStyle(fontSize: 20, color: Colors.grey),
                      ),
                      Row(
                        //   mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Text(
                            "الكويت",
                            style: TextStyle(fontSize: 20),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Icon(
                            Icons.location_on_rounded,
                            color: secondaryColor,
                          )
                        ],
                      ),
                    ],
                  ),
                  Container(
                    width: size.width / 2.2,
                    height: size.height / 8,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          "assest/images/zara.png",
                        ),
                        fit: BoxFit.fill,
                      ),
                    ),
                    child: Stack(
                      children: [
                        Image.asset(
                          "assest/images/blackBackground.png",
                          height: size.height / 8,
                          width: size.width / 2.2,
                          fit: BoxFit.fill,
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 50),
                          child: Center(
                            child: RatingBar.builder(
                              initialRating: 4,
                              minRating: 1,
                              direction: Axis.horizontal,
                              allowHalfRating: true,
                              itemCount: 5,
                              itemSize: 20,
                              // itemPadding: EdgeInsets.symmetric(horizontal: 2.0),
                              itemBuilder: (context, _) => const Icon(
                                Icons.star,
                                color: Colors.amber,
                              ),
                              onRatingUpdate: (rating) {},
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              width: size.width / 1.1,
              height: size.height / 8,
              decoration: const BoxDecoration(
                boxShadow: [
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
                // borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Text(
                        "متجر زارا",
                        style: TextStyle(fontSize: 20),
                      ),
                      const Text(
                        "فرع الكورنيش 0110",
                        style: TextStyle(fontSize: 20, color: Colors.grey),
                      ),
                      Row(
                        //   mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Text(
                            "الكويت",
                            style: TextStyle(fontSize: 20),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Icon(
                            Icons.location_on_rounded,
                            color: secondaryColor,
                          )
                        ],
                      ),
                    ],
                  ),
                  Container(
                    width: size.width / 2.2,
                    height: size.height / 8,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          "assest/images/zara.png",
                        ),
                        fit: BoxFit.fill,
                      ),
                    ),
                    child: Stack(
                      children: [
                        Image.asset(
                          "assest/images/blackBackground.png",
                          height: size.height / 8,
                          width: size.width / 2.2,
                          fit: BoxFit.fill,
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 50),
                          child: Center(
                            child: RatingBar.builder(
                              initialRating: 4,
                              minRating: 1,
                              direction: Axis.horizontal,
                              allowHalfRating: true,
                              itemCount: 5,
                              itemSize: 20,
                              // itemPadding: EdgeInsets.symmetric(horizontal: 2.0),
                              itemBuilder: (context, _) => const Icon(
                                Icons.star,
                                color: Colors.amber,
                              ),
                              onRatingUpdate: (rating) {},
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
