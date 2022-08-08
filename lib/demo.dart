import 'package:flutter/material.dart';

class logsinscreen extends StatefulWidget {
  const logsinscreen({Key? key}) : super(key: key);

  @override
  State<logsinscreen> createState() => _logsinscreenState();
}

class _logsinscreenState extends State<logsinscreen> {
  //form key
  final _fromkey = GlobalKey<FormState>();

  //editing controller
  final TextEditingController emailController = new TextEditingController();
  final TextEditingController passwordController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    //email field
    final emailField = TextFormField(
      autofocus: false,
      controller: emailController,
      keyboardType: TextInputType.emailAddress,
      //validation{}
      onSaved: (value) {
        emailController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
          prefixIcon: Icon(Icons.mail),
          contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "Email",
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))),
    );
    //email field
    final passwordField = TextFormField(
      autofocus: false,
      controller: passwordController,
      obscureText: true,

      //validation{}
      onSaved: (value) {
        passwordController.text = value!;
      },
      textInputAction: TextInputAction.next,

      decoration: InputDecoration(
          prefixIcon: Icon(Icons.vpn_key),
          contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "Email",
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))),
    );
    final logininbutton = Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(10),
      color: Colors.red,
      child: MaterialButton(
        padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        minWidth: MediaQuery.of(context).size.width * 0.5,
        onPressed: () {},
        child: Text("login"),
      ),
    );
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Form(
                key: _fromkey,
                child: Column(
                  children: [
                    Image.asset("images/glory-removebg-preview.png"),
                    SizedBox(
                      height: 50,
                    ),
                    emailField,
                    SizedBox(
                      height: 20,
                    ),
                    passwordField,
                    SizedBox(
                      height: 20,
                    ),
                    logininbutton,
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
