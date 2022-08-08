import 'package:flutter/material.dart';
import 'package:tcommerce/inbox/usermodel.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key, required User user}) : super(key: key);

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.all(8),
            color: Colors.indigo,
            height: 160,
            width: 400,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(
                    'images/shoes.png',
                    height: 120,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Election',
                        style: TextStyle(
                            color: Colors.grey, fontWeight: FontWeight.w400),
                      ),
                      Text(
                        'Ics',
                        style: TextStyle(
                            color: Colors.grey, fontWeight: FontWeight.w400),
                      ),
                      Text(
                        'Computer Eair Phone',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w800),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Text(
                              "\$19.50",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w800),
                            ),
                            SizedBox(
                              width: 12,
                            ),
                            Text(
                              "\$50.00 ",
                              style: TextStyle(
                                  decoration: TextDecoration.lineThrough,
                                  color: Colors.grey),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(0),
                        child: FlatButton(
                          child: Text(
                            'Click Now',
                            style: TextStyle(fontSize: 20.0),
                          ),
                          color: Colors.deepOrange,
                          textColor: Colors.white,
                          onPressed: () {},
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipOval(
                  child: RaisedButton(
                    onPressed: () {},
                    child: Text("hi "),
                  ),
                ),
                ClipOval(
                  child: RaisedButton(
                    onPressed: () {},
                    child: Text("how are you "),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('10:32 AM'),
                ),
                SizedBox(
                  height: 30,
                ),
                ClipOval(
                  child: RaisedButton(
                    onPressed: () {},
                    child: Text("can i help you "),
                  ),
                ),
              ],
            ),
          ),

          Container(
            padding: EdgeInsets.symmetric(horizontal: 8),
            height: 70,
            color: Colors.white,
            child: Row(
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.camera_alt),
                  iconSize: 25,
                  color: Colors.deepOrange,
                  onPressed: () {},
                ),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration.collapsed(

                      hintText: 'Send a message..',
                    ),
                    textCapitalization: TextCapitalization.sentences,
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.settings_voice_sharp),
                  iconSize: 25,
                  color: Colors.grey,
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(Icons.photo),
                  iconSize: 25,
                  color: Colors.grey,
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(Icons.send),
                  iconSize: 25,
                  color: Colors.grey,
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
