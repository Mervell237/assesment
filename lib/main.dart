import 'package:flutter/material.dart';
import 'package:carousel_slider_plus/carousel_slider_plus.dart';
import 'screens/getstarted.dart';
import 'screens/login.dart' ;
import 'screens/card.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/getStarted',
      routes: {
        '/getStarted': (context) => const GetStartedScreen(),
        '/login': (context) => const LoginScreen(),
        '/card' : (context) => const WalletPage(),
      },
    );
  }
}
