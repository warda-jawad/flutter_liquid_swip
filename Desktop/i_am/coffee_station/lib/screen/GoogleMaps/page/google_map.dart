import 'package:coffee_station/core/constant.dart';
import 'package:flutter/material.dart';

class GoogleMap extends StatefulWidget {
  const GoogleMap({Key? key}) : super(key: key);

  @override
  _GoogleMapState createState() => _GoogleMapState();
}

class _GoogleMapState extends State<GoogleMap> {
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
              image: AssetImage("assest/images/map.png"),
              fit: BoxFit.fill,
            ),
          ),
          child: Column(
            children: [
              Container(
                width: size.width / 1.3,
                height: size.height / 17,
                decoration: BoxDecoration(
                  color: boxColor,
                  borderRadius: BorderRadius.circular(15),
                ),
                margin: const EdgeInsets.only(top: 80),
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    prefixIcon: const Icon(
                      Icons.search,
                      size: 20,
                    ),
                    label: const Text("ابحث هنا"),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 1, color: boxColor),
                    ),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 20),
                width: size.width / 1.1,
                height: size.height / 9,
                decoration: BoxDecoration(
                  color: boxColor,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: const Center(
                    child: Text(
                  "نرجو تحديد الموقع حتى يتم عرض أقرب المتاجر اليك",
                  style: TextStyle(fontSize: 17),
                )),
              ),
              Container(
                margin: const EdgeInsets.only(top: 100),
                child: Icon(
                  Icons.location_on_outlined,
                  size: 100,
                  color: secondaryColor,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    width: size.width / 8,
                    height: size.width / 8,
                    margin: const EdgeInsets.only(top: 20, right: 10),
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
              const SizedBox(
                height: 120,
              ),
              Container(
                width: size.width / 1.1,
                height: size.height / 13,
                margin:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                decoration: BoxDecoration(
                  color: primaryColor,
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                ),
                child: const Center(
                  child: Text(
                    "تأكيد",
                    style: TextStyle(color: Colors.white, fontSize: 24),
                  ),
                ),
              ),
              Container(
                width: size.width / 1.1,
                height: size.height / 13,
                margin:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                decoration: const BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: const Center(
                  child: Text(
                    "تخطي تحديد الموقع",
                    style: TextStyle(color: Colors.white, fontSize: 24),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
