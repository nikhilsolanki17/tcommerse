import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import 'package:tcommerce/Homescreen/homescreen.dart';
import 'package:tcommerce/electronic/services.dart';

import 'modelclass.dart';

class electronic extends StatefulWidget {
  const electronic({Key? key}) : super(key: key);

  @override
  State<electronic> createState() => _electronicState();
}

class _electronicState extends State<electronic> {
  void initState() {
    super.initState();
    fetchPostModel();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.black),
            onPressed: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => HomeScreen()));
            },
          ),
          actions: [
            IconButton(
              icon: Icon(
                Icons.shopping_cart,
              ),
              onPressed: () {},
            )
          ],
          iconTheme: IconThemeData(color: Colors.black),
          elevation: 0,
          title: Text(
            'Terms & Condition',
            style: TextStyle(color: Colors.white),
          ),
         ),
        body: FutureBuilder(
          future: fetchPostModel(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              PostModel? postModel = snapshot.data as PostModel?;


              return Text(postModel!.id.toString());
            } else if (snapshot.hasError) {
              return Text('${snapshot.error}');
            }


            return const CircularProgressIndicator();
          },
        ),
        //body: FutureBuilder(
        //   future: fetchPostModel(),
        //   builder: (context, snapshot) {
        //     PostModel? postModel = snapshot.data as PostModel?;
        //     return ListView.builder(
        //         itemCount: postModel?.length,
        //         itemBuilder: (context, index) {
        //       return ListTile(
        //         title: Text("nikhil solankii"),
        //       );
        //     });
        //   },
        // )
    );
  }
}
