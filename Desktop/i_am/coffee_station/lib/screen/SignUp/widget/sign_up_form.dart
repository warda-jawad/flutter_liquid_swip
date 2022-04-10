import 'package:flutter/material.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 35, vertical: 10),
            child: const TextField(
              decoration: InputDecoration(
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(width: 1, color: Colors.grey),
                ),
                labelText: " الاسم كامل (لن يظهر للجميع) ",
                labelStyle: TextStyle(fontSize: 20, color: Colors.black),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 35, vertical: 10),
            child: const TextField(
              decoration: InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(width: 1, color: Colors.grey),
                  ),
                  labelText: "  اسم المستخدم ( سيظهر للجميع)",
                  labelStyle: TextStyle(fontSize: 20, color: Colors.black)),
            ),
          ),

          //
          // Container(
          //   margin: const EdgeInsets.symmetric(
          //     horizontal: 35,
          //   ),
          //   child: RichText(
          //     text: TextSpan(
          //         text: "Password",
          //         style: TextStyle(fontSize: 18, color: Colors.black),
          //         children: <TextSpan>[
          //           TextSpan(
          //               text: ' (will appear) ',
          //               style: TextStyle(color: Colors.grey, fontSize: 18))
          //         ]),
          //   ),
          // ),
          Container(
            margin: const EdgeInsets.symmetric(
              horizontal: 35,
            ),
            child: const TextField(
              decoration: InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(width: 1, color: Colors.grey),
                  ),
                  labelText: " كلمة المرور ",
                  labelStyle: TextStyle(fontSize: 20, color: Colors.black)),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 35, vertical: 10),
            child: const TextField(
              decoration: InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(width: 1, color: Colors.grey),
                  ),
                  labelText: "  تآكيد كلمة المرور  ",
                  labelStyle: TextStyle(fontSize: 20, color: Colors.black)),
            ),
          ),

          Container(
            margin: const EdgeInsets.symmetric(horizontal: 35, vertical: 10),
            child: const TextField(
              decoration: InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(width: 1, color: Colors.grey),
                  ),
                  labelText: "  الموقع ( سيظهر للجميع )",
                  labelStyle: TextStyle(fontSize: 20, color: Colors.black)),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 35, vertical: 10),
            child: const TextField(
              decoration: InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(width: 1, color: Colors.grey),
                  ),
                  labelText: " الايميل ( لن يظهر للجميع)",
                  labelStyle: TextStyle(fontSize: 20, color: Colors.black)),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 35, vertical: 10),
            child: const TextField(
              decoration: InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(width: 1, color: Colors.grey),
                  ),
                  labelText: "   رقم الهاتف ( اختياري)",
                  labelStyle: TextStyle(fontSize: 20, color: Colors.black)),
            ),
          ),
        ],
      ),
    );
  }
}
