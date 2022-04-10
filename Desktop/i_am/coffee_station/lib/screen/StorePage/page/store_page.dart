import 'package:coffee_station/core/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class StorePage extends StatefulWidget {
  const StorePage({Key? key}) : super(key: key);

  @override
  _StorePageState createState() => _StorePageState();
}

class _StorePageState extends State<StorePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Image.asset(
                  "assest/images/zara.png",
                  width: size.width,
                  height: size.height / 2,
                  fit: BoxFit.fill,
                ),
                Container(
                  margin: const EdgeInsets.only(top: 300),
                  height: size.height,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: const [
                          Text(
                            "فرع الكورنيش 0110",
                            style: TextStyle(fontSize: 20, color: Colors.grey),
                          ),
                          Text(
                            "متجر زارا",
                            style: TextStyle(fontSize: 20, color: Colors.black),
                          )
                        ],
                      ),
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
                      const Text(
                        "الوصف",
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      ),
                      const Text(
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ornare leo non mollis id cursus. Eu euismod faucibus in leo malesuada"),
                      Divider(),
                      const Text("مواعيد العمل"),
                      const Text(" من 9 صباحا الى 10 صباحا"),
                      const Text(" رقم المتجر للتواصل"),
                      const Text(" +1 987 654 3210"),
                      Image.asset(
                        "assest/images/mapss.png",
                        width: size.width / 1.1,
                      ),
                      InkWell(
                        onTap: () {
                          showDialog2();
                        },
                        child: Container(
                          width: size.width / 1.1,
                          height: size.height / 13,
                          margin: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 40),
                          decoration: BoxDecoration(
                            color: primaryColor,
                            borderRadius:
                                const BorderRadius.all(Radius.circular(10)),
                          ),
                          child: const Center(
                            child: Text(
                              "دخول",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 24),
                            ),
                          ),
                        ),
                      ),
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

  showDialog2() {
    return showDialog(
        context: context,
        barrierDismissible: true,
        builder: (BuildContext context) {
          Size size = MediaQuery.of(context).size;
          return AlertDialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            title: const Center(
                child: Text(
              "تم الإضافة الى السلة",
              style: TextStyle(fontSize: 25),
            )),
            actions: <Widget>[
              Container(
                width: size.width / 1.1,
                height: size.height / 14,
                margin:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                decoration: BoxDecoration(
                  color: primaryColor,
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                ),
                child: const Center(
                  child: Text(
                    "الاستمرار بالتوسق",
                    style: TextStyle(color: Colors.white, fontSize: 24),
                  ),
                ),
              ),
              Container(
                width: size.width / 1,
                height: size.height / 14,
                margin:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                decoration: const BoxDecoration(
                  color: Colors.black,
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                ),
                child: const Center(
                  child: Text(
                    "يكفي",
                    style: TextStyle(color: Colors.white, fontSize: 24),
                  ),
                ),
              ),
            ],
          );
        });
  }
}
