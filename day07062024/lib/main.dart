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
      title: 'Flutter Demo',
      home: Scaffold(
        body: ListView.builder(
          itemCount: 100,
            itemBuilder: (context,index) =>
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                                height: 100,
                                color: index.isEven == true ? Colors.red : Colors.amber,
                    child: Center(
                      child: Text("${index + 1}"),
                    ),
                              ),
                ),
        ),
      ),
        // ListView(
        //   scrollDirection: Axis.horizontal,
        //   padding: EdgeInsets.all(100),
        //  // physics: NeverScrollableScrollPhysics(), // To off scroll
        //   children: [
        //     Padding(padding: EdgeInsets.all(8.0),
        //       child: Container(
        //         width: 100,
        //         height: 100,
        //         color: Colors.yellow,
        //       ),
        //     ),
        //     Padding(padding: EdgeInsets.all(8.0),
        //       child: Container(
        //         width: 100,
        //         height: 100,
        //         color: Colors.yellow,
        //       ),
        //     ),
        //     Padding(padding: EdgeInsets.all(8.0),
        //       child: Container(
        //         height: 100,
        //         width: 100,
        //         color: Colors.yellow,
        //       ),
        //     ),
        //     Padding(padding: EdgeInsets.all(8.0),
        //       child: Container(
        //         height: 100,
        //         width: 100,
        //         color: Colors.yellow,
        //       ),
        //     ),
        //     Padding(padding: EdgeInsets.all(8.0),
        //       child: Container(
        //         height: 100,
        //         width: 100,
        //         color: Colors.yellow,
        //       ),
        //     ),
        //     Padding(padding: EdgeInsets.all(8.0),
        //       child: Container(
        //         height: 100,
        //         width: 100,
        //         color: Colors.yellow,
        //       ),
        //     ),
        //     Padding(padding: EdgeInsets.all(8.0),
        //       child: Container(
        //         height: 100,
        //         width: 100,
        //         color: Colors.yellow,
        //       ),
        //     ),
        //     Padding(padding: EdgeInsets.all(8.0),
        //       child: Container(
        //         height: 100,
        //         width: 100,
        //         color: Colors.yellow,
        //       ),
        //     ),
        //     Padding(padding: EdgeInsets.all(8.0),
        //       child: Container(
        //         height: 100,
        //         width: 100,
        //         color: Colors.yellow,
        //       ),
        //     ),
        //     Padding(padding: EdgeInsets.all(8.0),
        //       child: Container(
        //         height: 100,
        //         width: 100,
        //         color: Colors.yellow,
        //       ),
        //     )
        //   ],
        // )
      );
   // );
  }
}

