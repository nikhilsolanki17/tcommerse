import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';
import 'package:number_inc_dec/number_inc_dec.dart';
import 'package:roundcheckbox/roundcheckbox.dart';
import 'package:tcommerce/profile/cart/address.dart';

import '../../Homescreen/homescreen.dart';

class cart extends StatefulWidget {
  @override
  State<cart> createState() => _cartState();
}

class _cartState extends State<cart> {
  int _count = 0;

  void _incrmentCount() {
    setState(() {
      _count++;
    });
  }

  void _decrementCount() {
    if (_count < 1) {
      return;
    }

    setState(() {
      _count--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: Text('CART'),
        centerTitle: true,
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
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                children: [
                  Icon(Icons.shopping_cart),
                  Text(
                    '\t\t\t\t\t 4 Items in your cart',
                    style: TextStyle(
                        color: Colors.indigo, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                showModalBottomSheet<void>(
                  context: context,
                  builder: (BuildContext context) {
                    return Container(
                      height: 150,
                      color: Colors.white,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  'Order Amount',
                                  style: TextStyle(
                                      color: Colors.indigo,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Spacer(),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "\$900",
                                  style: TextStyle(
                                      color: Colors.indigo,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ],
                          ),
                          Container(
                            margin: EdgeInsets.all(25),
                            child: FlatButton(
                              child: Text(
                                'Place to Order',
                                style: TextStyle(fontSize: 20.0),
                              ),
                              color: Colors.deepOrange,
                              textColor: Colors.white,
                              onPressed: () {
                                showModalBottomSheet<void>(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return Container(
                                      height: 550,
                                      color: Colors.white,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Text(
                                              'Apply Promo Code',
                                              style:
                                                  TextStyle(color: Colors.grey),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Row(
                                              children: [
                                                Container(
                                                  decoration: BoxDecoration(
                                                    border: Border.all(
                                                      color: Colors.blue,
                                                    ),
                                                  ),
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      0.65,
                                                  height: MediaQuery.of(context)
                                                          .size
                                                          .height *
                                                      0.10,
                                                ),
                                                Container(
                                                  child: TextButton(
                                                    style: TextButton.styleFrom(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              16.0),
                                                      textStyle:
                                                          const TextStyle(
                                                              fontSize: 20),
                                                    ),
                                                    onPressed: () {},
                                                    child: const Text(
                                                      'Remove',
                                                      style: TextStyle(
                                                          color: Colors.white),
                                                    ),
                                                  ),
                                                  height: MediaQuery.of(context)
                                                          .size
                                                          .height *
                                                      0.10,
                                                  color: Colors.indigo,
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Text(
                                              'Bill Details',
                                              style: TextStyle(
                                                  color: Colors.indigo,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: Text(
                                                  'subtotal',
                                                  style: TextStyle(
                                                      color: Colors.indigo),
                                                ),
                                              ),
                                              SizedBox(
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.60,
                                              ),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: Text(
                                                  'subtotal',
                                                  style: TextStyle(
                                                      color: Colors.indigo),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: Text(
                                                  'Discount',
                                                  style: TextStyle(
                                                      color: Colors.deepOrange),
                                                ),
                                              ),
                                              SizedBox(
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.60,
                                              ),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: Text(
                                                  '-\$12.00',
                                                  style: TextStyle(
                                                      color: Colors.deepOrange),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: Text(
                                                  'Total',
                                                  style: TextStyle(
                                                      color: Colors.indigo),
                                                ),
                                              ),
                                              SizedBox(
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.69,
                                              ),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: Text(
                                                  '\$900',
                                                  style: TextStyle(
                                                      color: Colors.indigo),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Center(
                                            child: Container(
                                              margin: EdgeInsets.all(25),
                                              child: FlatButton(
                                                child: Text(
                                                  'Place to Order',
                                                  style:
                                                      TextStyle(fontSize: 20.0),
                                                ),
                                                color: Colors.deepOrange,
                                                textColor: Colors.white,
                                                onPressed: () {},
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    );
                                  },
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                );
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(width: 1, color: Colors.indigo),
                      ),
                      child: Column(
                        children: [
                          Image.asset(
                            'images/redshoes-removebg-preview.png',
                            height: 131,
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 132,
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
                                    style: TextStyle(color: Colors.deepOrange),
                                  ),
                                ],
                              ),
                            ),
                            Row(
                              children: [
                                FloatingActionButton(
                                    mini: true,
                                    child: Icon(Icons.add),
                                    onPressed: _incrmentCount),
                                Text("${_count}"),
                                FloatingActionButton(
                                    mini: true,
                                    child: Icon(Icons.remove),
                                    onPressed: _decrementCount)
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                showModalBottomSheet<void>(
                  context: context,
                  builder: (BuildContext context) {
                    return Container(
                      height: 150,
                      color: Colors.white,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  'Order Amount',
                                  style: TextStyle(
                                      color: Colors.indigo,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Spacer(),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "\$900",
                                  style: TextStyle(
                                      color: Colors.indigo,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ],
                          ),
                          Container(
                            margin: EdgeInsets.all(25),
                            child: FlatButton(
                              child: Text(
                                'Place to Order',
                                style: TextStyle(fontSize: 20.0),
                              ),
                              color: Colors.deepOrange,
                              textColor: Colors.white,
                              onPressed: () {
                                showModalBottomSheet<void>(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return Container(
                                      height: 550,
                                      color: Colors.white,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Text(
                                              'Apply Promo Code',
                                              style:
                                                  TextStyle(color: Colors.grey),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Row(
                                              children: [
                                                Container(
                                                  decoration: BoxDecoration(
                                                    border: Border.all(
                                                      color: Colors.blue,
                                                    ),
                                                  ),
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      0.65,
                                                  height: MediaQuery.of(context)
                                                          .size
                                                          .height *
                                                      0.10,
                                                ),
                                                Container(
                                                  child: TextButton(
                                                    style: TextButton.styleFrom(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              16.0),
                                                      textStyle:
                                                          const TextStyle(
                                                              fontSize: 20),
                                                    ),
                                                    onPressed: () {},
                                                    child: const Text(
                                                      'Remove',
                                                      style: TextStyle(
                                                          color: Colors.white),
                                                    ),
                                                  ),
                                                  height: MediaQuery.of(context)
                                                          .size
                                                          .height *
                                                      0.10,
                                                  color: Colors.indigo,
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Text(
                                              'Bill Details',
                                              style: TextStyle(
                                                  color: Colors.indigo,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: Text(
                                                  'subtotal',
                                                  style: TextStyle(
                                                      color: Colors.indigo),
                                                ),
                                              ),
                                              SizedBox(
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.60,
                                              ),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: Text(
                                                  'subtotal',
                                                  style: TextStyle(
                                                      color: Colors.indigo),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: Text(
                                                  'Discount',
                                                  style: TextStyle(
                                                      color: Colors.deepOrange),
                                                ),
                                              ),
                                              SizedBox(
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.60,
                                              ),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: Text(
                                                  '-\$12.00',
                                                  style: TextStyle(
                                                      color: Colors.deepOrange),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: Text(
                                                  'Total',
                                                  style: TextStyle(
                                                      color: Colors.indigo),
                                                ),
                                              ),
                                              SizedBox(
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.69,
                                              ),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: Text(
                                                  '\$900',
                                                  style: TextStyle(
                                                      color: Colors.indigo),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Center(
                                            child: Container(
                                              margin: EdgeInsets.all(25),
                                              child: FlatButton(
                                                child: Text(
                                                  'Place to Order',
                                                  style:
                                                      TextStyle(fontSize: 20.0),
                                                ),
                                                color: Colors.deepOrange,
                                                textColor: Colors.white,
                                                onPressed: () {},
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    );
                                  },
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                );
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(width: 1, color: Colors.indigo),
                      ),
                      child: Column(
                        children: [
                          Image.asset(
                            'images/redshoes-removebg-preview.png',
                            height: 131,
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 132,
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
                                    style: TextStyle(color: Colors.deepOrange),
                                  ),
                                ],
                              ),
                            ),
                            Row(
                              children: [
                                FloatingActionButton(
                                    mini: true,
                                    child: Icon(Icons.add),
                                    onPressed: _incrmentCount),
                                Text("${_count}"),
                                FloatingActionButton(
                                    mini: true,
                                    child: Icon(Icons.remove),
                                    onPressed: _decrementCount)
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Delivery Location',
                    style: TextStyle(
                        color: Colors.indigo, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.45,
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(40, 20),
                      maximumSize: const Size(100, 20),
                    ),
                    onPressed: () {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) => add()));
                    },
                    child: Text('Add')),
              ],
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.all(10),
                    height: 140,
                    width: 220,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.blue,
                      ),
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            RoundCheckBox(
                              onTap: (selected) {},
                              size: 30,
                              uncheckedColor: Colors.white,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Home',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: 100,
                            ),
                            Icon(Icons.pending)
                          ],
                        ),
                        Text(
                          '3571w. ulta . nok \npenn govingkkkk\nphone no.9999999',
                          style: TextStyle(color: Colors.grey),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    height: 140,
                    width: 220,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.blue,
                      ),
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            RoundCheckBox(
                              onTap: (selected) {},
                              size: 30,
                              uncheckedColor: Colors.white,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Office',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: 100,
                            ),
                            Icon(Icons.pending)
                          ],
                        ),
                        Text(
                          '3571w. ulta . nok \npenn govingkkkk\nphone no.9999999',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    ' Payment Method',
                    style: TextStyle(
                        color: Colors.indigo, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.45,
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(40, 20),
                      maximumSize: const Size(100, 20),
                    ),
                    onPressed: () {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) => add()));
                    },
                    child: Text('Add')),
              ],
            ),
            Container(
              margin: EdgeInsets.all(10),
              height: 40,
              width: 220,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.blue,
                ),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      RoundCheckBox(
                        onTap: (selected) {},
                        size: 30,
                        uncheckedColor: Colors.white,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Image.asset(
                        'images/phonepy-removebg-preview.png',
                        cacheWidth: 30,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Master card',
                          style: TextStyle(color: Colors.indigo),
                        ),
                      ),
                      Spacer(),
                      Icon(Icons.arrow_forward_ios)
                    ],
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              height: 40,
              width: 220,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.blue,
                ),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      RoundCheckBox(
                        onTap: (selected) {},
                        size: 30,
                        uncheckedColor: Colors.white,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Image.asset(
                        'images/phonepy-removebg-preview.png',
                        cacheWidth: 30,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Master card',
                          style: TextStyle(color: Colors.indigo),
                        ),
                      ),
                      Spacer(),
                      Icon(Icons.arrow_forward_ios)
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
