import 'package:flutter/cupertino.dart';
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
      title: 'Flutter Demo',

      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child:  SingleChildScrollView(//Scrollable Column
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Hello") ,
                  Container(
                    height: 200,
                    color: Colors.red,
                  ),
                   ListView.builder(
                     itemCount: 10,
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) => ListTile(
                          title: Text("Hello"),
                          subtitle: Text("Haii..."),
                        )
                    ),

                ],
              ),
          ),

        ),
          //******* Column is not scrollable
        // Padding(
        //   padding: const EdgeInsets.all(20.0),
        //   child: Column(
        //     crossAxisAlignment: CrossAxisAlignment.start,
        //     children: [
        //     Text("Hello") ,
        //     Container(
        //       height: 200,
        //       color: Colors.red,
        //     ),
        //     Expanded(
        //       child: ListView.builder(
        //         shrinkWrap: true,
        //           itemBuilder: (context, index) => ListTile(
        //             title: Text("Hello"),
        //             subtitle: Text("Haii..."),
        //           )
        //       ),
        //     )
        //     ],
        //   ),
        // ),
        // ListView.separated(
        //   itemCount: 10,
        //   itemBuilder: (context,index) =>
        //       Container(
        //         height: 100,
        //         color: Colors.yellow,//index.isEven == true ? Colors.red : Colors.amber,
        //         child: Center(
        //           child: Text("${index + 1}"),
        //         ),
        //       ),
        //   separatorBuilder: (BuildContext context, int index) => Divider(
        //     height: 0,
        //     color: Colors.black,
        //     thickness: 3,
        //   )
        //       //SizedBox(height: 5,),
        //
        // ),
      ),
    );
  }
}

