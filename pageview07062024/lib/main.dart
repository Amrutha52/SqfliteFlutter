import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    List<String> myList = [""];
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        body:PageView.builder(
            itemCount: 10,
            itemBuilder: (context, index) => Center(child: Text("$index"),))

          // PageView
        // PageView(
        //   scrollDirection: Axis.vertical,
        //   children: [
        //     Text("Hai Amrutha..."),
        //     Container(
        //       color: Colors.red,
        //     ),
        //     Container(
        //       color: Colors.yellow,
        //     ),
        //     Container(
        //       color: Colors.greenAccent,
        //     )
        //   ],
        // ),
      )
    );
  }
}


