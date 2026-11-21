import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: GestureDetector(
              onTap: () => Navigator.pop(context),


              child: const Icon(Icons.arrow_back, color: Colors.black)),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.favorite, color: Colors.black),
            onPressed: () {},
          ),
        ],
    ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset('assets/images/Nike shoes.png'),

            const SizedBox(height: 20),

            // Name and Price
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'Nike Shoes',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  '\$430',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.deepPurple,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),

            // Rating
            Row(
              children: const [
                Icon(Icons.star, color: Colors.amber, size: 20),
                SizedBox(width: 5),
                Text(
                  '4.5',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(width: 5),
                Text(
                  '( 20 Review)',
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
            const SizedBox(height: 20),

            // Description Title
            const Text(
              'Description',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),

            // Description Text
            Text(
              'Culpa aliquam consequuntur veritatis at consequuntur praesentium beatae temporibus nobis. Velit dolorem facilis neque autem.',
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey[600],
              ),
            ),
            const SizedBox(height: 20),

            // Size Title
            const Text(
              'Size',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),

            // Size Options
            Row(
              children: [
                Container(
                  width: 45,
                  height: 45,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Text('8', style: TextStyle(fontWeight: FontWeight.bold)),
                ),
                const SizedBox(width: 10),
                Container(
                  width: 45,
                  height: 45,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Text('10', style: TextStyle(fontWeight: FontWeight.bold)),
                ),
                const SizedBox(width: 10),
                Container(
                  width: 45,
                  height: 45,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Text('38', style: TextStyle(color: Colors.grey)),
                ),
                const SizedBox(width: 10),
                Container(
                  width: 45,
                  height: 45,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Text('40', style: TextStyle(color: Colors.grey)),
                ),
              ],
            ),
            const SizedBox(height: 30),

            // Buy Now and Cart
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.deepPurple,
                      padding: const EdgeInsets.symmetric(vertical: 14),
                    ),
                    child: const Text(
                      'Buy Now',
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                  ),
                ),
                const SizedBox(width: 15),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.shopping_bag, color: Colors.grey),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}