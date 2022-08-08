import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Homescreen/homescreen.dart';

class offers extends StatefulWidget {
  const offers({Key? key}) : super(key: key);

  @override
  State<offers> createState() => _offersState();
}

class _offersState extends State<offers> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pushReplacement(
                context, MaterialPageRoute(builder: (context) => HomeScreen()));
          },
        ),
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Colors.deepOrangeAccent,
        elevation: 0,
        title: Text(
          'Terms & Condition',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [

            Container(
              margin: EdgeInsets.all(20),
              color: Colors.red,
              width: MediaQuery.of(context).size.width * 0.95,
              height: MediaQuery.of(context).size.height * 0.20,
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Hot Deals',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Up to-35% off',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold,fontSize: 15),
                        ),
                      ),
                      SizedBox(
                        width: 50,
                      ),
                      Container(
                        margin: EdgeInsets.all(10),
                        height: 40,
                        width: 90,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.white)),
                        child: Center(
                            child: Text(
                              'Shop Now',
                              style: TextStyle(color: Colors.white),
                            )),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 70,
                  ),
                  Image.asset(
                    'images/shose3-removebg-preview.png',
                    height: 150,
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(20),
              color: Colors.red,
              width: MediaQuery.of(context).size.width * 0.95,
              height: MediaQuery.of(context).size.height * 0.20,
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Hot Deals',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Up to-35% off',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold,fontSize: 15),
                        ),
                      ),
                      SizedBox(
                        width: 50,
                      ),
                      Container(
                        margin: EdgeInsets.all(10),
                        height: 40,
                        width: 90,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.white)),
                        child: Center(
                            child: Text(
                              'Shop Now',
                              style: TextStyle(color: Colors.white),
                            )),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 70,
                  ),
                  Image.asset(
                    'images/shose3-removebg-preview.png',
                    height: 150,
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(20),
              color: Colors.red,
              width: MediaQuery.of(context).size.width * 0.95,
              height: MediaQuery.of(context).size.height * 0.20,
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Hot Deals',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Up to-35% off',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold,fontSize: 15),
                        ),
                      ),
                      SizedBox(
                        width: 50,
                      ),
                      Container(
                        margin: EdgeInsets.all(10),
                        height: 40,
                        width: 90,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.white)),
                        child: Center(
                            child: Text(
                              'Shop Now',
                              style: TextStyle(color: Colors.white),
                            )),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 70,
                  ),
                  Image.asset(
                    'images/shose3-removebg-preview.png',
                    height: 150,
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(20),
              color: Colors.red,
              width: MediaQuery.of(context).size.width * 0.95,
              height: MediaQuery.of(context).size.height * 0.20,
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Hot Deals',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Up to-35% off',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold,fontSize: 15),
                        ),
                      ),
                      SizedBox(
                        width: 50,
                      ),
                      Container(
                        margin: EdgeInsets.all(10),
                        height: 40,
                        width: 90,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.white)),
                        child: Center(
                            child: Text(
                              'Shop Now',
                              style: TextStyle(color: Colors.white),
                            )),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 70,
                  ),
                  Image.asset(
                    'images/shose3-removebg-preview.png',
                    height: 150,
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(20),
              color: Colors.red,
              width: MediaQuery.of(context).size.width * 0.95,
              height: MediaQuery.of(context).size.height * 0.20,
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Hot Deals',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Up to-35% off',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold,fontSize: 15),
                        ),
                      ),
                      SizedBox(
                        width: 50,
                      ),
                      Container(
                        margin: EdgeInsets.all(10),
                        height: 40,
                        width: 90,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.white)),
                        child: Center(
                            child: Text(
                              'Shop Now',
                              style: TextStyle(color: Colors.white),
                            )),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 70,
                  ),
                  Image.asset(
                    'images/shose3-removebg-preview.png',
                    height: 150,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
