import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class onlineshop extends StatefulWidget {
  const onlineshop({Key? key}) : super(key: key);

  @override
  State<onlineshop> createState() => _onlineshopState();
}

class _onlineshopState extends State<onlineshop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Spacer(),
          Center(child: Image.asset("images/delivery.png")),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text('Online Shopping',
                style: TextStyle(color: Colors.black, fontSize: 25)),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Fastest Delivery",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.bold)),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
                "Top commerce ia a online store. Its has 50k+ \n Products.  You can buy every into \na products in easy way",
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 15,
                    fontWeight: FontWeight.normal)),
          ),
          Spacer(),
        ],
      ),
    );
  }
}
