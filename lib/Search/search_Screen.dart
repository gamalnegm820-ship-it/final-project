import 'package:flutter/material.dart';
import '../details/details_screen.dart';

class SearchScreen extends StatelessWidget {
  SearchScreen({super.key});

  final List<String> name = [
    "Shoes",
    "Nike Shoes",
    "Shoes",
    "Nike Shoes",
    "Shoes",
    "Nike Shoes"
  ];

  final List<String> images = [
    "assets/images/shoes1 (1).png",
    "assets/images/Nike shoes.png",
    "assets/images/shoes1 (2).png",
    "assets/images/shoes1 (3).png",
    "assets/images/shoes1 (4).png",
    "assets/images/shoes1 (5).png",
  ];

  final List<String> price = [r"$400", r"$430", r"$330", r"$333", r"$200", r"$300"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            children: [
              const SizedBox(height: 10),

              // شريط البحث (Search Bar)
              Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(Icons.arrow_back, color: Colors.black, size: 26),
                  ),
                  const SizedBox(width: 4),
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Row(
                        children: [
                          const Icon(Icons.search, color: Colors.black, size: 24),
                          const SizedBox(width: 10),
                          const Text(
                            'Shoes',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          const Spacer(),
                          GestureDetector(
                            onTap: () {
                            },
                            child: Container(
                              padding: const EdgeInsets.all(4),
                              decoration: const BoxDecoration(
                                color: Colors.black,
                                shape: BoxShape.circle,
                              ),
                              child: const Icon(
                                Icons.close,
                                color: Colors.white,
                                size: 14,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 20),


              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Results for Shoes",
                    style: TextStyle(
                      color: Color(0xff000000),
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    "${price.length} Results Found",
                    style: const TextStyle(
                      color: Color(0xff6055D8),
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 15),

              // شبكة عرض المنتجات
              Expanded(
                child: GridView.builder(
                  itemCount: price.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 12,
                    mainAxisSpacing: 12,
                    childAspectRatio: 0.75,
                  ),
                  itemBuilder: (context, index) {
                    return details(
                      name: name[index],
                      image: images[index],
                      price: price[index],
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