import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Flutter Demo',
//       home: Scaffold(
//         body: Column(
//           children: [
//             Container(
//               height: 200,
//               color: Colors.red,
//             ),
//             Expanded(
//               flex: 2,
//               child: Container(
//               color: Colors.green,
//             ),),
//             Expanded(
//               flex: 1,
//               child: Container(
//                 color: Colors.blueAccent,
//               ),
//             )
//           ],
//         ),
//       )
//     );
//   }
// }

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        home: Scaffold(
          body: Column(
            children: [
              Flexible(
                child: Container(
                  height: 1000,
                  color: Colors.red,
                ),
              ),
              Flexible(
                flex: 2,
                child: Container(
                  color: Colors.green,
                ),),
            ],
          ),
        )
    );
  }
}