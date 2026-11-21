import 'package:flutter/material.dart';
import '../Details of product/details_prod_screen.dart';
import '../details/details_screen.dart';
class ProductScreen extends StatelessWidget {
  ProductScreen({super.key});

  List<String>name=["Watch" , "Nike Shoes" , "LG TV" , "Airpods" , "Jacket" , "Hoodie" , "Te-Shirt","Te-Shirt"];
  List<String>images=["assets/images/watch.png" , "assets/images/Nike shoes.png",
    "assets/images/Tv.png",
    "assets/images/Airpods.png",
    "assets/images/jacket.png",
    "assets/images/hoodie.png",
    "assets/images/black.png",
    "assets/images/te-shirt.png"

  ];
  List<String>price=[r"$40" , r"$430" , r"$330" , r"$333" , r"$50" , r"$400" , r"$200" , r"$300"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        leading:
        GestureDetector(
            onTap: () => Navigator.pop(context),
            child: Icon(Icons.arrow_back)),

        centerTitle: true,
        title: Text("Products",
          style: TextStyle(
            fontSize: 20,fontWeight: FontWeight.w700,
            color: Colors.black,

          ),),

      ),
      body: Column(
        children: [
          const SizedBox(height: 20),
          Expanded(
            child: GridView.builder(
              itemCount: price.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,

              ),
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => DetailsScreen(),)),
                  child: details(
                    name: name[index],
                    image: images[index],
                    price: price[index],
                  ),
                );
              },
            ),
          ),
        ],
      ),

    );
  }
}
