import 'package:assesment/screens/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OrdersScreen extends StatefulWidget {
  const OrdersScreen({Key? key}) : super(key: key);

  @override
  State<OrdersScreen> createState() => _OrdersScreenState();
}

class _OrdersScreenState extends State<OrdersScreen> {
  bool SelectedIndex = false;
  int activeButtons = 0;
  int ordersButtons = 0;
  int quantity = 1;
  double price = 19.65;

  void increment() {
    setState(() {
      if (quantity < 9) quantity++;
    });
  }

  void decrement() {
    setState(() {
      if (quantity > 0) quantity--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
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
              Text(
                'Siren Order',
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
              ),
              SizedBox(height: 20),
              Container(
                child: Column(
                  children: [
                    SizedBox(
                      height: 160,
                      width: 160,
                      child: ClipOval(
                        child: Image.asset('assets/images/cinnamondolce.jpeg'),
                      ),
                    ),
                    SizedBox(height: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Cinnamon Dolce Latte',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 24,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'We add freshly steamed milk and cinnamon dolce flavours syrup to our classic explresso, topped with sweetened whipped cream and a cinnamon...',
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                            ),
                            textAlign: TextAlign.justify,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'see more',
                              style: TextStyle(
                                color: Color(0XFF00623B),
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 12),
                    Row(
                      children: [
                        Expanded(child: Divider()),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                        ),
                      ],
                    ),
                    SizedBox(height: 12),
                    Container(
                      width: 315,
                      height: 50,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            '\$${(price * quantity).toStringAsFixed(2)}',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Color(0XFF00623B),
                            ),
                          ),
                          Row(
                            children: [
                              Container(
                                width: 157.7,
                                height: 50,
                                // color: Colors.grey[300],
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 20,
                                  vertical: 12,
                                ),
                                decoration: BoxDecoration(
                                  color: Colors.grey[300],
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    BlocProvider(
                                      create: (_) => CounterCubit(),
                                      child: Center(
                                        child: Row(
                                          children: [
                                         
                                          Row(
                                            children: [
                                              GestureDetector(
                                                onTap: () {
                                                  print("Increment tapped!");
                                                  context.read<CounterCubit>().decrement();
                                                },
                                                child: Container(
                                                  height: 50,
                                                  width: 36,
                                                  decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    shape: BoxShape.circle,
                                                  ),
                                                  child: Icon(
                                                    Icons.remove,
                                                    size: 25,
                                                    color: Colors.black54,
                                                  ),
                                                ),
                                              ),

                                              SizedBox(width: 18),

                                               BlocBuilder<CounterCubit, int>(
                                                 builder: (context, quantity) {
                                                    return Text(quantity.toString(),
                                                      style: TextStyle(
                                                        fontSize: 14,
                                                        fontWeight: FontWeight.w600,
                                                        color: Colors.black

                                                      ),
                                                    );
                                                  },
                                                ),
                                              // Text(
                                              //   quantity.toString(),
                                              //   style: TextStyle(
                                              //     fontSize: 14,
                                              //     fontWeight: FontWeight.w600,
                                              //     color: Colors.black,
                                              //   ),
                                              // ),
                                              SizedBox(width: 18),

                                              GestureDetector(
                                                onTap: () {
                                                  context.read<CounterCubit>().increment();
                                                },
                                                child: Container(
                                                  height: 40,
                                                  width: 36,
                                                  decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    shape: BoxShape.circle,
                                                  ),
                                                  child: Icon(
                                                    Icons.add,
                                                    size: 25,
                                                    color: Colors.black54,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          ]
                                        ),
                                      ),                        
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 20),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                      width: 315,
                      height: 50,
                      padding: EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 12,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          // HOT
                          Container(
                            width: 151.5,
                            height: 46.34,
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  SelectedIndex = true;
                                });
                              },
                              child: Container(
                                height: 48,
                                width: 48,
                                decoration: BoxDecoration(
                                  color:
                                      SelectedIndex
                                          ? Color(0xFFE8E0A6)
                                          : Color(0xB3FFFFFF),
                                  // shape: BoxShape.circle,
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.local_fire_department,
                                      size: 24,
                                      color:
                                          SelectedIndex
                                              ? Colors.red
                                              : Colors.grey,
                                    ),
                                    Text(
                                      'Hot',
                                      style: TextStyle(
                                        color:
                                            SelectedIndex
                                                ? Colors.red
                                                : Colors.grey,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          // COLD
                          SizedBox(width: 10),
                          Container(
                            width: 111.5,
                            height: 46.34,
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  SelectedIndex = false;
                                });
                              },
                              child: Container(
                                // height: 48,
                                // width: 48,
                                decoration: BoxDecoration(
                                  color:
                                      !SelectedIndex
                                          ? Color(0xFFE8E0A6)
                                          : Colors.grey[300],
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.ac_unit,
                                      size: 24,
                                      color:
                                          !SelectedIndex
                                              ? Colors.red
                                              : Colors.grey,
                                    ),
                                    Text(
                                      'Cold',
                                      style: TextStyle(
                                        color:
                                            !SelectedIndex
                                                ? Colors.red
                                                : Colors.grey,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                      width: 315,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          SizedBox(width: 8),
                          // Short
                          Expanded(
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  activeButtons = 0;
                                });
                              },
                              child: Container(
                                height: 42,
                                margin: EdgeInsets.symmetric(
                                  vertical: 4,
                                  horizontal: 6,
                                ),
                                decoration: BoxDecoration(
                                  color:
                                      activeButtons == 0
                                          ? Color(0xFFE8E0A6)
                                          : Colors.grey[300],
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                alignment: Alignment.center,
                                child: Text(
                                  'Short',
                                  style: TextStyle(
                                    color:
                                        activeButtons == 0
                                            ? Colors.black
                                            : Colors.grey,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          // Tall
                          Expanded(
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  activeButtons = 1;
                                });
                              },
                              child: Container(
                                height: 42,
                                margin: EdgeInsets.symmetric(
                                  vertical: 4,
                                  horizontal: 6,
                                ),
                                decoration: BoxDecoration(
                                  color:
                                      activeButtons == 1
                                          ? Color(0xFFE8E0A6)
                                          : Colors.grey[300],
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                alignment: Alignment.center,
                                child: Text(
                                  'Tall',
                                  style: TextStyle(
                                    color:
                                        activeButtons == 1
                                            ? Colors.black
                                            : Colors.grey,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          // Grande
                          Expanded(
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  activeButtons = 2;
                                });
                              },
                              child: Container(
                                height: 42,
                                margin: EdgeInsets.symmetric(
                                  vertical: 4,
                                  horizontal: 6,
                                ),
                                decoration: BoxDecoration(
                                  color:
                                      activeButtons == 2
                                          ? Color(0xFFE8E0A6)
                                          : Colors.grey[300],
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                alignment: Alignment.center,
                                child: Text(
                                  'Grande',
                                  style: TextStyle(
                                    color:
                                        activeButtons == 2
                                            ? Colors.black
                                            : Colors.grey,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          //Venti
                          Expanded(
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  activeButtons = 3;
                                });
                              },
                              child: Container(
                                height: 42,
                                margin: EdgeInsets.symmetric(
                                  vertical: 4,
                                  horizontal: 6,
                                ),
                                decoration: BoxDecoration(
                                  color:
                                      activeButtons == 3
                                          ? Color(0xFFE8E0A6)
                                          : Colors.grey[300],
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                alignment: Alignment.center,
                                child: Text(
                                  'Venti',
                                  style: TextStyle(
                                    color:
                                        activeButtons == 3
                                            ? Colors.black
                                            : Colors.grey,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          children: [
                            Container(
                              width: 315,
                              height: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: Colors.grey[300],
                              ),
                              child: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    ordersButtons = 0;
                                  });
                                },
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Icon(
                                            Icons.shopping_cart,
                                            color:
                                                ordersButtons == 0
                                                    ? Color(0XFF00623B)
                                                    : Colors.grey,
                                          ),
                                          Text(
                                            ' Add to cart',
                                            style: TextStyle(
                                              color:
                                                  ordersButtons == 0
                                                      ? Color(0XFF00623B)
                                                      : Colors.grey,
                                            ),
                                          ),
                                          SizedBox(width: 8),
                                          VerticalDivider(
                                            width: 1.89,
                                            thickness: 1,
                                            color: Colors.grey,
                                          ),
                                          SizedBox(width: 8),
                                          Icon(
                                            Icons.check,
                                            color:
                                                ordersButtons == 1
                                                    ? Color(0XFF00623B)
                                                    : Colors.grey,
                                          ),
                                          Text(
                                            ' Order now',
                                            style: TextStyle(
                                              color:
                                                  ordersButtons == 1
                                                      ? Color(0XFF00623B)
                                                      : Colors.grey,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            // Container(
                            //   child:  GestureDetector(
                            //     onTap: () {
                            //     setState(() {
                            //       ordersButtons = 0;
                            //     });
                            //   },
                            //   child: Row(
                            //     mainAxisAlignment: MainAxisAlignment.center,
                            //     children: [
                            //       Container(
                            //         child: Row(
                            //           mainAxisAlignment: MainAxisAlignment.center,
                            //           children: [

                            //           ],
                            //         ),
                            //       )
                            //     ]
                            //   )

                            //   ),
                            // )
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
