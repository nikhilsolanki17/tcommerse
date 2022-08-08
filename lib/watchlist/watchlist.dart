import 'package:flutter/material.dart';
import 'package:roundcheckbox/roundcheckbox.dart';

import '../Homescreen/homescreen.dart';

class watchlist extends StatefulWidget {
  const watchlist({Key? key}) : super(key: key);

  @override
  State<watchlist> createState() => _watchlistState();
}

class _watchlistState extends State<watchlist> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: Text('WatchList'),
        centerTitle: false,
        elevation: 0.0,
        leading: InkWell(
          child: Icon(Icons.keyboard_backspace),
          onTap: () {
            Navigator.pushReplacement(
                context, MaterialPageRoute(builder: (context) => HomeScreen()));
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                children: [
                  Icon(
                    Icons.favorite,
                    color: Colors.red,
                  ),
                  Text(
                    '\t\t\t\t\t 4 Items in your cart',
                    style: TextStyle(
                        color: Colors.indigo, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Colors.indigo),
                    ),
                    child: Image.asset(
                      'images/redshoes-removebg-preview.png',
                      height: 120,
                    ),
                  ),
                  Container(
                    height: 122,
                    width: 250,
                    decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Colors.indigo),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Text(
                              'Fashion ManShoes',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Row(
                              children: [
                                Text(
                                  '\$19.50',
                                  style: TextStyle(
                                      color: Colors.deepOrange,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(width: 140,),
                                RoundCheckBox(
                                  onTap: (selected) {},
                                  size: 30,
                                  uncheckedColor: Colors.white,
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Colors.indigo),
                    ),
                    child: Image.asset(
                      'images/redshoes-removebg-preview.png',
                      height: 120,
                    ),
                  ),
                  Container(
                    height: 122,
                    width: 250,
                    decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Colors.indigo),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Text(
                              'Fashion ManShoes',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Row(
                              children: [
                                Text(
                                  '\$19.50',
                                  style: TextStyle(
                                      color: Colors.deepOrange,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(width: 140,),
                                RoundCheckBox(
                                  onTap: (selected) {},
                                  size: 30,
                                  uncheckedColor: Colors.white,
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Colors.indigo),
                    ),
                    child: Image.asset(
                      'images/redshoes-removebg-preview.png',
                      height: 120,
                    ),
                  ),
                  Container(
                    height: 122,
                    width: 250,
                    decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Colors.indigo),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Text(
                              'Fashion ManShoes',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Row(
                              children: [
                                Text(
                                  '\$19.50',
                                  style: TextStyle(
                                      color: Colors.deepOrange,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(width: 140,),
                                RoundCheckBox(
                                  onTap: (selected) {},
                                  size: 30,
                                  uncheckedColor: Colors.white,
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Colors.indigo),
                    ),
                    child: Image.asset(
                      'images/redshoes-removebg-preview.png',
                      height: 120,
                    ),
                  ),
                  Container(
                    height: 122,
                    width: 250,
                    decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Colors.indigo),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Text(
                              'Fashion ManShoes',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Row(
                              children: [
                                Text(
                                  '\$19.50',
                                  style: TextStyle(
                                      color: Colors.deepOrange,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(width: 140,),
                                RoundCheckBox(
                                  onTap: (selected) {},
                                  size: 30,
                                  uncheckedColor: Colors.white,
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Colors.indigo),
                    ),
                    child: Image.asset(
                      'images/redshoes-removebg-preview.png',
                      height: 120,
                    ),
                  ),
                  Container(
                    height: 122,
                    width: 250,
                    decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Colors.indigo),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Text(
                              'Fashion ManShoes',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Row(
                              children: [
                                Text(
                                  '\$19.50',
                                  style: TextStyle(
                                      color: Colors.deepOrange,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(width: 140,),
                                RoundCheckBox(
                                  onTap: (selected) {},
                                  size: 30,
                                  uncheckedColor: Colors.white,
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Colors.indigo),
                    ),
                    child: Image.asset(
                      'images/redshoes-removebg-preview.png',
                      height: 120,
                    ),
                  ),
                  Container(
                    height: 122,
                    width: 250,
                    decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Colors.indigo),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Text(
                              'Fashion ManShoes',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Row(
                              children: [
                                Text(
                                  '\$19.50',
                                  style: TextStyle(
                                      color: Colors.deepOrange,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(width: 140,),
                                RoundCheckBox(
                                  onTap: (selected) {},
                                  size: 30,
                                  uncheckedColor: Colors.white,
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
