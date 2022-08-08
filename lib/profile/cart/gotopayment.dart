import 'package:flutter/material.dart';

import 'addpaymnetmethod.dart';

class susseful extends StatefulWidget {
  const susseful({Key? key}) : super(key: key);

  @override
  State<susseful> createState() => _sussefulState();
}

class _sussefulState extends State<susseful> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: <Widget>[
        // Background with gradient
        Container(
          height: 100,
          color: Colors.deepOrangeAccent,

          // height: MediaQuery.of(context).size.height * 0.3),
        ),
        //Above card
        Container(
          height: MediaQuery.of(context).size.height * 1.20,
          child: Card(
              color: Colors.white,
              elevation: 0.0,
              margin: EdgeInsets.only(
                left: 10.0,
                right: 5.0,
                top: 80.0,
              ),
              child: Column(children: <Widget>[
                Column(
                  children: [
                    SizedBox(
                      height: 80,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(50.0),
                      child: Image.asset('images/verify-removebg-preview.png'),
                    ),
                    Text(
                      'Successfilly add \n\t\t New Address',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Text(
                        'You have add your new add in you \n\t\t\t\t\tpayment screen. Thnk You',
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
                          'Go To Payment',
                          style: TextStyle(fontSize: 20.0),
                        ),
                        color: Colors.deepOrange,
                        textColor: Colors.white,
                        onPressed: () => Navigator.push(context,
                            MaterialPageRoute(builder: (_) => addnew())),
                      ),
                    ),
                  ],
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
          ),
        ),
      ]),
    );
  }
}
