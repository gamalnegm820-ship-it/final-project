import 'package:finalporoject/Home/Home.dart';
import 'package:finalporoject/Product/product_screen.dart';
import 'package:flutter/material.dart';

import '../Search/search_Screen.dart';
import '../profile/profile_screen.dart';
class Navscreen extends StatefulWidget {
  const Navscreen({super.key});

  @override
  State<Navscreen> createState() => _NavscreenState();
}

class _NavscreenState extends State<Navscreen> {
  int index=0;
  List<Widget>screens=[
   Home(),
    SearchScreen(),
    ProductScreen(),
    ProfileScreen(),


  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: screens[index],
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          selectedItemColor: Color(0xff6055D8),
          type: BottomNavigationBarType.fixed,
          currentIndex: index,
          onTap: (value) {
            setState(() {
              index= value;
            });
          },
          items:[
            BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.search),label: 'Search'),
            BottomNavigationBarItem(icon: Icon(Icons.category),label: 'Products'),
            BottomNavigationBarItem(icon: Icon(Icons.person),label: 'profile'),






          ]),
    );
  }
}
