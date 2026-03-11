import 'package:assesment/screens/best_seller.dart';
import 'package:assesment/screens/cart.dart';
import 'package:assesment/screens/orders.dart';
import 'package:assesment/screens/product.dart';
import 'package:flutter/material.dart';
// import 'package:carousel_slider_plus/carousel_slider_plus.dart';
import 'screens/getstarted.dart';
import 'screens/login.dart' ;
// import 'screens/card.dart';
import 'package:assesment/widgets/nav_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        home: GetStartedScreen(),
    );
  }
}
