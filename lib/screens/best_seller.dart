import 'package:flutter/material.dart';

class BestSellerScreen extends StatefulWidget {
  const BestSellerScreen({Key? key}) : super(key: key);

  @override
  State<BestSellerScreen> createState() => _BestSellerScreenState();
}

class _BestSellerScreenState extends State<BestSellerScreen> {
  int myInitialindex = 0;

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
              Text('Best Seller', style: 
              TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 16,
              ),
              ),
              SizedBox(height: 12,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      width: 24,
                      height: 24,
                      child: Icon(
                        Icons.tune,
                        color: Colors.black,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                      child: Row(
                        children: [
                          Text('FEATURE', style:
                           TextStyle(
                            fontWeight: FontWeight.w300,
                            color: Colors.green
                            ),
                          ),
                          SizedBox(width: 4,),
                          Icon(Icons.arrow_drop_down, size: 20),

                          SizedBox(width: 8,),
                          Text('VARIETY', style: TextStyle(
                            fontWeight: FontWeight.w300,
                            color: Colors.green
                          ),
                          ),
                          SizedBox(width: 4,),
                          Icon(Icons.arrow_drop_down, size: 20,),
                         SizedBox(width: 8,),
                          Text('SIZE', style: TextStyle(
                            fontWeight: FontWeight.w300,
                            color: Colors.green
                          ),
                          ),
                          SizedBox(width: 4,),
                          Icon(Icons.arrow_drop_down, size: 20,)                          
                        ],
                        
                      ),
                    ),
                    SizedBox(
                      width: 22,
                      height: 22,
                      child: Icon(Icons.filter_list, size: 20 ,
                      color: Colors.black,
                      ),
                    )
                  ],
                ),
  
              ),
              SizedBox(height: 15,),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        child: Column(
                          children: [
                            SizedBox(
                              width: 177,
                              height: 240.28,
                              child: ClipRRect(
                              borderRadius: BorderRadius.circular(12),
                              child: Image.asset('assets/images/slide7.png'),
                              )
                            ),
                            Text('Caramel', style: TextStyle(
                              fontWeight: FontWeight.w500,
                             color: Colors.grey
                            ),),
                            Text('Frappuccino', style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.grey
                            ),)                       
                          ],                        
                        ),
                      ),
                      Container(
                        child: Column(
                          children: [
                            SizedBox(
                             width: 175,
                             height: 203,
                             child: ClipRRect(
                                borderRadius: BorderRadius.circular(12),
                                child: Image.asset('assets/images/slide8.png'),
                              ),
                            ),
                            Text('Mocha', style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.grey
                              ),
                            ),
                            Text('Frappuccino', style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.grey
                              ),
                            )                          
                          ],
                        ),
                      )
                    ],
                    
                  ),
                  // SizedBox(height: 12,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        child: Column(
                          children: [
                             SizedBox(
                              width: 177,
                              height: 277.76,
                              child: ClipRRect(
                              borderRadius: BorderRadius.circular(12),
                              child: Image.asset('assets/images/slide9.png'),
                              )
                            ),                           
                          ],
                        ),
                      ),
                      Container(
                        child: Column(
                          children: [
                            SizedBox(
                              width: 177,
                              height: 281,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(12),
                                child: Image.asset('assets/images/slide10.png'),
                              ),
                            ),
                            Text('Cinnamon Dolce', style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.grey
                              ),
                            ),
                            Text('Latte', style: 
                              TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Colors.grey
                              )
                            ,)
                          ],
                        ),
                      )
                    ],
                  )
                ],
                
              )
            ],
          ),
        )
      ),
      );
  }
}
