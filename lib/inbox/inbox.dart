import 'package:flutter/material.dart';

import 'massegngar.dart';

class inbox extends StatefulWidget {
  const inbox({Key? key}) : super(key: key);

  @override
  State<inbox> createState() => _inboxState();
}

class _inboxState extends State<inbox> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 80,
          ),
          Padding(
            padding: const EdgeInsets.all(50.0),
            child: Image.asset('images/email-removebg-preview.png'),
          ),
          Text(
            'No Message Found \!',
            style: TextStyle(
                color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              ' its seens no messages in your inbox',
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
                'Start a Conversation',
                style: TextStyle(fontSize: 20.0),
              ),
              color: Colors.deepOrange,
              textColor: Colors.white,
              onPressed: () => Navigator.push(
                  context, MaterialPageRoute(builder: (_) => massage())),
            ),
          ),
        ],
      ),
    );
  }
}
