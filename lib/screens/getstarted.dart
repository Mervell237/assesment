import 'package:flutter/material.dart';
import 'package:carousel_slider_plus/carousel_slider_plus.dart';
import 'login.dart';

class GetStartedScreen extends StatefulWidget {
  const GetStartedScreen({Key? key}) : super(key: key);

  @override
  State<GetStartedScreen> createState() => _GetstartedScreenState();
}

class _GetstartedScreenState extends State<GetStartedScreen> {
  final myitems = [
    Image.asset("assets/images/starbuckscup.jpeg", fit: BoxFit.cover),
    Image.asset("assets/images/frappuccino2.jpeg", fit: BoxFit.cover),
    Image.asset("assets/images/starbuckstropicalsplash.jpeg",fit: BoxFit.cover,),
  ];

  int myCurrentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            CarouselSlider(
              items:
                  myitems.map((item) {
                    return Container(
                      width: double.infinity,
                      margin: EdgeInsets.symmetric(horizontal: 0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: item,
                      ),
                    );
                  }).toList(),
              options: CarouselOptions(
                height: 200,
                viewportFraction: 1.0,
                enlargeCenterPage: false,
                autoPlay: true,
                onPageChanged: (index, reason) {
                  setState(() {
                    myCurrentIndex = index;
                  });
                },
              ),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const LoginScreen()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF006241),
                foregroundColor: Colors.white,
              ),

              child: const Text("Get Started"),
            ),
            const SizedBox(height: 20),
            Text.rich(
              TextSpan(
               text: "Don't have an account?",
               style: TextStyle(color: Colors.grey),
               children: [
                TextSpan(
                  text: 'sign up',
                  style: TextStyle(
                    color: Colors.green
                  )
                )
                ],
              ),
            ),
          ]
        ) 
      )   
      
    );
      
  }
}
