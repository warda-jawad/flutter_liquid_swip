import 'package:coffee_station/core/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class FavouriteStore extends StatelessWidget {
  const FavouriteStore({Key? key}) : super(key: key);

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
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        const Center(
                          child: Text(
                            "محلاتي المفضلة",
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                        ),
                        const SizedBox(
                          width: 90,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
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
                const Text(
                  "المندوبين المفضلين",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                Text(
                  "محلاتي المفضلة",
                  style: TextStyle(
                    fontSize: 20,
                    color: secondaryColor,
                    decoration: TextDecoration.underline,
                  ),
                ),
                const Text(
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
                    decoration: BoxDecoration(
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
                          margin: EdgeInsets.only(top: 50),
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
                    decoration: BoxDecoration(
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
                          margin: EdgeInsets.only(top: 50),
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
                    decoration: BoxDecoration(
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
                          margin: EdgeInsets.only(top: 50),
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
                    decoration: BoxDecoration(
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
                          margin: EdgeInsets.only(top: 50),
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
                    decoration: BoxDecoration(
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
                          margin: EdgeInsets.only(top: 50),
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
