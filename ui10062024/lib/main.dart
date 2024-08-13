import 'dart:io';
import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ui10062024/MyHttpOverrides.dart';

void main() {
  HttpOverrides.global = new MyHttpOverrides();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Page View',
      home: SafeArea(child: Scaffold(backgroundColor: Colors.black,
        body: PageView.builder(
          itemCount: 5,
            itemBuilder: (context, index) => Column(
              children: [
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Divider(
                          color: Colors.black45,
                         // indent: 10,
                          //endIndent: 20,
                          thickness: 3,
                        ),
                        Row(
                          children: [
                            CircleAvatar(
                              backgroundImage: NetworkImage("https://images.pexels.com/photos/556669/pexels-photo-556669.jpeg?auto=compress&cs=tinysrgb&w=600"),
                            ),
                            SizedBox(width: 10,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    RichText(
                                      text: const TextSpan(
                                        text: 'Hi  ',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: 'Your App Font Family',
                                        ),
                                        children: [
                                          TextSpan(
                                            text: 'Amrr',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),

                                   // Text("Hi ",style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                                   // Text(" Amrutha", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold))
                                  ],
                                ),
                                Row(
                                  children: [
                                    Icon(Icons.multitrack_audio, color: Colors.white,),
                                    SizedBox(width: 8,),
                                    Text("Music", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                                    SizedBox(width: 8,),
                                    Icon(Icons.keyboard_arrow_right_rounded,size: 15, color: Colors.white,),
                                  ],
                                )

                              ],
                            ),
                            Spacer(),
                            Icon(Icons.more_vert, color: Colors.white,)
                          ],
                        )
                      ],
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage("https://images.pexels.com/photos/4273435/pexels-photo-4273435.jpeg?auto=compress&cs=tinysrgb&w=600"))
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all(color: Colors.white, width: 0.5)
                          ),
                          child: Text("Send Message", style: TextStyle(color: Colors.white),),
                        ),
                      ),
                      SizedBox(width: 8,),
                      Icon(Icons.favorite_outline, color: Colors.white,),
                      SizedBox(width: 8,),
                      Transform.rotate(
                          angle: -270,
                          child: Icon(Icons.send,size: 15, color: Colors.white,)),

                    ],
                  ),
                ),
              ],
            )
        ),
      ),)
    );
  }
}

