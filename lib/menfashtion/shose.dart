import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:like_button/like_button.dart';

import 'menfashtion.dart';

class shose extends StatefulWidget {
  const shose({Key? key}) : super(key: key);

  @override
  State<shose> createState() => _shoseState();
}

class _shoseState extends State<shose> {
  final double size = 35;
  bool isLiked = false;

  // final colorPalatte = ColorPalette();

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
// Container(
//   height: 400,
//   color: Colors.yellow,
// ),
//             Padding(
//               padding: const EdgeInsets.only(bottom: 00),
//               child: Container(
//                 decoration: BoxDecoration(
//                   color: Colors.green,
//                   borderRadius: BorderRadius.only(
//                     bottomLeft: Radius.circular(60),
//                     bottomRight: Radius.circular(60),
//                   ),
//                 ),
//               ),
//             ),
            Container(
              height: 400,
              decoration: BoxDecoration(
                  color: Colors.teal[50],
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(60),
                      bottomRight: Radius.circular(60))),
              child: Row(
                children: [
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 310),
                      child: IconButton(
                        icon: Icon(
                          Icons.arrow_back_ios,
                          color: Colors.black,
                        ),
                        onPressed: () {
                          Navigator.pushReplacement(context,
                              MaterialPageRoute(builder: (context) => men()));
                        },
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 310),
                    child: Text('Products Details'),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(180, 0, 0, 260),
                    child: LikeButton(
                      size: size,
                      isLiked: isLiked,
//  likeCount: likeCount,
                      likeBuilder: (isLiked) {
                        final color = isLiked ? Colors.red : Colors.grey;
                        return Icon(
                          Icons.favorite,
                          color: color,
                          size: size,
                        );
                      },
                      likeCountPadding: EdgeInsets.only(left: 0),
                      countBuilder: (count, isLiked, text) {
                        final color = isLiked ? Colors.black : Colors.white;
                        return Text(
                          text,
                          style: TextStyle(
                            color: color,
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                          ),
                        );
                      },
                      onTap: (isLiked) async {
                        return !isLiked;
                      },
                    ),
                  )
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(100.0),
              child: Image.asset('images/shose5-removebg-preview.png'),
            ),
            Positioned(
              top: 370,
              left: 100,
              child: Row(
                children: [
                  Container(
                    child: Image.asset('images/shose.png'),
                    // height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        border: Border.all(width: 1, color: Colors.indigo),
                        color: Colors.white),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    child: Image.asset('images/shose3-removebg-preview.png'),
                    // height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        border: Border.all(width: 1, color: Colors.indigo),
                        color: Colors.white),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    child: Image.asset('images/shose.png'),
                    // height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        border: Border.all(width: 1, color: Colors.indigo),
                        color: Colors.white),
                  ),
                ],
              ),
            ),
            Positioned(
              child: Container(
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.only(top: 450),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Electronics',
                      style: TextStyle(color: Colors.grey),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          height: 20,
                          width: 50,
                          child: Text(
                            '  -54%',
                          ),
                          color: Colors.black12,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Container(
                          height: 20,
                          width: 50,
                          child: Icon(
                            Icons.share,
                            size: 20,
                          ),
                          decoration: BoxDecoration(
                              border:
                                  Border.all(width: 1, color: Colors.indigo),
                              color: Colors.white),
                          // color: Colors.white,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          "\$19.50 ",
                          style: TextStyle(color: Colors.deepOrange),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "\$50.00 ",
                          style: TextStyle(
                              decoration: TextDecoration.lineThrough,
                              color: Colors.grey),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Fashion Shoes for men Style',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'The Earliest known shoes are sandals made\nfrom sogebrush bark end.',
                      style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.normal,
                          height: 1.6),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                        LikeButton(
                          size: size,
                          isLiked: isLiked,
//  likeCount: likeCount,
                          likeBuilder: (isLiked) {
                            final color = isLiked ? Colors.yellow : Colors.grey;
                            return Icon(
                              Icons.star,
                              color: color,
                              size: size,
                            );
                          },
                          likeCountPadding: EdgeInsets.only(left: 0),
                          countBuilder: (count, isLiked, text) {
                            final color = isLiked ? Colors.black : Colors.white;
                            return Text(
                              text,
                              style: TextStyle(
                                color: color,
                                fontSize: 10,
                                fontWeight: FontWeight.bold,
                              ),
                            );
                          },
                          onTap: (isLiked) async {
                            return !isLiked;
                          },
                        ),
                        LikeButton(
                          size: size,
                          isLiked: isLiked,
//  likeCount: likeCount,
                          likeBuilder: (isLiked) {
                            final color = isLiked ? Colors.yellow : Colors.grey;
                            return Icon(
                              Icons.star,
                              color: color,
                              size: size,
                            );
                          },
                          likeCountPadding: EdgeInsets.only(left: 0),
                          countBuilder: (count, isLiked, text) {
                            final color = isLiked ? Colors.black : Colors.white;
                            return Text(
                              text,
                              style: TextStyle(
                                color: color,
                                fontSize: 10,
                                fontWeight: FontWeight.bold,
                              ),
                            );
                          },
                          onTap: (isLiked) async {
                            return !isLiked;
                          },
                        ),
                        LikeButton(
                          size: size,
                          isLiked: isLiked,
//  likeCount: likeCount,
                          likeBuilder: (isLiked) {
                            final color = isLiked ? Colors.yellow : Colors.grey;
                            return Icon(
                              Icons.star,
                              color: color,
                              size: size,
                            );
                          },
                          likeCountPadding: EdgeInsets.only(left: 0),
                          countBuilder: (count, isLiked, text) {
                            final color = isLiked ? Colors.black : Colors.white;
                            return Text(
                              text,
                              style: TextStyle(
                                color: color,
                                fontSize: 10,
                                fontWeight: FontWeight.bold,
                              ),
                            );
                          },
                          onTap: (isLiked) async {
                            return !isLiked;
                          },
                        ),
                        LikeButton(
                          size: size,
                          isLiked: isLiked,
//  likeCount: likeCount,
                          likeBuilder: (isLiked) {
                            final color = isLiked ? Colors.yellow : Colors.grey;
                            return Icon(
                              Icons.star,
                              color: color,
                              size: size,
                            );
                          },
                          likeCountPadding: EdgeInsets.only(left: 0),
                          countBuilder: (count, isLiked, text) {
                            final color = isLiked ? Colors.black : Colors.white;
                            return Text(
                              text,
                              style: TextStyle(
                                color: color,
                                fontSize: 10,
                                fontWeight: FontWeight.bold,
                              ),
                            );
                          },
                          onTap: (isLiked) async {
                            return !isLiked;
                          },
                        ),
                        LikeButton(
                          size: size,
                          isLiked: isLiked,
//  likeCount: likeCount,
                          likeBuilder: (isLiked) {
                            final color = isLiked ? Colors.yellow : Colors.grey;
                            return Icon(
                              Icons.star,
                              color: color,
                              size: size,
                            );
                          },
                          likeCountPadding: EdgeInsets.only(left: 0),
                          countBuilder: (count, isLiked, text) {
                            final color = isLiked ? Colors.black : Colors.white;
                            return Text(
                              text,
                              style: TextStyle(
                                color: color,
                                fontSize: 10,
                                fontWeight: FontWeight.bold,
                              ),
                            );
                          },
                          onTap: (isLiked) async {
                            return !isLiked;
                          },
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            '| 3.6',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    DefaultTabController(
                      length: 2, // Added
                      initialIndex: 0,
                      child: Column(
                        children: [
                          Container(
                            color: Colors.deepOrange,
                            child: TabBar(
                                indicator: BoxDecoration(color: Colors.grey),
                                tabs: [
                                  Tab(text: 'Products Discription'),
                                  Tab(text: 'Review(09)'),
                                ]),
                          ),
                          SizedBox(
                            height: 300,
                            child: TabBarView(
                              children: [
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
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
