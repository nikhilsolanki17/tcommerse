import 'package:flutter/material.dart';

class neworder extends StatefulWidget {
  const neworder({Key? key}) : super(key: key);

  @override
  State<neworder> createState() => _neworderState();
}

class _neworderState extends State<neworder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          'Back To Home',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Center(
        child: Container(
          width: 400,
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
                        Tab(text: 'Deliverel(0)'),
                        Tab(text: 'Processing(0)'),
                        Tab(text: 'Cancelled(0)'),
                      ]),
                ),
                Expanded(
                  child: TabBarView(
                    children: [
                      SingleChildScrollView(
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Row(
                                          children: [
                                            Image.asset(
                                              'images/shoes.png',
                                              height: 50,
                                            ),
                                            Column(
                                              children: [
                                                RichText(
                                                  text: TextSpan(
                                                    text: 'Quantity: ',
                                                    style: TextStyle(
                                                        color: Colors.grey),
                                                    children: const <TextSpan>[
                                                      TextSpan(
                                                          text: '3',
                                                          style: TextStyle(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              color: Colors
                                                                  .black)),
                                                    ],
                                                  ),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.all(4.0),
                                                  child: RichText(
                                                    text: TextSpan(
                                                      text: 'Total Amount: ',
                                                      style: TextStyle(
                                                          color: Colors.grey),
                                                      children: const <
                                                          TextSpan>[
                                                        TextSpan(
                                                            text: '112\$',
                                                            style: TextStyle(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                color: Colors
                                                                    .deepOrange)),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            SizedBox(
                                              width: 50,
                                            ),
                                            Text(
                                              '09-04-2022',
                                              style:
                                                  TextStyle(color: Colors.grey),
                                            )
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(4.0),
                                        child: RichText(
                                          text: TextSpan(
                                            text: 'Order No. ',
                                            style:
                                                TextStyle(color: Colors.grey),
                                            children: const <TextSpan>[
                                              TextSpan(
                                                  text: '1947034',
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Colors.black)),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(4.0),
                                        child: RichText(
                                          text: TextSpan(
                                            text: 'Trackin number:',
                                            style:
                                                TextStyle(color: Colors.grey),
                                            children: const <TextSpan>[
                                              TextSpan(
                                                  text: '1W3475555555',
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Colors.black)),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          Container(
                                            alignment: Alignment.center,
                                            margin: EdgeInsets.all(8),
                                            height: 30,
                                            width: 100,
                                            child: Text('Deatils'),
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(15),
                                                color: Colors.yellow[100],
                                                border: Border.all(
                                                  width: 1,
                                                )),
                                          ),
                                          SizedBox(
                                            width: 170,
                                          ),
                                          Text(
                                            'Delivered',
                                            style:
                                                TextStyle(color: Colors.green),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                color: Colors.red[100],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Row(
                                          children: [
                                            Image.asset(
                                              'images/shoes.png',
                                              height: 50,
                                            ),
                                            Column(
                                              children: [
                                                RichText(
                                                  text: TextSpan(
                                                    text: 'Quantity: ',
                                                    style: TextStyle(
                                                        color: Colors.grey),
                                                    children: const <TextSpan>[
                                                      TextSpan(
                                                          text: '3',
                                                          style: TextStyle(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              color: Colors
                                                                  .black)),
                                                    ],
                                                  ),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.all(4.0),
                                                  child: RichText(
                                                    text: TextSpan(
                                                      text: 'Total Amount: ',
                                                      style: TextStyle(
                                                          color: Colors.grey),
                                                      children: const <
                                                          TextSpan>[
                                                        TextSpan(
                                                            text: '112\$',
                                                            style: TextStyle(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                color: Colors
                                                                    .deepOrange)),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            SizedBox(
                                              width: 50,
                                            ),
                                            Text(
                                              '09-04-2022',
                                              style:
                                                  TextStyle(color: Colors.grey),
                                            )
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(4.0),
                                        child: RichText(
                                          text: TextSpan(
                                            text: 'Order No. ',
                                            style:
                                                TextStyle(color: Colors.grey),
                                            children: const <TextSpan>[
                                              TextSpan(
                                                  text: '1947034',
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Colors.black)),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(4.0),
                                        child: RichText(
                                          text: TextSpan(
                                            text: 'Trackin number:',
                                            style:
                                                TextStyle(color: Colors.grey),
                                            children: const <TextSpan>[
                                              TextSpan(
                                                  text: '1W3475555555',
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Colors.black)),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          Container(
                                            alignment: Alignment.center,
                                            margin: EdgeInsets.all(8),
                                            height: 30,
                                            width: 100,
                                            child: Text('Deatils'),
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(15),
                                                color: Colors.yellow[100],
                                                border: Border.all(
                                                  width: 1,
                                                )),
                                          ),
                                          SizedBox(
                                            width: 170,
                                          ),
                                          Text(
                                            'Delivered',
                                            style:
                                                TextStyle(color: Colors.green),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                color: Colors.red[100],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Row(
                                          children: [
                                            Image.asset(
                                              'images/shoes.png',
                                              height: 50,
                                            ),
                                            Column(
                                              children: [
                                                RichText(
                                                  text: TextSpan(
                                                    text: 'Quantity: ',
                                                    style: TextStyle(
                                                        color: Colors.grey),
                                                    children: const <TextSpan>[
                                                      TextSpan(
                                                          text: '3',
                                                          style: TextStyle(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              color: Colors
                                                                  .black)),
                                                    ],
                                                  ),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.all(4.0),
                                                  child: RichText(
                                                    text: TextSpan(
                                                      text: 'Total Amount: ',
                                                      style: TextStyle(
                                                          color: Colors.grey),
                                                      children: const <
                                                          TextSpan>[
                                                        TextSpan(
                                                            text: '112\$',
                                                            style: TextStyle(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                color: Colors
                                                                    .deepOrange)),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            SizedBox(
                                              width: 50,
                                            ),
                                            Text(
                                              '09-04-2022',
                                              style:
                                                  TextStyle(color: Colors.grey),
                                            )
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(4.0),
                                        child: RichText(
                                          text: TextSpan(
                                            text: 'Order No. ',
                                            style:
                                                TextStyle(color: Colors.grey),
                                            children: const <TextSpan>[
                                              TextSpan(
                                                  text: '1947034',
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Colors.black)),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(4.0),
                                        child: RichText(
                                          text: TextSpan(
                                            text: 'Trackin number:',
                                            style:
                                                TextStyle(color: Colors.grey),
                                            children: const <TextSpan>[
                                              TextSpan(
                                                  text: '1W3475555555',
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Colors.black)),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          Container(
                                            alignment: Alignment.center,
                                            margin: EdgeInsets.all(8),
                                            height: 30,
                                            width: 100,
                                            child: Text('Deatils'),
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(15),
                                                color: Colors.yellow[100],
                                                border: Border.all(
                                                  width: 1,
                                                )),
                                          ),
                                          SizedBox(
                                            width: 170,
                                          ),
                                          Text(
                                            'Delivered',
                                            style:
                                                TextStyle(color: Colors.green),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                color: Colors.red[100],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Row(
                                          children: [
                                            Image.asset(
                                              'images/shoes.png',
                                              height: 50,
                                            ),
                                            Column(
                                              children: [
                                                RichText(
                                                  text: TextSpan(
                                                    text: 'Quantity: ',
                                                    style: TextStyle(
                                                        color: Colors.grey),
                                                    children: const <TextSpan>[
                                                      TextSpan(
                                                          text: '3',
                                                          style: TextStyle(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              color: Colors
                                                                  .black)),
                                                    ],
                                                  ),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.all(4.0),
                                                  child: RichText(
                                                    text: TextSpan(
                                                      text: 'Total Amount: ',
                                                      style: TextStyle(
                                                          color: Colors.grey),
                                                      children: const <
                                                          TextSpan>[
                                                        TextSpan(
                                                            text: '112\$',
                                                            style: TextStyle(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                color: Colors
                                                                    .deepOrange)),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            SizedBox(
                                              width: 50,
                                            ),
                                            Text(
                                              '09-04-2022',
                                              style:
                                                  TextStyle(color: Colors.grey),
                                            )
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(4.0),
                                        child: RichText(
                                          text: TextSpan(
                                            text: 'Order No. ',
                                            style:
                                                TextStyle(color: Colors.grey),
                                            children: const <TextSpan>[
                                              TextSpan(
                                                  text: '1947034',
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Colors.black)),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(4.0),
                                        child: RichText(
                                          text: TextSpan(
                                            text: 'Trackin number:',
                                            style:
                                                TextStyle(color: Colors.grey),
                                            children: const <TextSpan>[
                                              TextSpan(
                                                  text: '1W3475555555',
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Colors.black)),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          Container(
                                            alignment: Alignment.center,
                                            margin: EdgeInsets.all(8),
                                            height: 30,
                                            width: 100,
                                            child: Text('Deatils'),
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(15),
                                                color: Colors.yellow[100],
                                                border: Border.all(
                                                  width: 1,
                                                )),
                                          ),
                                          SizedBox(
                                            width: 170,
                                          ),
                                          Text(
                                            'Delivered',
                                            style:
                                                TextStyle(color: Colors.green),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                color: Colors.red[100],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 100,
                        child: Text(
                          'in most cases to make a singular noun to a plural noun'
                          ' we add an as other th most howerver as you ass  add in most '
                          'cases to make a singular noun to a plural noun'
                          'in most cases to make a singular noun to a plural noun'
                          ' we add an as other th most howerver as you ass  add in most',
                          style: TextStyle(
                              color: Colors.grey,
                              letterSpacing: 0.0,
                              height: 1.9),
                        ),
                      ),
                      Container(
                        height: 100,
                        child: Text(
                          'one  most cases to make a singular noun to a plural noun'
                          ' we add an as other th most howerver as you ass  add in most ',
                          style: TextStyle(
                              color: Colors.grey,
                              letterSpacing: 0.0,
                              height: 1.9),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
