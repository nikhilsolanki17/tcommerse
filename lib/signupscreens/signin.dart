import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/button_list.dart';
import 'package:flutter_signin_button/button_view.dart';
import '../Homescreen/homescreen.dart';
import '../signupscreen/signup.dart';

class Sigin extends StatefulWidget {
  const Sigin({Key? key}) : super(key: key);

  @override
  State<Sigin> createState() => _SiginState();
}

class _SiginState extends State<Sigin> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("images/shoppinglogo.jpg"),
                Text(
                  'T Commerce',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Welcome back\!',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
            Row(
              children: [
                GestureDetector(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Sign in',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () => Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => Signup())),
                  child: Text(
                    'Sign up',
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Useraname or email',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Password',
                ),
              ),
            ),
            Row(
              children: [
                Checkbox(
                  checkColor: Colors.white,
                  activeColor: Colors.deepOrange,

                  value: isChecked,
                  onChanged: (bool? value) {
                    setState(() {
                      isChecked = value!;
                    });
                  },
                ),
                Text(
                  'Remember me',
                  style: TextStyle(color: Colors.grey),
                ),
                SizedBox(
                  width: 120,
                ),
                Text(
                  'Forgot password?',
                  style: TextStyle(
                      color: Colors.deepOrange,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
            FlatButton(
              minWidth: 300,
              height: 40,
              child: Text(
                'Sign in ',
                style: TextStyle(fontSize: 20.0),
              ),
              color: Colors.deepOrange,
              textColor: Colors.white,
              onPressed: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => HomeScreen()));
              },
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Sign in with Social ',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.bold)),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SignInButton(
                  Buttons.Facebook,
                  mini: true,
                  onPressed: () {},
                ),
                SignInButton(
                  Buttons.LinkedIn,
                  mini: true,
                  onPressed: () {},
                ),
                SignInButton(
                  Buttons.Apple,
                  mini: true,
                  onPressed: () {

                  },
                ),
              ],
            ),
            Container(
              alignment: Alignment.center,
              height: 30,
              width: 200,
              decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
              margin: EdgeInsets.all(20),
              child: Text('Continue as Guest',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.bold)),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
