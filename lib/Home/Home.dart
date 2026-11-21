import 'package:flutter/material.dart';

import '../details_home/details_home_screen.dart';

class Home extends StatelessWidget {
  Home({super.key});

  List<String> name = ["Watch", "Nike Shoes", "Airpods"];
  List<String> images = [
    "assets/images/watch.png",
    "assets/images/Nike shoes.png",
    "assets/images/Airpods.png",
  ];
  List<String> price = [r"$40", r"$430", r"$333"];

  List<String> name2 = ["LG TV", "Hoodie", "Jacket"];
  List<String> images2 = [
    "assets/images/Tv.png",
    "assets/images/hoodie.png",
    "assets/images/jacket.png",
  ];
  List<String> price2 = [r"$330", r"$50", r"$400"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body:
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 40),
              Row(
                children: [
                  CircleAvatar(
                    radius: 22,
                    backgroundImage: AssetImage('assets/images/person.png'),
                  ),
                  SizedBox(width: 12),
          
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'Hello!',
                        style: TextStyle(color: Colors.grey, fontSize: 13),
                      ),
                      Text(
                        'John William',
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                    ],
                  ),
          
                  Spacer(),
          
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      shape: BoxShape.circle,
                    ),
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.notifications_none_rounded,
                        size: 24,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
          
              SizedBox(height: 20),
          
          
              Container(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  children: [
                    Icon(Icons.search, color: Colors.grey),
                    SizedBox(width: 10),
                    Text(
                      'Search here',
                      style: TextStyle(color: Colors.grey, fontSize: 15),
                    ),
                  ],
                ),
              ),
              Image.asset('assets/images/Screenshot 2026-09-07 181336.png'),
          
          
          
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Featured",
                    style: TextStyle(
                      color: Color(0xff000000),
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    "See all",
                    style: TextStyle(
                      color: Color(0xff6055D8),
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
          
              SizedBox(height: 20),
          
              SizedBox(
                height: 190,
                child: ListView.builder(
                  itemCount: price.length,
                  scrollDirection: Axis.horizontal,
          
                  itemBuilder: (context, index) {
                    return home_details(
                      name: name[index],
                      image: images[index],
                      price: price[index],
                    );
                  },
                ),
              ),
          
              SizedBox(height: 20),
          
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Most Popular",
                    style: TextStyle(
                      color: Color(0xff000000),
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    "See all",
                    style: TextStyle(
                      color: Color(0xff6055D8),
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
          
              SizedBox(height: 20),
          
              SizedBox(
                height: 190,
                child: ListView.builder(
                  itemCount: price.length,
                  scrollDirection: Axis.horizontal,
          
                  itemBuilder: (context, index) {
                    return home_details(
                      name: name2[index],
                      image: images2[index],
                      price: price2[index],
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
