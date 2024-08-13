import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '06062024',
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
        ),
        body: Container(
          decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/images/image1.jpg"), fit: BoxFit.cover)),
          child: Column(

          ),
        )
        // Center(
        //   child:
        //   // CircleAvatar(
        //   //   backgroundImage: AssetImage("assets/images/image1.jpg"),
        //   // )
        //   ClipRRect(
        //     borderRadius: BorderRadius.circular(20),
        //     child: Container(
        //       height: 200,
        //       width: 300,
        //
        //       decoration: BoxDecoration(
        //         color: Colors.grey,
        //         //   image: DecorationImage(image: AssetImage("assets/images/image1.jpg"),
        //         //       fit: BoxFit.fill
        //         // )
        //       ),
        //       //child: Image.network("https://images.pexels.com/photos/1765714/pexels-photo-1765714.jpeg?auto=compress&cs=tinysrgb&w=600"),
        //       child: ClipRRect(
        //         borderRadius: BorderRadius.circular(20),
        //         child: Image.asset("assets/images/image1.jpg", fit: BoxFit.cover,),
        //       ),
        //     ),
        //   )
        // ),
      )
    );
  }
}


