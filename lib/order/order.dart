import 'package:flutter/material.dart';

import 'ordrnow.dart';

class order extends StatefulWidget {
  const order({Key? key}) : super(key: key);

  @override
  State<order> createState() => _orderState();
}

class _orderState extends State<order> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 300,
              child: DefaultTabController(
                length: 3, // Added
                initialIndex: 0,
                child: Column(
                  children: [
                    Container(
                      color: Colors.deepOrange,
                      child: TabBar(
                          indicator: BoxDecoration(color: Colors.grey),
                          tabs: [
                            Tab(text: 'Deliverel'),
                            Tab(text: 'Processing'),
                            Tab(text: 'Cancelled'),
                          ]),
                    ),

                  ],
                ),
              ),
            ),
            SizedBox(
              height: 80,
            ),
            Padding(
              padding: const EdgeInsets.all(50.0),
              child: Image.asset('images/gift-removebg-preview.png'),
            ),
            Text(
              'NoOrder Yet \!',
              style: TextStyle(
                  color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                ' You dont have a any order, please order Now',
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 15,
                    fontWeight: FontWeight.normal),
              ),
            ),
            Container(
              margin: EdgeInsets.all(25),
              child: FlatButton(
                child: Text(
                  'Order Product Now',
                  style: TextStyle(fontSize: 20.0),
                ),
                color: Colors.deepOrange,
                textColor: Colors.white,
                onPressed: () => Navigator.push(
                    context, MaterialPageRoute(builder: (_) => neworder())),
                 ),
            ),
          ],
        ),
      ),
    );
  }
}
