import 'package:coffee_station/core/constant.dart';
import 'package:flutter/material.dart';

class PaymentMap extends StatefulWidget {
  const PaymentMap({Key? key}) : super(key: key);

  @override
  State<PaymentMap> createState() => _PaymentMapState();
}

class _PaymentMapState extends State<PaymentMap> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: size.width,
          height: size.height,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                "assest/images/map.png",
              ),
              fit: BoxFit.fill,
            ),
          ),
          child: Column(
            //  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const SizedBox(
                    height: 200,
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 10),
                    width: size.width / 2,
                    height: size.height / 17,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: const [
                          Text(" رقم الطلب 120 "),
                        ],
                      ),
                    ),
                  ),
                  const Icon(Icons.search),
                ],
              ),
              Container(
                margin:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                width: size.width,
                height: size.height / 7,
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Text("تحديد الموقع "),
                      Text(
                        " النقرة , حائل 5345 , المملكة العربية السعودية",
                        style: TextStyle(
                          color: secondaryColor,
                        ),
                      ),
                      const Text("مكان المرسل اليه الطلب "),
                      const Text(
                        "انقر لتحديد موقع الاستلام ",
                        style: TextStyle(color: Colors.red),
                      ),
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  showDialog2();
                },
                child: Container(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 40, vertical: 80),
                  child: Icon(
                    Icons.location_on_rounded,
                    color: secondaryColor,
                    size: size.width / 6,
                  ),
                ),
              ),
              Container(
                width: size.width / 8,
                height: size.width / 8,
                margin: const EdgeInsets.only(top: 20, left: 320),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30)),
                child: const Icon(
                  Icons.send,
                  color: Colors.black,
                ),
              ),
            ],
          ),
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
              "  تم قبول طلبك لدى التاجر وجاري التجهيز",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            )),
            actions: <Widget>[
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Text("تتبع الاشارات"),
                    const Text("رقم التواصل "),
                    const Text("+972595925"),
                    Image.asset("assest/images/confiramtionImage.png"),
                    const SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              )
            ],
          );
        });
  }
}
