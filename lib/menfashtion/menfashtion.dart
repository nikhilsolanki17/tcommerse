import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';
import 'package:tcommerce/menfashtion/shose.dart';

class men extends StatefulWidget {
  const men({Key? key}) : super(key: key);

  @override
  State<men> createState() => _menState();
}

class _menState extends State<men> {
  bool isLiked = false;
  int likeCount = 17;
  final double size = 20;

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
      ),
      body: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    GestureDetector(
                      onTap:   () => Navigator.pushReplacement(
                          context, MaterialPageRoute(builder: (context) => shose())),
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(width: 1, color: Colors.indigo),
                        ),
                        height: 150,
                        width: 180,
                        child: Container(
                          color: Colors.black12,
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Container(
                                    margin: EdgeInsets.all(8),
                                    color: Colors.blueGrey,
                                    child: LikeButton(
                                      size: size,
                                      isLiked: isLiked,
                                      //  likeCount: likeCount,
                                      likeBuilder: (isLiked) {
                                        final color =
                                            isLiked ? Colors.red : Colors.grey;
                                        return Icon(
                                          Icons.favorite,
                                          color: color,
                                          size: size,
                                        );
                                      },
                                      likeCountPadding: EdgeInsets.only(left: 0),
                                      countBuilder: (count, isLiked, text) {
                                        final color =
                                            isLiked ? Colors.black : Colors.white;
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
                                  ),
                                  Spacer(),
                                  Container(
                                      margin: EdgeInsets.all(10),
                                      alignment: Alignment.center,
                                      color: Colors.indigo[100],
                                      height: 30,
                                      width: 50,
                                      child: Text('-54%')),
                                ],
                              ),
                              Image.asset(
                                'images/shose.png',
                                height: 90,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(width: 1, color: Colors.indigo),
                      ),
                      height: 100,
                      width: 180,

                      child: Container(

                        child: Column(
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "Man's Fashion",
                                    style:
                                        TextStyle(color: Colors.indigoAccent),
                                  ),
                                ),
                                Spacer(),
                                LikeButton(
                                  size: size,
                                  isLiked: isLiked,
                                  //  likeCount: likeCount,
                                  likeBuilder: (isLiked) {
                                    final color =
                                        isLiked ? Colors.yellow : Colors.grey;
                                    return Icon(
                                      Icons.star,
                                      color: color,
                                      size: size,
                                    );
                                  },
                                  likeCountPadding: EdgeInsets.only(left: 0),
                                  countBuilder: (count, isLiked, text) {
                                    final color =
                                        isLiked ? Colors.black : Colors.white;
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
                                Text(
                                  '3.6',
                                  style: TextStyle(color: Colors.indigoAccent),
                                ),
                              ],
                            ),
                            Text(
                              'Leptop Eair Phone',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                            Row(
                              children: [
                                Text(
                                  "   \$28.50 ",
                                  style: TextStyle(
                                    color: Colors.deepOrange,
                                  ),
                                ),
                                Text(
                                  "   \$19.50 ",
                                  style: TextStyle(
                                    color: Colors.grey,
                                    decoration: TextDecoration.lineThrough,
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                      // color: Colors.green,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(width: 1, color: Colors.indigo),
                      ),
                      height: 150,
                      width: 180,
                      child: Container(
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Container(
                                  margin: EdgeInsets.all(8),
                                  color: Colors.blueGrey,
                                  child: LikeButton(
                                    size: size,
                                    isLiked: isLiked,
                                    //  likeCount: likeCount,
                                    likeBuilder: (isLiked) {
                                      final color =
                                          isLiked ? Colors.red : Colors.grey;
                                      return Icon(
                                        Icons.favorite,
                                        color: color,
                                        size: size,
                                      );
                                    },
                                    likeCountPadding: EdgeInsets.only(left: 0),
                                    countBuilder: (count, isLiked, text) {
                                      final color =
                                          isLiked ? Colors.black : Colors.white;
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
                                ),
                                Spacer(),
                                Container(
                                    margin: EdgeInsets.all(10),
                                    alignment: Alignment.center,
                                    color: Colors.indigo[100],
                                    height: 30,
                                    width: 50,
                                    child: Text('-54%')),
                              ],
                            ),
                            Image.asset(
                              'images/men-removebg-preview.png',
                              height: 90,
                              width: 90,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(width: 1, color: Colors.indigo),
                      ),
                      height: 100,
                      width: 180,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "Man's Fashion",
                                  style: TextStyle(color: Colors.indigoAccent),
                                ),
                              ),
                              Spacer(),
                              LikeButton(
                                size: size,
                                isLiked: isLiked,
                                //  likeCount: likeCount,
                                likeBuilder: (isLiked) {
                                  final color =
                                      isLiked ? Colors.yellow : Colors.grey;
                                  return Icon(
                                    Icons.star,
                                    color: color,
                                    size: size,
                                  );
                                },
                                likeCountPadding: EdgeInsets.only(left: 0),
                                countBuilder: (count, isLiked, text) {
                                  final color =
                                      isLiked ? Colors.black : Colors.white;
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
                              Text(
                                '3.6',
                                style: TextStyle(color: Colors.indigoAccent),
                              ),
                            ],
                          ),
                          Text(
                            'Men shirts',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          Row(
                            children: [
                              Text(
                                "   \$28.50 ",
                                style: TextStyle(
                                  color: Colors.deepOrange,
                                ),
                              ),
                              Text(
                                "   \$19.50 ",
                                style: TextStyle(
                                  color: Colors.grey,
                                  decoration: TextDecoration.lineThrough,
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                      // color: Colors.green,
                    ),
                  ],
                ),
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(width: 1, color: Colors.indigo),
                      ),
                      height: 150,
                      width: 180,
                      child: Container(
                        color: Colors.yellow,
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Container(
                                  margin: EdgeInsets.all(8),
                                  color: Colors.blueGrey,
                                  child: LikeButton(
                                    size: size,
                                    isLiked: isLiked,
                                    //  likeCount: likeCount,
                                    likeBuilder: (isLiked) {
                                      final color =
                                          isLiked ? Colors.red : Colors.grey;
                                      return Icon(
                                        Icons.favorite,
                                        color: color,
                                        size: size,
                                      );
                                    },
                                    likeCountPadding: EdgeInsets.only(left: 0),
                                    countBuilder: (count, isLiked, text) {
                                      final color =
                                          isLiked ? Colors.black : Colors.white;
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
                                ),
                                Spacer(),
                                Container(
                                    margin: EdgeInsets.all(10),
                                    alignment: Alignment.center,
                                    color: Colors.indigo[100],
                                    height: 30,
                                    width: 50,
                                    child: Text('-54%')),
                              ],
                            ),
                            Image.asset(
                              'images/head-removebg-preview.png',
                              height: 90,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(width: 1, color: Colors.indigo),
                      ),
                      height: 100,
                      width: 180,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "Man's Fashion",
                                  style: TextStyle(color: Colors.indigoAccent),
                                ),
                              ),
                              Spacer(),
                              LikeButton(
                                size: size,
                                isLiked: isLiked,
                                //  likeCount: likeCount,
                                likeBuilder: (isLiked) {
                                  final color =
                                      isLiked ? Colors.yellow : Colors.grey;
                                  return Icon(
                                    Icons.star,
                                    color: color,
                                    size: size,
                                  );
                                },
                                likeCountPadding: EdgeInsets.only(left: 0),
                                countBuilder: (count, isLiked, text) {
                                  final color =
                                      isLiked ? Colors.black : Colors.white;
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
                              Text(
                                '3.6',
                                style: TextStyle(color: Colors.indigoAccent),
                              ),
                            ],
                          ),
                          Text(
                            'Leptop Eair Phone',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          Row(
                            children: [
                              Text(
                                "   \$28.50 ",
                                style: TextStyle(
                                  color: Colors.deepOrange,
                                ),
                              ),
                              Text(
                                "   \$19.50 ",
                                style: TextStyle(
                                  color: Colors.grey,
                                  decoration: TextDecoration.lineThrough,
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                      // color: Colors.green,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(width: 1, color: Colors.indigo),
                      ),
                      height: 150,
                      width: 180,
                      child: Container(
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Container(
                                  margin: EdgeInsets.all(8),
                                  color: Colors.blueGrey,
                                  child: LikeButton(
                                    size: size,
                                    isLiked: isLiked,
                                    //  likeCount: likeCount,
                                    likeBuilder: (isLiked) {
                                      final color =
                                          isLiked ? Colors.red : Colors.grey;
                                      return Icon(
                                        Icons.favorite,
                                        color: color,
                                        size: size,
                                      );
                                    },
                                    likeCountPadding: EdgeInsets.only(left: 0),
                                    countBuilder: (count, isLiked, text) {
                                      final color =
                                          isLiked ? Colors.black : Colors.white;
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
                                ),
                                Spacer(),
                                Container(
                                    margin: EdgeInsets.all(10),
                                    alignment: Alignment.center,
                                    color: Colors.indigo[100],
                                    height: 30,
                                    width: 50,
                                    child: Text('-54%')),
                              ],
                            ),
                            Image.asset(
                              'images/shirtss-removebg-preview.png',
                              height: 90,
                              width: 90,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(width: 1, color: Colors.indigo),
                      ),
                      height: 100,
                      width: 180,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "Man's Fashion",
                                  style: TextStyle(color: Colors.indigoAccent),
                                ),
                              ),
                              Spacer(),
                              LikeButton(
                                size: size,
                                isLiked: isLiked,
                                //  likeCount: likeCount,
                                likeBuilder: (isLiked) {
                                  final color =
                                      isLiked ? Colors.yellow : Colors.grey;
                                  return Icon(
                                    Icons.star,
                                    color: color,
                                    size: size,
                                  );
                                },
                                likeCountPadding: EdgeInsets.only(left: 0),
                                countBuilder: (count, isLiked, text) {
                                  final color =
                                      isLiked ? Colors.black : Colors.white;
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
                              Text(
                                '3.6',
                                style: TextStyle(color: Colors.indigoAccent),
                              ),
                            ],
                          ),
                          Text(
                            'Men shirts',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          Row(
                            children: [
                              Text(
                                "   \$28.50 ",
                                style: TextStyle(
                                  color: Colors.deepOrange,
                                ),
                              ),
                              Text(
                                "   \$19.50 ",
                                style: TextStyle(
                                  color: Colors.grey,
                                  decoration: TextDecoration.lineThrough,
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
