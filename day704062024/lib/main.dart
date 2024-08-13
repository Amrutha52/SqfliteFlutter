import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// Single child scrollview, Stack

// void main() {
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Day 7',
//       home: SafeArea(
//         child: Scaffold(
//           body: Stack(
//             children: [
//               Container(
//                 height: 200,
//                 width: 200,
//                 color: Colors.red,
//               ),
//               Container(
//                 height: 150,
//                 width: 150,
//                 color: Colors.yellow,
//               ),
//               Positioned(
//                 top: 0,
//                 left: 20,
//                 child: Container(
//                   height: 100,
//                   width: 100,
//                   color: Colors.green,
//                 ),
//               ),
//             ],
//           )
//         ),
//       ),
//     );
//   }
// }

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
      title: 'Day 7',
      home: SafeArea(
        child: Scaffold(
            body: SafeArea(
              child: Center(
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all()
                  ),
                  child: ListTile(
                    leading: Container(
                      height: 80,
                      width: 80,
                      color: Colors.black,
                    ),
                    title: Text("My Title"),
                    subtitle: Text("My Title"),
                    trailing: Text("67 \$"),
                    titleAlignment: ListTileTitleAlignment.center,
                  ),
                ),
              ),
            ),
        ),
      ),
    );
  }
}
