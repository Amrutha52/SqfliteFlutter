import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// void main()
// {
//  runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget
// {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context)
//   {
//
//    return MaterialApp(
//      debugShowCheckedModeBanner: false,
//      home: Scaffold(
//        backgroundColor: Colors.green,
//        appBar: AppBar(
//          backgroundColor: Colors.black,
//          actions: [
//            Text("Hai", style: TextStyle(color: Colors.white),),
//            Icon(Icons.cable, color: Colors.brown,)
//          ],
//          leading: Icon(Icons.favorite, color: Colors.red,),
//          centerTitle: true,
//          title: Text("Sample", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.amber),),
//        ),
//        body: Center(
//          child: Padding(
//            padding: const EdgeInsets.only(left: 20, right: 100),
//            child: Text("In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before the final copy is available.", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,), textAlign: TextAlign.justify,),
//          ),
//        ),
//      ),
//    );
//
//
//   }
//
// }

void main()
{
  runApp(MyApp());
}

class MyApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff075E54),
          title: Text("WhatsApp", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),),
          actions: [
            Icon(Icons.camera_alt_outlined, color: Colors.white,),
            SizedBox(width: 20,),
            Icon(Icons.search, color: Colors.white,),
            SizedBox(width: 20,),
            Icon(Icons.more_vert, color: Colors.white,),
            SizedBox(width: 10,)
          ],
        ),
        body:
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [

          Container(
              alignment: Alignment.bottomCenter,
              decoration: BoxDecoration(color: Colors.red,
                  //borderRadius: BorderRadius.only(topLeft: Radius.circular(5.0)),
                  border: Border(
                    top: BorderSide(width: 5, color: Colors.black),
                    left: BorderSide(width: 5, color: Colors.black),),
                gradient: LinearGradient(colors: [Colors.amber, Colors.greenAccent], begin: Alignment.bottomRight, end: Alignment.topLeft),
                boxShadow: [BoxShadow(color: Colors.black, spreadRadius: 0,blurRadius: 10,offset: Offset(6, 6))],
                shape: BoxShape.circle,
              ),
                    height: 200,
                    width: 200,
              child: Text("Data"),
            ),
            Container(
              alignment: Alignment.bottomCenter,
              decoration: BoxDecoration(color: Colors.red,
                //borderRadius: BorderRadius.only(topLeft: Radius.circular(5.0)),
                border: Border(
                  top: BorderSide(width: 5, color: Colors.black),
                  left: BorderSide(width: 5, color: Colors.black),),
                gradient: LinearGradient(colors: [Colors.amber, Colors.greenAccent], begin: Alignment.bottomRight, end: Alignment.topLeft),
                boxShadow: [BoxShadow(color: Colors.black, spreadRadius: 0,blurRadius: 10,offset: Offset(6, 6))],
                shape: BoxShape.circle,
              ),
              height: 200,
              width: 200,
              child: Text("Data"),
            ),
            Container(
              alignment: Alignment.bottomCenter,
              decoration: BoxDecoration(color: Colors.red,
                //borderRadius: BorderRadius.only(topLeft: Radius.circular(5.0)),
                border: Border(
                  top: BorderSide(width: 5, color: Colors.black),
                  left: BorderSide(width: 5, color: Colors.black),),
                gradient: LinearGradient(colors: [Colors.amber, Colors.greenAccent], begin: Alignment.bottomRight, end: Alignment.topLeft),
                boxShadow: [BoxShadow(color: Colors.black, spreadRadius: 0,blurRadius: 10,offset: Offset(6, 6))],
                shape: BoxShape.circle,
              ),
              height: 200,
              width: 200,
              child: Text("Data"),
            ),
          ],
        ),
        // body: Center(
        //   child: CircleAvatar(
        //     radius: 50.0,
        //     backgroundColor: Colors.red,
        //     child: Text("Data"),
        //   ),
        //   // child: SizedBox(
        //   //   height: 100,
        //   //   width: 200,
        //   //   child: Card(
        //   //     elevation: 20.0,
        //   //     color: Colors.brown,
        //   //     child: Padding(
        //   //       padding: const EdgeInsets.all(8.0),
        //   //       child: Text("data"),
        //   //     ),
        //   //   ),
        //   // ),
        //   // child: Container(
        //   //   alignment: Alignment.bottomCenter,
        //   //   decoration: BoxDecoration(color: Colors.red,
        //   //       //borderRadius: BorderRadius.only(topLeft: Radius.circular(5.0)),
        //   //       border: Border(
        //   //         top: BorderSide(width: 5, color: Colors.black),
        //   //         left: BorderSide(width: 5, color: Colors.black),),
        //   //     gradient: LinearGradient(colors: [Colors.amber, Colors.greenAccent], begin: Alignment.bottomRight, end: Alignment.topLeft),
        //   //     boxShadow: [BoxShadow(color: Colors.black, spreadRadius: 0,blurRadius: 10,offset: Offset(6, 6))],
        //   //     shape: BoxShape.circle,
        //   //   ),
        //   //         height: 200,
        //   //         width: 200,
        //   //   child: Text("Data"),
        //   // ),
        // ),
      ),
    );
  }

}