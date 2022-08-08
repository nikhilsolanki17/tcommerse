import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:tcommerce/screen/topcommerce.dart';

import '../signupscreens/signin.dart';
import 'makepayment.dart';
import 'onlineshopping.dart';

class first extends StatefulWidget {
  const first({Key? key}) : super(key: key);

  @override
  State<first> createState() => _firstState();
}

class _firstState extends State<first> {
  final controller = PageController();
  bool isLastPage = false;

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          padding: EdgeInsets.only(bottom: 80),
          child: PageView(
            controller: controller,
            onPageChanged: (index) {
              setState(() => isLastPage = index == 2);
            },
            children: [
              TopComm(),
              Makpay(),
              onlineshop(),
            ],
          ),
        ),
        bottomSheet: isLastPage
            ? Row(
                children: [
                  SmoothPageIndicator(
                    controller: controller,
                    count: 3,
                    effect: WormEffect(
                        spacing: 16,
                        dotColor: Colors.black26,
                        activeDotColor: Colors.deepOrange),
                  ),
                  SizedBox(
                    width: 240,
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.deepOrange,
                    radius: 35,
                    child: TextButton(
                      child: Text(
                        'Next',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                      onPressed: () => {
                        Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (context) => Sigin()))
                      },
                    ),
                  ),
                ],
              )
            : Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                height: 80,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SmoothPageIndicator(
                      controller: controller,
                      count: 3,
                      effect: WormEffect(
                          spacing: 16,
                          dotColor: Colors.black26,
                          activeDotColor: Colors.deepOrange),
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.deepOrange,
                      radius: 35,
                      child: TextButton(
                        child: Text(
                          'Next',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                        onPressed: () => {
                          controller.nextPage(
                              duration: const Duration(microseconds: 10),
                              curve: Curves.easeInOut)
                        },
                      ),
                    )
                  ],
                ),
              ));
  }
}
