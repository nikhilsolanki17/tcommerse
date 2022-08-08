import 'package:flutter/material.dart';
import 'package:tcommerce/Homescreen/homescreen.dart';
import 'package:tcommerce/notification/notificationsetting.dart';

import '../order/ordrnow.dart';

class notification extends StatefulWidget {
  const notification({Key? key}) : super(key: key);

  @override
  State<notification> createState() => _notificationState();
}

class _notificationState extends State<notification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pushReplacement(
                context, MaterialPageRoute(builder: (context) => HomeScreen()));
          },
        ),
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          'Notifaction',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(50.0),
            child: Image.asset('images/notification-removebg-preview.png'),
          ),
          Text(
            'Nothing Here\!',
            style: TextStyle(
                color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              ' Top the notification setting button   \n        bellow and check again ',
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
                  context, MaterialPageRoute(builder: (_) => settings())),
            ),
          ),
          Spacer()
        ],
      ),
    );
  }
}
