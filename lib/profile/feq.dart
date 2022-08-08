import 'package:flutter/material.dart';

import '../Homescreen/homescreen.dart';

class faq extends StatefulWidget {
  const faq({Key? key}) : super(key: key);

  @override
  State<faq> createState() => _faqState();
}

class _faqState extends State<faq> {
  final items = ['Item1fhdlkjfhdhfjdsfhdskjfhdsjfdskfj'];

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
          'FAQ',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Text('dkdlksadjadaskj'),
            ],
          )
        ],
      ),
    );
  }
}
