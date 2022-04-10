import 'package:flutter/material.dart';

class SideDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: 0.5,
      child: Drawer(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 10,
            ),
            ListTile(
              title: Text(
                ' تسجيل الدخول',
                style: TextStyle(color: Colors.white),
              ),
              //   onTap: () => {},
            ),
            ListTile(
              title: Text(
                'الصفحة الرئيسية',
                style: TextStyle(color: Colors.white),
              ),
              //   onTap: () => {},
            ),
            Divider(
              color: Colors.white,
            ),
            ListTile(
              title: Text(
                'الأصناف',
                style: TextStyle(color: Colors.white),
              ),
              onTap: () => {Navigator.of(context).pop()},
            ),
            Divider(
              color: Colors.white,
            ),
            ListTile(
              title: Text(
                'المتاجر',
                style: TextStyle(color: Colors.white),
              ),
            ),
            Divider(
              color: Colors.white,
            ),
            ListTile(
              title: Text(
                'الباقات',
                style: TextStyle(color: Colors.white),
              ),
            ),
            Divider(
              color: Colors.white,
            ),
            ListTile(
              title: Text(
                'بطاقاتي',
                style: TextStyle(color: Colors.white),
              ),
            ),
            Divider(
              color: Colors.white,
            ),
            ListTile(
              title: Text(
                'اللغة',
                style: TextStyle(color: Colors.white),
              ),
            ),
            Divider(
              color: Colors.white,
            ),
            ListTile(
              title: Text(
                'تسجيل كتاجر',
                style: TextStyle(color: Colors.white),
              ),
            ),
            Divider(
              color: Colors.white,
            ),
            ListTile(
              title: Text(
                'تسجيل كمندوب',
                style: TextStyle(color: Colors.white),
              ),
            ),
            Divider(
              color: Colors.white,
            ),
            ListTile(
              title: Text(
                ' عن التطبيق',
                style: TextStyle(color: Colors.white),
              ),
            ),
            Divider(
              color: Colors.white,
            ),
            ListTile(
              title: Text(
                'سياسة الاستخدام والأحكام ',
                style: TextStyle(color: Colors.white),
              ),
            ),
            Divider(
              color: Colors.white,
            ),
            //   ListTile(
            //   title:
            Text(
              ' تسجيل الخروج  ',
              style: TextStyle(color: Colors.white),
              //   ),
            ),
          ],
        ),
      ),
    );
  }
}
