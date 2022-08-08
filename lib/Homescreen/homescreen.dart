import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tcommerce/Homescreen/allpopulars.dart';
import 'package:tcommerce/electronic/electronic.dart';
import 'package:tcommerce/menfashtion/menfashtion.dart';

import 'Categories.dart';
import '../inbox/inbox.dart';
import '../notification/notifcation.dart';
import '../order/order.dart';
import '../profile/profile.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;
  final screens = [check(), inbox(), order(), profile()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        selectedItemColor: Colors.deepOrange,
        // showSelectedLabels: false,
        // showUnselectedLabels: false,
        selectedFontSize: 17,
        currentIndex: currentIndex,
        onTap: (index) => setState(() => currentIndex = index),
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
              backgroundColor: Colors.blue),
          BottomNavigationBarItem(
              icon: Icon(Icons.mail),
              label: 'inbox',
              backgroundColor: Colors.yellow),
          BottomNavigationBarItem(
              icon: Icon(Icons.shop),
              label: 'Order',
              backgroundColor: Colors.red),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
              backgroundColor: Colors.cyan)
        ],
      ),
      body: screens[currentIndex],
    );
  }
}

class check extends StatelessWidget {
  const check({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
            ),
            height: 130.0,
            child: Stack(
              children: <Widget>[
                Container(
                  color: Colors.deepOrange,
                  width: MediaQuery.of(context).size.width,
                  height: 100.0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.shopping_cart,
                        color: Colors.black,
                      ),
                      Text(
                        'T Commerce',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      SizedBox(
                        width: 140,
                      ),
                      IconButton(
                          color: Colors.white,
                          onPressed: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => notification()));
                          },
                          icon: Icon(Icons.notifications)),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.add_shopping_cart,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: 80.0,
                  left: 0.0,
                  right: 0.0,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(1.0),
                          border: Border.all(
                              color: Colors.grey.withOpacity(0.5), width: 1.0),
                          color: Colors.white),
                      child: Row(
                        children: [
                          IconButton(
                            icon: Icon(
                              Icons.search,
                              color: Colors.grey,
                            ),
                            onPressed: () {
                              // print("your menu action here");
                              // _scaffoldKey.currentState.openDrawer();
                            },
                          ),
                          Expanded(
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: "Search",
                              ),
                            ),
                          ),
                          IconButton(
                            icon: Icon(
                              Icons.filter_list,
                              color: Colors.black,
                            ),
                            onPressed: () {
                              print("your menu action here");
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
              height: 200.0,
              width: 390.0,
              child: Carousel(
                images: [
                  Image.asset('images/shopp.png'),
                  Image.asset('images/shopp.png'),
                  Image.asset('images/shopp.png'),
                ],
                dotSize: 4.0,
                dotSpacing: 15.0,
                dotColor: Colors.deepOrange,
                indicatorBgPadding: 5.0,
                dotBgColor: Colors.deepOrange.withOpacity(0.5),
                borderRadius: true,
              )),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: GestureDetector(
                  onTap: () => Navigator.push(
                      context, MaterialPageRoute(builder: (_) => categories())),
                  child: Text(
                    'Categories',
                    textAlign: TextAlign.start,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              SizedBox(
                width: 220,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: GestureDetector(
                  onTap: () => Navigator.push(context,
                      MaterialPageRoute(builder: (_) => allPolpulars())),
                  child: Text('All Popular',
                      style: TextStyle(color: Colors.deepOrange),
                      textAlign: TextAlign.end),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                GestureDetector(
                  onTap: () => Navigator.push(
                      context, MaterialPageRoute(builder: (_) => electronic())),
                  child: Column(
                    children: [
                      CircleAvatar(
                        child: Image.asset(
                          'images/electronics.png',
                          height: 40,
                        ),
                        backgroundColor: Colors.grey[300],
                        radius: 40,
                      ),
                      Text(
                        'Electronic',
                        style: TextStyle(fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(9.0),
                  child: Column(
                    children: [
                      CircleAvatar(
                        child: Image.asset(
                          'images/bike.png',
                          height: 40,
                        ),
                        backgroundColor: Colors.grey[300],
                        radius: 40,
                      ),
                      Text(
                        'bike',
                        style: TextStyle(fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(9.0),
                  child: GestureDetector(
                    onTap: () => Navigator.push(
                        context, MaterialPageRoute(builder: (_) => men())),
                    child: Column(
                      children: [
                        CircleAvatar(
                          child: Image.asset(
                            'images/male-clothes.png',
                            height: 40,
                          ),
                          backgroundColor: Colors.grey[300],
                          radius: 40,
                        ),
                        Text(
                          'Men Fashion',
                          style: TextStyle(fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(9.0),
                  child: Column(
                    children: [
                      CircleAvatar(
                        child: Image.asset(
                          'images/smartphone.png',
                          height: 40,
                        ),
                        backgroundColor: Colors.grey[300],
                        radius: 40,
                      ),
                      Text(
                        'Mobiles',
                        style: TextStyle(fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(9.0),
            child: Row(
              children: [
                Column(
                  children: [
                    CircleAvatar(
                      child: Image.asset(
                        'images/safety-glasses.png',
                        height: 40,
                      ),
                      backgroundColor: Colors.grey[300],
                      radius: 40,
                    ),
                    Text(
                      'Lifestyle',
                      style: TextStyle(fontWeight: FontWeight.w500),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(9.0),
                  child: Column(
                    children: [
                      CircleAvatar(
                        child: Image.asset(
                          'images/vehicle.png',
                          height: 40,
                        ),
                        backgroundColor: Colors.grey[300],
                        radius: 40,
                      ),
                      Text(
                        'Vehicles',
                        style: TextStyle(fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(9.0),
                  child: Column(
                    children: [
                      CircleAvatar(
                        child: Image.asset(
                          'images/fashion.png',
                          height: 40,
                        ),
                        backgroundColor: Colors.grey[300],
                        radius: 40,
                      ),
                      Text(
                        'Woman Fuso',
                        style: TextStyle(fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(9.0),
                  child: Column(
                    children: [
                      CircleAvatar(
                        child: Image.asset(
                          'images/toys.png',
                          height: 40,
                        ),
                        backgroundColor: Colors.grey[300],
                        radius: 40,
                      ),
                      Text(
                        'Toy',
                        style: TextStyle(fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.12,
            width: 360,
            decoration: BoxDecoration(color: Colors.white, boxShadow: [
              BoxShadow(
                  offset: Offset(3, 3), color: Colors.black38, blurRadius: 5),
            ]),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Image.asset(
                    "images/b11.jpg",
                    height: 30,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Image.asset(
                    "images/b11.jpg",
                    height: 30,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Image.asset(
                    "images/b11.jpg",
                    height: 30,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
