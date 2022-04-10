import 'package:coffee_station/core/constant.dart';
import 'package:flutter/material.dart';

class FullCard extends StatefulWidget {
  const FullCard({Key? key}) : super(key: key);

  @override
  State<FullCard> createState() => _FullCardState();
}

class _FullCardState extends State<FullCard> {
  int _n = 0;
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
                            " سلتي",
                            style: TextStyle(fontSize: 25, color: Colors.white),
                          ),
                        ),
                        const SizedBox(
                          width: 120,
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
            Container(
              margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: size.width / 2,
                      child: Column(
                        //    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Row(
                            children: const [
                              Icon(
                                Icons.cancel_outlined,
                                size: 30,
                              ),
                              Icon(
                                Icons.check_circle_outline,
                                size: 30,
                              ),
                              SizedBox(
                                width: 80,
                              ),
                              Text(
                                "120#",
                                style: TextStyle(fontSize: 20),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                width: size.width / 4,
                                height: size.height / 35,
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    InkWell(
                                        onTap: () {
                                          setState(() {
                                            if (_n != 0) _n--;
                                          });
                                        },
                                        child: const Text(" - ",
                                            style: TextStyle(fontSize: 20.0))),
                                    Text('$_n',
                                        style: const TextStyle(fontSize: 20.0)),
                                    InkWell(
                                        onTap: () {
                                          setState(() {
                                            _n++;
                                          });
                                        },
                                        child: const Text(" + ",
                                            style: TextStyle(fontSize: 20.0))),
                                  ],
                                ),
                              ),
                              const Text(
                                " الكمية",
                                style: TextStyle(
                                    fontSize: 13, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          // SizedBox(
                          //   height: 10,
                          // ),
                          Row(
                            //mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                width: size.width / 4,
                                height: size.height / 35,
                                margin: const EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 20),
                                child: const TextField(
                                  decoration: InputDecoration(
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          width: 1, color: Colors.grey),
                                    ),
                                  ),
                                ),
                              ),
                              const Text(
                                ": كود الخصم",
                                style: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // width: size.width / 2,
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
                                            style:
                                                TextStyle(color: Colors.white),
                                          )),
                                        ],
                                      )),
                                ],
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
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: size.width / 2,
                      child: Column(
                        //    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Row(
                            children: const [
                              Icon(
                                Icons.cancel_outlined,
                                size: 30,
                              ),
                              Icon(
                                Icons.check_circle_outline,
                                size: 30,
                              ),
                              SizedBox(
                                width: 80,
                              ),
                              Text(
                                "120#",
                                style: TextStyle(fontSize: 20),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                width: size.width / 4,
                                height: size.height / 35,
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    InkWell(
                                        onTap: () {
                                          setState(() {
                                            if (_n != 0) _n--;
                                          });
                                        },
                                        child: const Text(" - ",
                                            style: TextStyle(fontSize: 20.0))),
                                    Text('$_n',
                                        style: const TextStyle(fontSize: 20.0)),
                                    InkWell(
                                        onTap: () {
                                          setState(() {
                                            _n++;
                                          });
                                        },
                                        child: const Text(" + ",
                                            style: TextStyle(fontSize: 20.0))),
                                  ],
                                ),
                              ),
                              const Text(
                                " الكمية",
                                style: TextStyle(
                                    fontSize: 13, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          // SizedBox(
                          //   height: 10,
                          // ),
                          Row(
                            //mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                width: size.width / 4,
                                height: size.height / 35,
                                margin: const EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 20),
                                child: const TextField(
                                  decoration: InputDecoration(
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          width: 1, color: Colors.grey),
                                    ),
                                  ),
                                ),
                              ),
                              const Text(
                                ": كود الخصم",
                                style: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // width: size.width / 2,
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
                                            style:
                                                TextStyle(color: Colors.white),
                                          )),
                                        ],
                                      )),
                                ],
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
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: size.width / 2,
                      child: Column(
                        //    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Row(
                            children: const [
                              Icon(
                                Icons.cancel_outlined,
                                size: 30,
                              ),
                              Icon(
                                Icons.check_circle_outline,
                                size: 30,
                              ),
                              SizedBox(
                                width: 80,
                              ),
                              Text(
                                "120#",
                                style: TextStyle(fontSize: 20),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                width: size.width / 4,
                                height: size.height / 35,
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    InkWell(
                                        onTap: () {
                                          setState(() {
                                            if (_n != 0) _n--;
                                          });
                                        },
                                        child: const Text(" - ",
                                            style: TextStyle(fontSize: 20.0))),
                                    Text('$_n',
                                        style: const TextStyle(fontSize: 20.0)),
                                    InkWell(
                                        onTap: () {
                                          setState(() {
                                            _n++;
                                          });
                                        },
                                        child: const Text(" + ",
                                            style: TextStyle(fontSize: 20.0))),
                                  ],
                                ),
                              ),
                              const Text(
                                " الكمية",
                                style: TextStyle(
                                    fontSize: 13, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          // SizedBox(
                          //   height: 10,
                          // ),
                          Row(
                            //mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                width: size.width / 4,
                                height: size.height / 35,
                                margin: const EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 20),
                                child: const TextField(
                                  decoration: InputDecoration(
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          width: 1, color: Colors.grey),
                                    ),
                                  ),
                                ),
                              ),
                              const Text(
                                ": كود الخصم",
                                style: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // width: size.width / 2,
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
                                            style:
                                                TextStyle(color: Colors.white),
                                          )),
                                        ],
                                      )),
                                ],
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
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: size.width / 2,
                      child: Column(
                        //    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Row(
                            children: const [
                              Icon(
                                Icons.cancel_outlined,
                                size: 30,
                              ),
                              Icon(
                                Icons.check_circle_outline,
                                size: 30,
                              ),
                              SizedBox(
                                width: 80,
                              ),
                              Text(
                                "120#",
                                style: TextStyle(fontSize: 20),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                width: size.width / 4,
                                height: size.height / 35,
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    InkWell(
                                        onTap: () {
                                          setState(() {
                                            if (_n != 0) _n--;
                                          });
                                        },
                                        child: const Text(" - ",
                                            style: TextStyle(fontSize: 20.0))),
                                    Text('$_n',
                                        style: const TextStyle(fontSize: 20.0)),
                                    InkWell(
                                        onTap: () {
                                          setState(() {
                                            _n++;
                                          });
                                        },
                                        child: const Text(" + ",
                                            style: TextStyle(fontSize: 20.0))),
                                  ],
                                ),
                              ),
                              const Text(
                                " الكمية",
                                style: TextStyle(
                                    fontSize: 13, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          // SizedBox(
                          //   height: 10,
                          // ),
                          Row(
                            //mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                width: size.width / 4,
                                height: size.height / 35,
                                margin: const EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 20),
                                child: const TextField(
                                  decoration: InputDecoration(
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          width: 1, color: Colors.grey),
                                    ),
                                  ),
                                ),
                              ),
                              const Text(
                                ": كود الخصم",
                                style: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // width: size.width / 2,
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
                                            style:
                                                TextStyle(color: Colors.white),
                                          )),
                                        ],
                                      )),
                                ],
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
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: size.width / 2,
                      child: Column(
                        //    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Row(
                            children: const [
                              Icon(
                                Icons.cancel_outlined,
                                size: 30,
                              ),
                              Icon(
                                Icons.check_circle_outline,
                                size: 30,
                              ),
                              SizedBox(
                                width: 80,
                              ),
                              Text(
                                "120#",
                                style: TextStyle(fontSize: 20),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                width: size.width / 4,
                                height: size.height / 35,
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    InkWell(
                                        onTap: () {
                                          setState(() {
                                            if (_n != 0) _n--;
                                          });
                                        },
                                        child: const Text(" - ",
                                            style: TextStyle(fontSize: 20.0))),
                                    Text('$_n',
                                        style: const TextStyle(fontSize: 20.0)),
                                    InkWell(
                                        onTap: () {
                                          setState(() {
                                            _n++;
                                          });
                                        },
                                        child: const Text(" + ",
                                            style: TextStyle(fontSize: 20.0))),
                                  ],
                                ),
                              ),
                              const Text(
                                " الكمية",
                                style: TextStyle(
                                    fontSize: 13, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          // SizedBox(
                          //   height: 10,
                          // ),
                          Row(
                            //mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                width: size.width / 4,
                                height: size.height / 35,
                                margin: const EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 20),
                                child: const TextField(
                                  decoration: InputDecoration(
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          width: 1, color: Colors.grey),
                                    ),
                                  ),
                                ),
                              ),
                              const Text(
                                ": كود الخصم",
                                style: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // width: size.width / 2,
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
                                            style:
                                                TextStyle(color: Colors.white),
                                          )),
                                        ],
                                      )),
                                ],
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
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
