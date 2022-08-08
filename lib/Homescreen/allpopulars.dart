import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';

import '../menfashtion/shose.dart';

class allPolpulars extends StatefulWidget {
  const allPolpulars({Key? key}) : super(key: key);

  @override
  State<allPolpulars> createState() => _allPolpularsState();
}

class _allPolpularsState extends State<allPolpulars> {
  bool isLiked = false;
  int likeCount = 17;
  final double size = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepOrange,
          title: Text('All Popular'),
        ),
        body: ListView(
          children: [

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Colors.indigo),
                    ),
                    child: Column(
                      children: [
                        LikeButton(
                          padding: EdgeInsets.only(right: 70),
                          size: size,
                          isLiked: isLiked,
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
                        Image.asset(
                          'images/redshoes-removebg-preview.png',
                          height: 100,
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 122,
                    width: 250,
                    decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Colors.indigo),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Container(
                                child: LikeButton(
                                  size: size,
                                  isLiked: isLiked,
                                  likeBuilder: (isLiked) {
                                    final color =
                                        isLiked ? Colors.red : Colors.grey;
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
                              ),
                              Text('3.6')
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.all(3.0),
                            child: Text(
                              'Men fashion',
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Text(
                              'Fashion ManShoes',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Row(
                              children: [
                                Text(
                                  '\$19.50',
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
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Colors.indigo),
                    ),
                    child: Column(
                      children: [
                        LikeButton(
                          padding: EdgeInsets.only(right: 70),
                          size: size,
                          isLiked: isLiked,
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
                        Image.asset(
                          'images/redshoes-removebg-preview.png',
                          height: 100,
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 122,
                    width: 250,
                    decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Colors.indigo),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Container(
                                child: LikeButton(
                                  size: size,
                                  isLiked: isLiked,
                                  likeBuilder: (isLiked) {
                                    final color =
                                        isLiked ? Colors.red : Colors.grey;
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
                              ),
                              Text('3.6')
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.all(3.0),
                            child: Text(
                              'Men fashion',
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Text(
                              'Fashion ManShoes',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Row(
                              children: [
                                Text(
                                  '\$19.50',
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
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Colors.indigo),
                    ),
                    child: Column(
                      children: [
                        LikeButton(
                          padding: EdgeInsets.only(right: 70),
                          size: size,
                          isLiked: isLiked,
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
                        Image.asset(
                          'images/redshoes-removebg-preview.png',
                          height: 100,
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 122,
                    width: 250,
                    decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Colors.indigo),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Container(
                                child: LikeButton(
                                  size: size,
                                  isLiked: isLiked,
                                  likeBuilder: (isLiked) {
                                    final color =
                                        isLiked ? Colors.red : Colors.grey;
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
                              ),
                              Text('3.6')
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.all(3.0),
                            child: Text(
                              'Men fashion',
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Text(
                              'Fashion ManShoes',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Row(
                              children: [
                                Text(
                                  '\$19.50',
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
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Colors.indigo),
                    ),
                    child: Column(
                      children: [
                        LikeButton(
                          padding: EdgeInsets.only(right: 70),
                          size: size,
                          isLiked: isLiked,
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
                        Image.asset(
                          'images/redshoes-removebg-preview.png',
                          height: 100,
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 122,
                    width: 250,
                    decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Colors.indigo),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Container(
                                child: LikeButton(
                                  size: size,
                                  isLiked: isLiked,
                                  likeBuilder: (isLiked) {
                                    final color =
                                        isLiked ? Colors.red : Colors.grey;
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
                              ),
                              Text('3.6')
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.all(3.0),
                            child: Text(
                              'Men fashion',
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Text(
                              'Fashion ManShoes',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Row(
                              children: [
                                Text(
                                  '\$19.50',
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
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Colors.indigo),
                    ),
                    child: Column(
                      children: [
                        LikeButton(
                          padding: EdgeInsets.only(right: 70),
                          size: size,
                          isLiked: isLiked,
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
                        Image.asset(
                          'images/redshoes-removebg-preview.png',
                          height: 100,
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 122,
                    width: 250,
                    decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Colors.indigo),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Container(
                                child: LikeButton(
                                  size: size,
                                  isLiked: isLiked,
                                  likeBuilder: (isLiked) {
                                    final color =
                                        isLiked ? Colors.red : Colors.grey;
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
                              ),
                              Text('3.6')
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.all(3.0),
                            child: Text(
                              'Men fashion',
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Text(
                              'Fashion ManShoes',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Row(
                              children: [
                                Text(
                                  '\$19.50',
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
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Colors.indigo),
                    ),
                    child: Column(
                      children: [
                        LikeButton(
                          padding: EdgeInsets.only(right: 70),
                          size: size,
                          isLiked: isLiked,
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
                        Image.asset(
                          'images/redshoes-removebg-preview.png',
                          height: 100,
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 122,
                    width: 250,
                    decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Colors.indigo),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Container(
                                child: LikeButton(
                                  size: size,
                                  isLiked: isLiked,
                                  likeBuilder: (isLiked) {
                                    final color =
                                        isLiked ? Colors.red : Colors.grey;
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
                              ),
                              Text('3.6')
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.all(3.0),
                            child: Text(
                              'Men fashion',
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Text(
                              'Fashion ManShoes',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Row(
                              children: [
                                Text(
                                  '\$19.50',
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
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Colors.indigo),
                    ),
                    child: Column(
                      children: [
                        LikeButton(
                          padding: EdgeInsets.only(right: 70),
                          size: size,
                          isLiked: isLiked,
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
                        Image.asset(
                          'images/redshoes-removebg-preview.png',
                          height: 100,
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 122,
                    width: 250,
                    decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Colors.indigo),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Container(
                                child: LikeButton(
                                  size: size,
                                  isLiked: isLiked,
                                  likeBuilder: (isLiked) {
                                    final color =
                                        isLiked ? Colors.red : Colors.grey;
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
                              ),
                              Text('3.6')
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.all(3.0),
                            child: Text(
                              'Men fashion',
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Text(
                              'Fashion ManShoes',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Row(
                              children: [
                                Text(
                                  '\$19.50',
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
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
