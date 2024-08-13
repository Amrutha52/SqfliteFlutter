import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget
{
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
{
  late Color bgColor = Colors.black;
  @override
  Widget build(BuildContext context) {
// TODO: implement build
    return Scaffold(
      backgroundColor: bgColor,
      body: Center(
        child: Column(
          children: [
            ElevatedButton(onPressed: (){
              setState(() {
                bgColor = Colors.amberAccent;
              });
            },
                child: Text("Yellow")),
            SizedBox(height: 10,),
            ElevatedButton(onPressed: (){
              setState(() {
                bgColor = Colors.green;
              });
            },
                child: Text("Green")),
            SizedBox(height: 10,),
            ElevatedButton(onPressed: (){
              setState(() {
                bgColor = Colors.blueGrey;
              });
            },
                child: Text("Blue Grey")),
            SizedBox(height: 10,),
            ElevatedButton(onPressed: (){
              setState(() {
                bgColor = Colors.deepPurple;
              });
            },
                child: Text("Deep Purple")),
            SizedBox(height: 10,),
            ElevatedButton(onPressed: (){
              setState(() {
                bgColor = Colors.lightGreen;
              });
            },
                child: Text("Light Green")),
          ],
        ),
      ),
    );
  }
}