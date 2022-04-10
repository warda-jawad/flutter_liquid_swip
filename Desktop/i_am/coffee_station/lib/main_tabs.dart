import 'package:coffee_station/core/constant.dart';
import 'package:coffee_station/screen/HomePage/page/home_page.dart';
import 'package:flutter/material.dart';

class MainTabs extends StatefulWidget {
  const MainTabs({Key? key}) : super(key: key);

  @override
  _MainTabsState createState() => _MainTabsState();
}

class _MainTabsState extends State<MainTabs> {
  @override
  Widget build(BuildContext context) {
    int activePage = 0;
    final List<Widget> _tabItems = [
      HomePage(),
      // Here must add your pages which will appear after clicking on bottom navigation bar
    ];
    return Scaffold(
      body: _tabItems[activePage],
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(50),
          child: BottomNavigationBar(
            currentIndex: activePage,
            onTap: (index) {
              setState(() {
                activePage = index;
              });
            },
            items: <BottomNavigationBarItem>[
              const BottomNavigationBarItem(
                icon: Icon(
                  Icons.person,
                  color: Colors.grey,
                ),
                label: '',
              ),
              const BottomNavigationBarItem(
                icon: Icon(
                  Icons.notifications,
                  color: Colors.grey,
                ),
                label: '',
              ),
              const BottomNavigationBarItem(
                icon: Icon(
                  Icons.inbox_sharp,
                  color: Colors.grey,
                ),
                label: '',
              ),
              const BottomNavigationBarItem(
                icon: Icon(
                  Icons.shopping_cart,
                  color: Colors.grey,
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  color: secondaryColor,
                ),
                label: '',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
