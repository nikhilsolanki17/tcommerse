import 'package:flutter/material.dart';
import 'package:tcommerce/profile/cart/cart.dart';
import 'package:tcommerce/profile/settings.dart';
import 'package:tcommerce/profile/terms.dart';
import '../offers/offers.dart';
import '../watchlist/watchlist.dart';
import 'feq.dart';

class profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(children: <Widget>[
              // Background with gradient
              Container(
                  color: Colors.deepOrangeAccent,
                  height: MediaQuery.of(context).size.height * 0.3),
              //Above card

              Container(
                height: 280,
                child: Card(
                    elevation: 0.0,
                    margin: EdgeInsets.only(left: 10.0, right: 5.0, top: 180.0),
                    child: Row(children: <Widget>[
                      SizedBox(
                        width: 40,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => cart()));
                          },
                          child: Column(
                            children: [
                              CircleAvatar(
                                child: Image.asset(
                                  'images/logo.sp-removebg-preview.png',
                                  height: 60,
                                ),
                                backgroundColor: Colors.grey[300],
                                radius: 25,
                              ),
                              Text(
                                'cart',
                                style: TextStyle(fontWeight: FontWeight.w500),
                              )
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => cart()));
                          },
                          child: Column(
                            children: [
                              CircleAvatar(
                                child: Image.asset(
                                  'images/mobileorder-removebg-preview.png',
                                  height: 30,
                                ),
                                backgroundColor: Colors.grey[300],
                                radius: 25,
                              ),
                              Text(
                                'Orders',
                                style: TextStyle(fontWeight: FontWeight.w500),
                              )
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => offers()));
                          },
                          child: Column(
                            children: [
                              CircleAvatar(
                                child: Image.asset(
                                  'images/gift-removebg-preview.png',
                                  height: 30,
                                ),
                                backgroundColor: Colors.grey[300],
                                radius: 25,
                              ),
                              Text(
                                'Offers',
                                style: TextStyle(fontWeight: FontWeight.w500),
                              )
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => watchlist()));
                          },
                          child: Column(
                            children: [
                              CircleAvatar(
                                child: Image.asset(
                                  'images/heart-removebg-preview.png',
                                  height: 30,
                                ),
                                backgroundColor: Colors.grey[300],
                                radius: 25,
                              ),
                              Text(
                                'Wishlist',
                                style: TextStyle(fontWeight: FontWeight.w500),
                              )
                            ],
                          ),
                        ),
                      ),
                    ])),
              ),
              // Positioned to take only AppBar size
              Positioned(
                top: 0.0,
                left: 0.0,
                right: 0.0,
                child: AppBar(
                  // Add AppBar here only
                  backgroundColor: Colors.deepOrangeAccent,
                  elevation: 0.0,
                  title: Text("Doctor Form"),
                ),
              ),
            ]),
            GestureDetector(
              onTap: () {
                // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>cart));
              },
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  children: [
                    Icon(
                      Icons.location_on,
                      color: Colors.deepOrangeAccent,
                    ),
                    Text('\t\tYour Address')
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                children: [
                  Icon(
                    Icons.border_all_sharp,
                    color: Colors.deepOrangeAccent,
                  ),
                  Text('\t\tAll Category')
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                children: [
                  Icon(
                    Icons.notifications,
                    color: Colors.deepOrangeAccent,
                  ),
                  Text('\t\tNotification')
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                children: [
                  Icon(
                    Icons.chat,
                    color: Colors.deepOrangeAccent,
                  ),
                  Text('\t\tChats')
                ],
              ),
            ),
            GestureDetector(
              onTap: (){
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>settings()));
              },
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  children: [
                    Icon(
                      Icons.settings,
                      color: Colors.deepOrangeAccent,
                    ),
                    Text('\t\tSettings')
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => termscondition()));
              },
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  children: [
                    Icon(
                      Icons.branding_watermark_sharp,
                      color: Colors.deepOrangeAccent,
                    ),
                    Text('\t\tTeams & Condition')
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                children: [
                  Icon(
                    Icons.privacy_tip_rounded,
                    color: Colors.deepOrangeAccent,
                  ),
                  Text('\t\tPrivacy Policy')
                ],
              ),
            ),
            GestureDetector(
                onTap: (){
                  Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=>faq()));
                },
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  children: [
                    Icon(
                      Icons.chrome_reader_mode,
                      color: Colors.deepOrangeAccent,
                    ),
                    Text('\t\tFAQ')
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                children: [
                  Icon(
                    Icons.question_answer_rounded,
                    color: Colors.deepOrangeAccent,
                  ),
                  Text('\t\tAbout Us')
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
