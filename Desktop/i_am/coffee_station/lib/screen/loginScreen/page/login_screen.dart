import 'dart:ui';

import 'package:coffee_station/core/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String _selected = ' 546***** رقم الهاتف';
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: primaryColor,
        resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    // White Container
                    margin: const EdgeInsets.only(top: 150),
                    height: size.height,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      ),
                    ),
                    child: Stack(
                      children: [
                        Column(
                          children: [
                            Container(
                              width: size.width,
                              margin: const EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 40),
                              child: const Center(
                                child: Text(
                                  "تسجيل الدخول",
                                  style: TextStyle(
                                      fontSize: 26,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.symmetric(
                                  horizontal: 35, vertical: 20),
                              child: const TextField(
                                decoration: InputDecoration(
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                          width: 1, color: Colors.grey),
                                    ),
                                    labelText: " اسم المستخدم ",
                                    labelStyle: TextStyle(
                                        fontSize: 20, color: Colors.black)),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.symmetric(
                                  horizontal: 35, vertical: 20),
                              child: const TextField(
                                decoration: InputDecoration(
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                          width: 1, color: Colors.grey),
                                    ),
                                    labelText: " كلمة المرور ",
                                    labelStyle: TextStyle(
                                        fontSize: 20, color: Colors.black)),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              // this line very important for correct transformation when make multi language
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(right: 20),
                                  child: Text(
                                    " هل نسيت كلمة المرور؟ ",
                                    style: TextStyle(
                                        color: secondaryColor, fontSize: 17),
                                  ),
                                ),
                              ],
                            ),
                            InkWell(
                              onTap: () {
                                showDialog1();
                              },
                              child: Container(
                                width: size.width / 1.1,
                                height: size.height / 13,
                                margin: const EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 40),
                                decoration: BoxDecoration(
                                  color: primaryColor,
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(10)),
                                ),
                                child: const Center(
                                  child: Text(
                                    "دخول",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 24),
                                  ),
                                ),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Container(
                                  width: size.width / 2.3,
                                  height: size.height / 15,
                                  margin: const EdgeInsets.symmetric(
                                      horizontal: 10, vertical: 40),
                                  decoration: const BoxDecoration(
                                    color: Colors.black,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10)),
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: const [
                                      Center(
                                        child: Text(
                                          "Facebook",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18),
                                        ),
                                      ),
                                      Icon(
                                        Icons.facebook_outlined,
                                        color: Colors.white,
                                        size: 35,
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  width: size.width / 2.3,
                                  height: size.height / 15,
                                  margin: const EdgeInsets.symmetric(
                                      horizontal: 10, vertical: 40),
                                  decoration: const BoxDecoration(
                                    color: Colors.black,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10)),
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      const Center(
                                        child: Text(
                                          "Google",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18),
                                        ),
                                      ),
                                      Image.asset(
                                        "assest/images/google.png",
                                        width: 30,
                                        height: 30,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              margin: const EdgeInsets.symmetric(
                                  horizontal: 90, vertical: 20),
                              child: Row(
                                children: [
                                  Text(
                                    "  إنشاء حساب جديد ",
                                    style: TextStyle(
                                        fontSize: 17, color: secondaryColor),
                                  ),
                                  const SizedBox(
                                    width: 8,
                                  ),
                                  Text(
                                    "ليس لديك حساب؟ ",
                                    style: TextStyle(
                                        fontSize: 17, color: greyColor),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  Center(
                    child: Container(
                        margin: const EdgeInsets.only(top: 90),
                        child: Image.asset("assest/images/logo.png")),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  //////////////////// LOGIN MESSAGES
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
            title: const Text("اختار الطريقة المناسبة لك لإرسال الكود"),
            actions: <Widget>[
              ListTile(
                leading: Radio<String>(
                  value: ' 546***** رقم الهاتف',
                  groupValue: _selected,
                  onChanged: (value) {
                    setState(() {
                      _selected = value!;
                    });
                  },
                ),
                title: const Text(' 546***** رقم الهاتف'),
              ),
              ListTile(
                leading: Radio<String>(
                  value: 'waradajaw****الايميل',
                  groupValue: _selected,
                  onChanged: (value) {
                    setState(() {
                      _selected = value!;
                    });
                  },
                ),
                title: const Text('waradajaw****الايميل'),
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
                    "ارسال",
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
            title: const Center(
                child: Text(
              "التحقق",
              style: TextStyle(fontSize: 25),
            )),
            //content: Text("body"),
            actions: <Widget>[
              Center(
                child: Text(
                  " طلبت تغيير الرقم السري نرجو ادخال الكود المرسل الى (جوالك) ",
                  style: TextStyle(color: greyColor),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      color: boxColor,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    margin:
                        const EdgeInsets.symmetric(horizontal: 5, vertical: 20),
                    child: const TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        prefixIcon: Icon(
                          Icons.star,
                          size: 20,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      color: boxColor,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    margin:
                        const EdgeInsets.symmetric(horizontal: 5, vertical: 20),
                    child: const TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        prefixIcon: Icon(
                          Icons.star,
                          size: 20,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      color: boxColor,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    margin:
                        const EdgeInsets.symmetric(horizontal: 5, vertical: 20),
                    child: const TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        prefixIcon: Icon(
                          Icons.star,
                          size: 20,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      color: boxColor,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    margin:
                        const EdgeInsets.symmetric(horizontal: 5, vertical: 20),
                    child: const TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        prefixIcon: Icon(
                          Icons.star,
                          size: 20,
                        ),
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
                decoration: BoxDecoration(
                  color: primaryColor,
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                ),
                child: const Center(
                  child: Text(
                    "تاكيد",
                    style: TextStyle(color: Colors.white, fontSize: 24),
                  ),
                ),
              ),
              Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 70, vertical: 20),
                child: Row(
                  children: [
                    Text(
                      "    انقر هنا ",
                      style: TextStyle(fontSize: 17, color: secondaryColor),
                    ),
                    Text(
                      " لم تستلم ؟ ",
                      style: TextStyle(fontSize: 17, color: greyColor),
                    ),
                  ],
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
              "إعادة تعيين كلمة المرور",
              style: TextStyle(fontWeight: FontWeight.bold),
            )),
            actions: <Widget>[
              Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 35, vertical: 20),
                child: const TextField(
                  decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(width: 1, color: Colors.grey),
                      ),
                      labelText: " كلمة المرور الجديدة",
                      labelStyle: TextStyle(fontSize: 20, color: Colors.black)),
                ),
              ),
              Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 35, vertical: 20),
                child: const TextField(
                  decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(width: 1, color: Colors.grey),
                      ),
                      labelText: "تآكيد كلمة المرور الجديدة ",
                      labelStyle: TextStyle(fontSize: 20, color: Colors.black)),
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
}
