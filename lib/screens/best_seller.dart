import 'package:flutter/material.dart';

void main() {
  runApp(const StarbucksApp());
}

class StarbucksApp extends StatelessWidget {
  const StarbucksApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Starbucks UI',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        fontFamily: 'Roboto',
      ),
      home: const BestSellerPage(),
    );
  }
}

class BestSellerPage extends StatelessWidget {
  const BestSellerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.access_time, color: Colors.black),
          onPressed: () {},
        ),
        title: Column(
          children: const [
            CircleAvatar(
              radius: 14,
              backgroundImage: AssetImage('assets/starbuckslogo.png'),
            ),
            SizedBox(height: 4),
            Text(
              'Best Seller',
              style: TextStyle(color: Colors.black, fontSize: 14),
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.tune, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 12),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                FilterItem(title: 'FEATURES'),
                FilterItem(title: 'VARIETY'),
                FilterItem(title: 'SIZE'),
                Icon(Icons.filter_alt_outlined),
              ],
            ),
          ),
          const SizedBox(height: 16),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: GridView.count(
                crossAxisCount: 2,
                mainAxisSpacing: 16,
                crossAxisSpacing: 16,
                childAspectRatio: 0.7,
                children: const [
                  ProductCard(
                    image: 'assets/cinnamondolce.jpeg',
                    title: 'Caramel\nFrappuccino',
                  ),
                  ProductCard(
                    image: 'assets/image1.jpeg',
                    title: 'Mocha\nFrappuccino',
                  ),
                  PromoCard(),
                  ProductCard(
                    image: 'assets/cinnamondolcelatte.jpg',
                    title: 'Cinnamon Dolce\nLatte',
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 2,
        selectedItemColor: const Color(0xFF00704A),
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.credit_card), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_bag), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.star_border), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.location_on_outlined), label: ''),
        ],
      ),
    );
  }
}

class FilterItem extends StatelessWidget {
  final String title;
  const FilterItem({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(title, style: const TextStyle(fontSize: 12)),
        const Icon(Icons.keyboard_arrow_down, size: 16),
      ],
    );
  }
}

class ProductCard extends StatelessWidget {
  final String image;
  final String title;

  const ProductCard({super.key, required this.image, required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(image, fit: BoxFit.cover, width: double.infinity),
          ),
        ),
        const SizedBox(height: 8),
        Text(title, style: const TextStyle(fontSize: 13)),
      ],
    );
  }
}

class PromoCard extends StatelessWidget {
  const PromoCard({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset('assets/image4.jpeg', fit: BoxFit.cover),
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Row(
                children: const [
                  CircleAvatar(
                    radius: 16,
                    backgroundColor: Colors.white,
                    child: Icon(Icons.play_arrow, color: Colors.black),
                  ),
                  SizedBox(width: 8),
                  Text(
                    'COOL OFF',
                    style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
