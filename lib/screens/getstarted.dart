import 'package:flutter/material.dart';
import 'package:carousel_slider_plus/carousel_slider_plus.dart';
import 'login.dart';

class GetStartedScreen extends StatefulWidget {
  const GetStartedScreen({Key? key}) : super(key: key);

  @override
  State<GetStartedScreen> createState() => _GetstartedScreenState();
}

class _GetstartedScreenState extends State<GetStartedScreen> {
  int myCurrentIndex = 0;

  final List<Map<String, dynamic>> screens = [
    {
      "image": "assets/images/slide1.png",
      "title": "Good Coffee",
      "titleBase": "Good Moods",
      "description":
          " “To inspire and nurture the human spirit–one person, one cup and one neighborhood at a time.”",
    },
    {
      "image": "assets/images/slide2.png",
      "title": " Starbucks Frappuccino",
      "titleBase": "Work can wait",
      "description":
          "“Bring a friend and enjoy a Frappuccino. Find stores in your area.”",
    },
    {
      "image": "assets/images/slide3.png",
      "title": "Morning begins with",
      "titleBase": "Tropical Splash Startbucks",
      "description":
          "“Bring the Fantasy Tail Frappuccino, or treat yourself to the boldly refreshing Peach Cloud with Jelly. “",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: 100,
                height: 69,
                child: Image.asset('assets/images/header-image.png'),
              ),
              SizedBox(height: 66),
              Expanded(
                child: PageView.builder(
                  itemCount: screens.length,
                  onPageChanged: (value) {
                    setState(() {
                      myCurrentIndex = value;
                    });
                  },
                  itemBuilder: (BuildContext context, int index) {
                    return Column(
                      children: [
                        SizedBox(
                          width: 204,
                          height: 211,
                          child: Image.asset(screens[myCurrentIndex]['image']),
                        ),

                        SizedBox(height: 52),
                        Text(
                          screens[myCurrentIndex]['title'],
                          style: TextStyle(
                            fontSize: 34,
                            fontWeight: FontWeight.w800,
                            color: Color(0XFF00623B),
                          ),
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          screens[myCurrentIndex]['titleBase'],
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w800,
                            color: Colors.black,
                          ),
                          textAlign: TextAlign.center,
                        ),

                        SizedBox(height: 26),

                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 38),
                          child: Text(
                            screens[myCurrentIndex]['description'],
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
              SizedBox(height: 23),
              // add dots here
              Container(
                height: 10,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  spacing: 10,
                  children: List.generate(3, (index) {
                    return Dot(
                      index: index,
                      onChanged: (current) {
                        setState(() {
                          myCurrentIndex = current;
                        });
                      },
                      isActive: index == myCurrentIndex,
                    );
                  }),
                ),
              ),
              SizedBox(height: 35),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0XFF00623B),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  minimumSize: Size(235, 61),
                ),
                onPressed: () {},
                child: Text(
                  'Get Started',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(height: 35),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(text: 'Already have an account?'),
                    TextSpan(
                      text: ' Log In',
                      style: TextStyle(color: Color(0XFF00623B)),
                    ),
                  ],
                  style: TextStyle(fontSize: 18, color: Color(0XFF3C3C43)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Dot extends StatelessWidget {
  const Dot({
    super.key,
    required this.isActive,
    required this.onChanged,
    required this.index,
  });
  final bool isActive;
  final Function(int) onChanged;
  final int index;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onChanged(index);
      },
      child: AnimatedContainer(
        duration: Duration(milliseconds: 600),
        curve: Curves.easeInOut,
        height: 10,
        width: isActive ? 19 : 10,
        decoration: BoxDecoration(
          color: isActive ? Color(0XFF00623B) : Colors.grey,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
