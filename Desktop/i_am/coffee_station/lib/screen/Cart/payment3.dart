import 'package:coffee_station/core/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class Payement3 extends StatefulWidget {
  const Payement3({Key? key}) : super(key: key);

  @override
  _Payement3State createState() => _Payement3State();
}

class _Payement3State extends State<Payement3> {
  bool checkedValue = false;
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
            Stack(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                  width: size.width,
                  height: size.height / 4,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        "assest/images/map4.png",
                      ),
                      fit: BoxFit.fill,
                    ),
                  ),
                  child: Image.asset("assest/images/track.png"),
                ),
                Center(
                  child: Container(
                    width: size.width / 2.5,
                    height: size.height / 16,
                    margin: EdgeInsets.only(top: 230),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                          color: secondaryColor,
                        )),
                    child: Center(
                      child: Text(
                        "إعادة تعيين الموقع",
                        style: TextStyle(color: secondaryColor, fontSize: 20),
                      ),
                    ),
                  ),
                )
              ],
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        "أضف بطاقة",
                        style: TextStyle(fontSize: 15, color: secondaryColor),
                      ),
                      Icon(
                        Icons.add_circle_outline,
                        color: secondaryColor,
                        size: 30,
                      ),
                    ],
                  ),
                  const Text(
                    "اختر البطاقة",
                    style: TextStyle(fontSize: 20, color: Colors.grey),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Icon(
                  Icons.arrow_back_ios,
                  size: 30,
                ),
                Icon(
                  Icons.navigate_next_outlined,
                  size: 30,
                ),
              ],
            ),
            SizedBox(
              width: size.width,
              height: size.height / 8,
              // margin: const EdgeInsets.symmetric(
              //   horizontal: 10,
              // ),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Image.asset(
                    "assest/images/mastercard.png",
                    fit: BoxFit.fill,
                    width: 150,
                  ),
                  Image.asset(
                    "assest/images/mastercard.png",
                    fit: BoxFit.fill,
                    width: 150,
                  ),
                  Image.asset(
                    "assest/images/mastercard.png",
                    fit: BoxFit.fill,
                    width: 150,
                  ),
                  Image.asset(
                    "assest/images/mastercard.png",
                    fit: BoxFit.fill,
                    width: 150,
                  ),
                ],
              ),
            ),
            Text(
              "اسم البطاقة",
              style: TextStyle(color: Colors.grey[500], fontSize: 20),
            ),
            Text("Warda Sobaih"),
            Divider(),
            Text(
              "رقم البطاقة",
              style: TextStyle(color: Colors.grey[500], fontSize: 20),
            ),
            Text("1234    5555    7777    8888"),
            Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const SizedBox(
                  width: 20,
                ),
                Text(
                  "Expiry Date",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.grey[500],
                  ),
                ),
                const SizedBox(
                  width: 130,
                ),
                Text(
                  "CVV ",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  width: size.width / 2.5,
                  //    height: size.height/10,
                  margin:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  child: const TextField(
                    decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(width: 1, color: Colors.grey),
                        ),
                        labelText: " 18/7  ",
                        labelStyle:
                            TextStyle(fontSize: 20, color: Colors.black)),
                  ),
                ),
                Container(
                  width: size.width / 2.5,
                  //    height: size.height/10,
                  margin:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  child: const TextField(
                    decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(width: 1, color: Colors.grey),
                        ),
                        labelText: " 667  ",
                        labelStyle:
                            TextStyle(fontSize: 20, color: Colors.black)),
                  ),
                )
              ],
            ),
            Text(
              " visa حفظ البطاقة  ",
              style: TextStyle(color: secondaryColor, fontSize: 20),
            ),
            InkWell(
              onTap: () {
                showDialog1();
              },
              child: Container(
                width: size.width / 1.1,
                height: size.height / 13,
                margin:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 40),
                decoration: BoxDecoration(
                  color: primaryColor,
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                ),
                child: const Center(
                  child: Text(
                    "ادفع",
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

  showDialog1() {
    return showDialog(
        context: context,
        barrierDismissible: true,
        builder: (BuildContext context) {
          Size size = MediaQuery.of(context).size;
          return AlertDialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            title: Center(child: const Text(" اضافة بطاقة")),
            actions: <Widget>[
              Text(
                "الاسم ",
                style: TextStyle(color: Colors.grey[500], fontSize: 20),
              ),
              Text("Warda Sobaih"),
              Divider(),
              Text(
                "رقم البطاقة",
                style: TextStyle(color: Colors.grey[500], fontSize: 20),
              ),
              Text("1234    5555    7777    8888"),
              Divider(),
              Row(
                //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const SizedBox(
                    width: 20,
                  ),
                  Text(
                    "Expiry Date",
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.grey[500],
                    ),
                  ),
                  const SizedBox(
                    width: 130,
                  ),
                  Text(
                    "CVV ",
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.grey[500],
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    width: size.width / 3.4,
                    //    height: size.height/10,
                    margin: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 20),
                    child: const TextField(
                      decoration: InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                            borderSide:
                                BorderSide(width: 1, color: Colors.grey),
                          ),
                          labelText: " 18/7  ",
                          labelStyle:
                              TextStyle(fontSize: 20, color: Colors.black)),
                    ),
                  ),
                  Container(
                    width: size.width / 3.4,
                    //    height: size.height/10,
                    margin: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 20),
                    child: const TextField(
                      decoration: InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                            borderSide:
                                BorderSide(width: 1, color: Colors.grey),
                          ),
                          labelText: " 667  ",
                          labelStyle:
                              TextStyle(fontSize: 20, color: Colors.black)),
                    ),
                  )
                ],
              ),
              Container(
                width: size.width,
                //height: 70,
                child: CheckboxListTile(
                  title: Center(
                    child: Text(
                      "هل تريد استخدام البطاقة دائما ام لا ",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ), //    <-- label
                  value: checkedValue,
                  onChanged: (value) {
                    setState(() {
                      checkedValue = value!;
                    });
                  },
                ),
              ),
              Container(
                width: size.width / 1.1,
                height: size.height / 13,
                margin:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 40),
                decoration: BoxDecoration(
                  color: primaryColor,
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                ),
                child: const Center(
                  child: Text(
                    "حفظ",
                    style: TextStyle(color: Colors.white, fontSize: 24),
                  ),
                ),
              ),
            ],
          );
        });
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
            title:
                const Center(child: const Text(" البيانات المدخلة غير صحيحة ")),
            actions: <Widget>[
              const Center(child: Text("هناك خلل تأكد من بيانات البطاقة")),
              const Center(
                child: Icon(
                  Icons.cancel,
                  size: 100,
                  color: Colors.red,
                ),
              ),
              Row(
                children: [
                  Container(
                    width: size.width / 5,
                    height: size.height / 19,
                    margin: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 40),
                    decoration: const BoxDecoration(
                      color: Colors.black,
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                    ),
                    child: const Center(
                      child: Text(
                        "الدفع نقدا",
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                    ),
                  ),
                  Container(
                    width: size.width / 5,
                    height: size.height / 19,
                    margin: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 40),
                    decoration: BoxDecoration(
                      color: primaryColor,
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                    ),
                    child: const Center(
                      child: Text(
                        " بطاقة جديدة",
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                    ),
                  ),
                  Container(
                    width: size.width / 5,
                    height: size.height / 19,
                    margin: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 40),
                    decoration: BoxDecoration(
                      color: secondaryColor,
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                    ),
                    child: const Center(
                      child: Text(
                        "  أعادة المحاولة",
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                    ),
                  ),
                ],
              )
            ],
          );
        });
  }
}
