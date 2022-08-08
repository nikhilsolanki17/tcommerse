import 'package:flutter/material.dart';

class categories extends StatelessWidget {
  const categories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepOrange,
          title: Text('All Categories'),
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(9.0),
              child: Row(
                children: [
                  Column(
                    children: [
                      CircleAvatar(
                        child: Image.asset(
                          'images/electronics.png',
                          height: 40,
                        ),
                        backgroundColor: Colors.grey[300],
                        radius: 40,
                      ),
                      Text(
                        'Electronic',
                        style: TextStyle(fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(9.0),
                    child: Column(
                      children: [
                        CircleAvatar(
                          child: Image.asset(
                            'images/bike.png',
                            height: 40,
                          ),
                          backgroundColor: Colors.grey[300],
                          radius: 40,
                        ),
                        Text(
                          'bike',
                          style: TextStyle(fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(9.0),
                    child: Column(
                      children: [
                        CircleAvatar(
                          child: Image.asset(
                            'images/male-clothes.png',
                            height: 40,
                          ),
                          backgroundColor: Colors.grey[300],
                          radius: 40,
                        ),
                        Text(
                          'Men Fashion',
                          style: TextStyle(fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(9.0),
                    child: Column(
                      children: [
                        CircleAvatar(
                          child: Image.asset(
                            'images/smartphone.png',
                            height: 40,
                          ),
                          backgroundColor: Colors.grey[300],
                          radius: 40,
                        ),
                        Text(
                          'Mobiles',
                          style: TextStyle(fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(9.0),
              child: Row(
                children: [
                  Column(
                    children: [
                      CircleAvatar(
                        child: Image.asset(
                          'images/safety-glasses.png',
                          height: 40,
                        ),
                        backgroundColor: Colors.grey[300],
                        radius: 40,
                      ),
                      Text(
                        'Lifestyle',
                        style: TextStyle(fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(9.0),
                    child: Column(
                      children: [
                        CircleAvatar(
                          child: Image.asset(
                            'images/vehicle.png',
                            height: 40,
                          ),
                          backgroundColor: Colors.grey[300],
                          radius: 40,
                        ),
                        Text(
                          'Vehicles',
                          style: TextStyle(fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(9.0),
                    child: Column(
                      children: [
                        CircleAvatar(
                          child: Image.asset(
                            'images/fashion.png',
                            height: 40,
                          ),
                          backgroundColor: Colors.grey[300],
                          radius: 40,
                        ),
                        Text(
                          'Woman Fuso',
                          style: TextStyle(fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(9.0),
                    child: Column(
                      children: [
                        CircleAvatar(
                          child: Image.asset(
                            'images/toys.png',
                            height: 40,
                          ),
                          backgroundColor: Colors.grey[300],
                          radius: 40,
                        ),
                        Text(
                          'Toy',
                          style: TextStyle(fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
