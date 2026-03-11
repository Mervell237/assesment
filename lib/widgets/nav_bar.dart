import 'package:flutter/material.dart';

class CustomNavBar extends StatefulWidget {
  final List<Widget> pages;

  const CustomNavBar({super.key, required this.pages});

  @override
  State<CustomNavBar> createState() => _CustomNavBarState();
}

class _CustomNavBarState extends State<CustomNavBar> {
  int selectedIndex = 0;

  void changeTab(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widget.pages[selectedIndex],

      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(20),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
          decoration: BoxDecoration(
            color: Colors.grey.shade200,
            borderRadius: BorderRadius.circular(40),
            boxShadow: const [BoxShadow(color: Colors.black12, blurRadius: 10)],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              navIcon(Icons.home_outlined, 0),
              navIcon(Icons.account_balance_wallet_outlined, 1),
              navIcon(Icons.shopping_cart_outlined, 2),
              navIcon(Icons.confirmation_number_outlined, 3),
              navIcon(Icons.location_on_outlined, 5),
            ],
          ),
        ),
      ),
    );
  }
  Widget navIcon(IconData icon, int index) {
  return GestureDetector(
    onTap: () => changeTab(index),
    child: Icon(
      icon,
      size: 28,
      color: selectedIndex == index ? Colors.green : Colors.black,
    ),
  );
}
}


