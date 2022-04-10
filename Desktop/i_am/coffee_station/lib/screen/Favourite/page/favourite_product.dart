import 'package:coffee_station/core/constant.dart';
import 'package:flutter/material.dart';

class FavouriteProduct extends StatelessWidget {
  const FavouriteProduct({Key? key}) : super(key: key);

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
                            "منتجاتي المفضلة",
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
                const Text(
                  "محلاتي المفضلة",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                Text(
                  "منتجاتي المفضلة",
                  style: TextStyle(
                    fontSize: 20,
                    color: secondaryColor,
                    decoration: TextDecoration.underline,
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
                          Row(
                            children: [
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
                              const SizedBox(
                                width: 25,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: const [
                                  Icon(Icons.cancel_outlined),
                                ],
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
                ),
                Container(
                  //   width: size.width / 2,
                  child: Column(
                    children: [
                      Stack(
                        children: [
                          Image.asset("assest/images/coffee4.png"),
                          Row(
                            children: [
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
                              SizedBox(
                                width: 25,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Icon(Icons.cancel_outlined),
                                ],
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
                          Row(
                            children: [
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
                              SizedBox(
                                width: 25,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Icon(Icons.cancel_outlined),
                                ],
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
                ),
                Container(
                  //   width: size.width / 2,
                  child: Column(
                    children: [
                      Stack(
                        children: [
                          Image.asset("assest/images/coffee4.png"),
                          Row(
                            children: [
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
                              SizedBox(
                                width: 25,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Icon(Icons.cancel_outlined),
                                ],
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
                          Row(
                            children: [
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
                                  children: [
                                    Row(
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
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 25,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Icon(Icons.cancel_outlined),
                                ],
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
                ),
                Container(
                  //   width: size.width / 2,
                  child: Column(
                    children: [
                      Stack(
                        children: [
                          Image.asset("assest/images/coffee4.png"),
                          Row(
                            children: [
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
                              SizedBox(
                                width: 25,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Icon(Icons.cancel_outlined),
                                ],
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
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
