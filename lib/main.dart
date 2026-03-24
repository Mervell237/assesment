//import 'package:assesment/screens/cart.dart';
// import 'package:assesment/screens/orders.dart';
// import 'package:assesment/screens/product.dart';
import 'package:assesment/screens/sign_up_form.dart';
import 'package:flutter/material.dart';
// import 'package:carousel_slider_plus/carousel_slider_plus.dart';
import 'screens/getstarted.dart';
import 'package:firebase_core/firebase_core.dart';
// import 'screens/login.dart' ;
// import 'screens/card.dart';
// import 'package:assesment/widgets/nav_bar.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp(); 
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SignUpForm(),
        // home: GetStartedScreen(),
    );
  }
}
