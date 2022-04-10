import 'package:coffee_station/core/constant.dart';
import 'package:flutter/material.dart';

class Payment extends StatefulWidget {
  const Payment({Key? key}) : super(key: key);

  @override
  _PaymentState createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  int _n = 0;

  bool checkedValue = false;
  bool checkedValue2 = false;
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
                  height: size.height / 5,
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
                            " الدفع",
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Icon(Icons.navigate_before),
                Icon(Icons.navigate_next),
              ],
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
              width: size.width,
              height: size.height / 4,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Card(
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
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: const [
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
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
                                                style:
                                                    TextStyle(fontSize: 20.0))),
                                        Text('$_n',
                                            style: const TextStyle(
                                                fontSize: 20.0)),
                                        InkWell(
                                            onTap: () {
                                              setState(() {
                                                _n++;
                                              });
                                            },
                                            child: const Text(" + ",
                                                style:
                                                    TextStyle(fontSize: 20.0))),
                                      ],
                                    ),
                                  ),
                                  const Text(
                                    " الكمية",
                                    style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              Row(
                                //  mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Text(
                                    "تعديل التفاصيل",
                                    style: TextStyle(color: secondaryColor),
                                  ),
                                  Icon(Icons.add_circle_outline,
                                      size: 30, color: secondaryColor),
                                  SizedBox(
                                    width: 80,
                                  ),
                                ],
                              ),
                              Text("  سكر،  توفي،   حليب"),
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
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              Row(
                                //  mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text(
                                    " آضف ملاحظاتك عالطلب",
                                    style: TextStyle(color: secondaryColor),
                                  ),
                                  Icon(Icons.add_circle_outline,
                                      size: 20, color: secondaryColor),
                                  SizedBox(
                                    width: 80,
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
                                                style: TextStyle(
                                                    color: Colors.white),
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
                                          Image.asset(
                                              "assest/images/leaf2.png"),
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
                                            color: secondaryColor,
                                            fontSize: 12),
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
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: size.width / 2,
                  height: size.height / 20,
                  margin:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: const TextField(
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 1, color: Colors.grey),
                      ),
                    ),
                  ),
                ),
                Text(
                  "نوعية التوصيل",
                  style: TextStyle(fontSize: 20),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: size.width / 2,
                  height: size.height / 20,
                  margin:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: const TextField(
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 1, color: Colors.grey),
                      ),
                    ),
                  ),
                ),
                Text(
                  " أدخل سعر المقترح",
                  style: TextStyle(fontSize: 20),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: size.width / 2,
                  height: size.height / 20,
                  margin:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: const TextField(
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 1, color: Colors.grey),
                      ),
                    ),
                  ),
                ),
                Text(
                  " أدخل كود الخصم",
                  style: TextStyle(fontSize: 20),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: size.width / 2,
                  height: size.height / 20,
                  margin:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: const TextField(
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 1, color: Colors.grey),
                      ),
                    ),
                  ),
                ),
                Text(
                  " أضف وقت التسليم",
                  style: TextStyle(fontSize: 20),
                ),
              ],
            ),
            Divider(),
            Text("طريقة الدفع"),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 130,
                  height: 70,
                  child: CheckboxListTile(
                    title: Text("الكتروني "), //    <-- label
                    value: checkedValue,
                    onChanged: (value) {
                      setState(() {
                        checkedValue = value!;
                      });
                    },
                  ),
                ),
                Container(
                  width: 120,
                  height: 70,
                  child: CheckboxListTile(
                    title: Text(" كاش"), //    <-- label
                    value: checkedValue2,
                    onChanged: (value) {
                      setState(() {
                        checkedValue2 = value!;
                      });
                    },
                  ),
                ),
              ],
            ),
            InkWell(
              onTap: () {
                showDialog3();
              },
              child: Container(
                width: size.width / 1.1,
                height: size.height / 13,
                margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 1),
                decoration: BoxDecoration(
                  color: primaryColor,
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                ),
                child: const Center(
                  child: Text(
                    "تحديد عنوان الاستلام",
                    style: TextStyle(color: Colors.white, fontSize: 24),
                  ),
                ),
              ),
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
              "اضف التفاصيل",
              style: TextStyle(fontSize: 25),
            )),
            //content: Text("body"),
            actions: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
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
                        "حليب",
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
                    width: size.width / 3,
                    height: size.height / 18.5,
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Center(
                      child: Text(
                        "بدون سكر ",
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
                        "  كريمة",
                        style: TextStyle(color: Colors.black, fontSize: 15),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                width: size.width / 1.1,
                height: size.height / 13,
                margin:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 30),
                decoration: const BoxDecoration(
                  color: Colors.black,
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                ),
                child: const Center(
                  child: Text(
                    "تاكيد",
                    style: TextStyle(color: Colors.white, fontSize: 24),
                  ),
                ),
              ),
            ],
          );
        });
  }

  showDialog3() {
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
              "أضف ملاحظاتك على الطلب ",
              style: TextStyle(fontSize: 25),
            )),
            //content: Text("body"),
            actions: <Widget>[
              Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 35, vertical: 20),
                child: const TextField(
                  keyboardType: TextInputType.multiline,
                  maxLength: 70,
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 1, color: Colors.grey),
                      ),
                      hintText: "  اكتب هنا ",
                      labelStyle: TextStyle(fontSize: 15, color: Colors.black)),
                ),
              ),
              Container(
                width: size.width / 1.1,
                height: size.height / 13,
                margin:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 30),
                decoration: const BoxDecoration(
                  color: Colors.black,
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                ),
                child: const Center(
                  child: Text(
                    "تاكيد",
                    style: TextStyle(color: Colors.white, fontSize: 24),
                  ),
                ),
              ),
            ],
          );
        });
  }
}
