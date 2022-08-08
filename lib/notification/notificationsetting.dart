import 'package:flutter/material.dart';
import 'package:tcommerce/notification/notifcation.dart';

class settings extends StatefulWidget {
  const settings({Key? key}) : super(key: key);

  @override
  State<settings> createState() => _settingsState();
}

class _settingsState extends State<settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.black),
            onPressed: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => notification()));
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
        body: ListView.builder(
          itemCount: 10,
          itemBuilder: (BuildContext context, int index) {
            return 10 == 10
                ? Container(
                    margin: EdgeInsets.all(8),
                    color: Colors.white30,
                    width: MediaQuery.of(context).size.width * 1.90,
                    height: MediaQuery.of(context).size.height * 0.10,
                    child: Row(
                      children: [
                        Image.asset(
                          'images/shoes.png',
                          height: 50,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: RichText(
                            text: TextSpan(
                              text: '50% OFF ',
                              style: TextStyle(color: Colors.deepOrange),
                              children: const <TextSpan>[
                                TextSpan(
                                    text:
                                        'in Ultraboosat All   \nTerrain ltd Shoos',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.grey)),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.20,
                        ),
                        Text(
                          '9:35',
                          style: TextStyle(color: Colors.grey),
                        )
                      ],
                    ),
                  )

                : Center(
                    child: Text('data not found'),
                  );
          },
        ));
  }
}
