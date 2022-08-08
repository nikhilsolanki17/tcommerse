import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';

import '../Homescreen/homescreen.dart';

class settings extends StatefulWidget {
  const settings({Key? key}) : super(key: key);

  @override
  State<settings> createState() => _settingsState();
}

class _settingsState extends State<settings> {
  bool status1 = false;
  bool status2 = false;
  bool status3 = false;
  bool status4 = false;
  bool status5 = false;

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
        children: [
          Stack(children: <Widget>[
            // Background with gradient
            Container(
              height: 100,
              color: Colors.deepOrangeAccent,

              // height: MediaQuery.of(context).size.height * 0.3),
            ),
            //Above card
            Container(
              height: MediaQuery.of(context).size.height * 0.50,
              width: MediaQuery.of(context).size.width * 0.98,
              child: Card(
                  color: Colors.white,
                  elevation: 0.0,
                  margin: EdgeInsets.only(
                    left: 10.0,
                    right: 5.0,
                    top: 10.0,
                  ),
                  child: Column(children: <Widget>[
                    SizedBox(
                      height: 80,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Icon(
                                Icons.notifications,
                                color: Colors.deepOrange,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                'Notification',
                                style: TextStyle(fontWeight: FontWeight.w800),
                              ),
                            ),
                            Spacer(),
                            Container(
                              child: FlutterSwitch(
                                width: 60.0,
                                height: 30.0,
                                valueFontSize: 15.0,
                                toggleSize: 20.0,
                                value: status1,
                                borderRadius: 30.0,
                                padding: 8.0,
                                showOnOff: true,
                                activeColor: Colors.green,
                                inactiveColor: Colors.grey,
                                onToggle: (val) {
                                  setState(() {
                                    status1 = val;
                                  });
                                },
                              ),
                            )
                          ]),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Icon(
                                Icons.dark_mode,
                                color: Colors.deepOrange,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                'Dark Mode',
                                style: TextStyle(fontWeight: FontWeight.w800),
                              ),
                            ),
                            Spacer(),
                            Container(
                              child: FlutterSwitch(
                                width: 60.0,
                                height: 30.0,
                                valueFontSize: 15.0,
                                toggleSize: 20.0,
                                value: status2,
                                borderRadius: 30.0,
                                padding: 8.0,
                                showOnOff: true,
                                activeColor: Colors.green,
                                inactiveColor: Colors.grey,
                                onToggle: (val) {
                                  setState(() {
                                    status2 = val;
                                  });
                                },
                              ),
                            )
                          ]),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Icon(
                                Icons.location_on,
                                color: Colors.deepOrange,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                'Active Location',
                                style: TextStyle(fontWeight: FontWeight.w800),
                              ),
                            ),
                            Spacer(),
                            Container(
                              child: FlutterSwitch(
                                width: 60.0,
                                height: 30.0,
                                valueFontSize: 15.0,
                                toggleSize: 20.0,
                                value: status3,
                                borderRadius: 30.0,
                                padding: 8.0,
                                showOnOff: true,
                                activeColor: Colors.green,
                                inactiveColor: Colors.grey,
                                onToggle: (val) {
                                  setState(() {
                                    status3 = val;
                                  });
                                },
                              ),
                            )
                          ]),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Icon(
                                Icons.translate_rounded,
                                color: Colors.deepOrange,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                'Languages',
                                style: TextStyle(fontWeight: FontWeight.w800),
                              ),
                            ),
                            Spacer(),
                            Container(
                              child: FlutterSwitch(
                                width: 60.0,
                                height: 30.0,
                                valueFontSize: 15.0,
                                toggleSize: 20.0,
                                value: status4,
                                borderRadius: 30.0,
                                padding: 8.0,
                                showOnOff: true,
                                activeColor: Colors.green,
                                inactiveColor: Colors.grey,
                                onToggle: (val) {
                                  setState(() {
                                    status4 = val;
                                  });
                                },
                              ),
                            )
                          ]),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Icon(
                                Icons.ads_click,
                                color: Colors.deepOrange,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text('One Click Log in',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w800,
                                  ),
                                  textAlign: TextAlign.left),
                            ),
                            Spacer(),
                            Container(
                              child: FlutterSwitch(
                                width: 60.0,
                                height: 30.0,
                                valueFontSize: 15.0,
                                toggleSize: 20.0,
                                value: status5,
                                borderRadius: 30.0,
                                padding: 8.0,
                                showOnOff: true,
                                activeColor: Colors.green,
                                inactiveColor: Colors.grey,
                                onToggle: (val) {
                                  setState(() {
                                    status5 = val;
                                  });
                                },
                              ),
                            )
                          ]),
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
        ],
      ),
    );
  }
}
