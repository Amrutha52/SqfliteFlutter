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
        body: Center(
          child: Container(
            height: 500,
            width: 200,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.orange, width: 10),
              borderRadius: BorderRadius.circular(20),
              color: Colors.amber
            ),
            child: Column(
              children: [
                Container(
                  height: 200,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(color: Colors.black)
                  ),
                )
              ],
            ),
          ),
        )
      ),
    );
  }
}


