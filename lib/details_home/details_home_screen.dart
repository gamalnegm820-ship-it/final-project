import 'package:flutter/material.dart';
class home_details extends StatelessWidget {
  const home_details ({super.key, required this.name, required this.image, required this.price});

  final String name;
  final String image;
  final String price;


  @override
  Widget build(BuildContext context) {
    return  Container(
      width: 180,
      margin: EdgeInsets.all(8),
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(child: Image.asset(image)),
          Text(name,
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
              color: Color(0xff6D3805),
            ),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children:[
              Text(price,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff6055D8),
                ),
              ),



            ],
          ),
        ],
      ),
    );
  }
}
