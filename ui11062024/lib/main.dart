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
      title: 'Grid View',
      home: Scaffold(
        body: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 9 // no of items in each row
             // ,mainAxisSpacing: 8.0 // spacing between rows
             // ,crossAxisSpacing:  8.0 // spacing between columns
            ),
            padding: EdgeInsets.all(8.0), // padding around the grid
            itemCount: 104, // total no of items
            itemBuilder: (context, index) =>
                Container(
                  color: index.isEven ? Colors.white : Colors.amberAccent,
                )
        )
          // GridView.count(
          //     crossAxisCount: 2,
          //   mainAxisSpacing:5 ,
          //   crossAxisSpacing:5 ,
          //   childAspectRatio: 1/2,
          //   padding: EdgeInsets.all(8.0),
          //   children: [
          //     Container(
          //       color: Colors.amber,
          //     ),
          //   ],
          // )
        // GridView(
        //   padding: EdgeInsets.all(10.0),
        //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        //       crossAxisCount: 3,
        //       crossAxisSpacing: 10.0,
        //       mainAxisSpacing: 10.0,
        //     mainAxisExtent: 500,
        //     childAspectRatio: 1/2
        //   ),
        //   children: [
        //     Container(
        //       color: Colors.amber,
        //     ),
        //     Container(
        //       color: Colors.amber,
        //     ),
        //     Container(
        //       color: Colors.amber,
        //     ),
        //     Container(
        //       color: Colors.amber,
        //     ),
        //
        //   ],
        // ),
      )
    );
  }
}

