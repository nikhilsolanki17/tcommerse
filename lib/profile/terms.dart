import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Homescreen/homescreen.dart';

class termscondition extends StatefulWidget {
  const termscondition({Key? key}) : super(key: key);

  @override
  State<termscondition> createState() => _termsconditionState();
}

class _termsconditionState extends State<termscondition> {
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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              '1.Eligibility:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'The user must understand to adhere to the eligibility to enter'
                  'The user must understand to adhere to the eligibility to enter'
                  'The user must understand to adhere to the eligibility to enter'
                  'The user must understand to adhere to the eligibility to enter',
              style: TextStyle(color: Colors.grey),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              '2.Cancellation and refund:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'The user must understand to adhere to the eligibility to enter'
                  'The user must understand to adhere to the eligibility to enter'
                  'The user must understand to adhere to the eligibility to enter'
                  'The user must understand to adhere to the eligibility to enter',
              style: TextStyle(color: Colors.grey),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              '3.Terms of services of FDP:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'The user must understand to adhere to the eligibility to enter'
                  'The user must understand to adhere to the eligibility to enter'
                  'The user must understand to adhere to the eligibility to enter'
                  'The user must understand to adhere to the eligibility to enter',
              style: TextStyle(color: Colors.grey),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              '4.Cancellation of Order:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'The user must understand to adhere to the eligibility to enter'
                  'The user must understand to adhere to the eligibility to enter'
                  'The user must understand to adhere to the eligibility to enter'
                  'The user must understand to adhere to the eligibility to enter',
              style: TextStyle(color: Colors.grey),
            ),
          ),
        ],
      ),
    );
  }
}
