import 'package:flutter/material.dart';
import 'package:splash/view/home_screen/comingsoon.dart';
import 'package:splash/view/home_screen/downloads.dart';
import 'package:splash/view/home_screen/homeimages.dart';
import 'package:splash/view/home_screen/menu.dart';
import 'package:splash/view/home_screen/search.dart';

class bottomnavigation extends StatefulWidget {
  const bottomnavigation({super.key});

  @override
  State<bottomnavigation> createState() => _bottomnavigationState();
}

class _bottomnavigationState extends State<bottomnavigation> {
  int currentpage = 0;
  final List<Widget> pages = [
    homeimage(),
    search(),
    comingsoon(),
    downloads(),
    menu()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentpage],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        unselectedFontSize: 10,
        onTap: (index) {
          setState(() {
            currentpage = index;
          });
        },
        currentIndex: currentpage,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: "search",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.video_collection_outlined),
            label: "coming soon",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.download),
            label: "downloads",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu),
            label: "menu",
          ),
        ],
      ),
    );
  }
}
