import 'package:assesment/screens/best_seller.dart';
import 'package:assesment/screens/cart.dart';
import 'package:assesment/screens/orders.dart';
import 'package:assesment/screens/product.dart';
import 'package:assesment/widgets/nav_bar.dart';
import 'package:flutter/material.dart';
// import 'package:carousel_slider_plus/carousel_slider_plus.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);


  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  bool _isObscure = true;

  int myCurrentIndex = 0;
  final List<String> imagesList = [
    'assets/images/slide4.jpg',
    'assets/images/slide5.jpg',
    'assets/images/slide6.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Good Morning,",
                          style: TextStyle(color: Colors.grey, fontSize: 18),
                        ),
                        Text(
                          'Welcome back!',
                          style: TextStyle(
                            fontWeight: FontWeight.w900,
                            fontSize: 24,
                          ),
                        ),
                        SizedBox(height: 20),
                        Text.rich(
                          TextSpan(
                            text: 'Starbucks',
                            style: TextStyle(
                              color: Color(0XFF00623B),
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                            children: [
                              TextSpan(
                                text: ' Promotion',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 100,
                      height: 69,
                      child: Image.asset('assets/images/header-image.png'),
                    ),
                  ],
                ),
                Expanded(
                  child: PageView.builder(
                    itemCount: imagesList.length,
                    onPageChanged: (index) {
                      setState(() {
                        myCurrentIndex = index;
                      });
                    },
                    itemBuilder: (BuildContext context, int index) {
                      return Center(
                        child: SizedBox(
                          width: 191,
                          height: 136,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: Image.asset(imagesList[index]),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                const SizedBox(height: 20),
                //dots
                Container(
                  height: 9,
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

                const SizedBox(height: 16),

                TextFormField(
                  decoration: InputDecoration(label: const Text('Email')),
                ),

                const SizedBox(height: 20),

                TextFormField(
                  obscureText: _isObscure,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    hintText: 'Enter Password',
                    suffixIcon: IconButton(
                      icon: Icon(
                        _isObscure ? Icons.visibility_off : Icons.visibility,
                      ),
                      onPressed: () {
                        setState(() {
                          _isObscure = !_isObscure;
                        });
                      },
                    ),
                  ),
                ),
                
                const SizedBox(height: 10),
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    'forgot password?',
                    style: TextStyle(
                      color: Color(0XFF00623B),
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 30),

                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => CustomNavBar(
                          pages: [
                            Home(),
                            OrdersScreen(),
                            ProductPage(),
                            BestSellerScreen()
                          ],
                        )),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0XFF00623B),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: Text(
                      'Login',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                
                const SizedBox(height: 20),
                Row(
                  children: [
                    Expanded(child: Divider()),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Text('OR'),
                    ),
                    Expanded(child: Divider()),
                  ],
                ),
                const SizedBox(height: 30),
                ElevatedButton.icon(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                  icon: FaIcon(
                    FontAwesomeIcons.facebook,
                    color: Color(0xFF4267B2),
                  ),
                  label: Text(
                    "login with Facebook",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),

                const SizedBox(height: 30),
                ElevatedButton.icon(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                  ),
                  icon: FaIcon(FontAwesomeIcons.google),
                  label: Text(
                    "login with Google",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Text.rich(
                  TextSpan(
                    text: "Don't have an account?",
                    style: TextStyle(color: Colors.grey),
                    children: [
                      TextSpan(
                        text: ' sign up',
                        style: TextStyle(color: Color(0XFF00623B)),
                      ),
                    ],
                  ),
                ),
              ],
            ),
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
          borderRadius: BorderRadius.circular(5),
        ),
      ),
    );
  }
}
