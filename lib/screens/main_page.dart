import 'package:flutter/material.dart';

import 'package:travel_app/screens/navbarPages/blogs_screen.dart';
import 'package:travel_app/screens/navbarPages/my_page.dart';

import 'package:travel_app/screens/navbarPages/search_screen.dart';

import 'navbarPages/home_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List pages = [
    HomePage(),
    BlogScreen(),
    SearchScreen(),
    MyPage(),
  ];
  int currentIndex = 0;
  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          onTap: onTap,
          currentIndex: currentIndex,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.deepPurple,
          unselectedItemColor: Colors.grey.withOpacity(0.5),
          showSelectedLabels: false,
          selectedFontSize: 0,
          unselectedFontSize: 0,
          showUnselectedLabels: false,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                ),
                label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.bar_chart), label: "Bar"),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "My"),
          ]),
    );
  }
}
