import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ui12062024/view/homescreen/home_screen.dart';

class LoginScreen extends StatelessWidget
{
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          IconButton(onPressed: (){
            Navigator.pop(context);
          }, icon: Icon(Icons.arrow_back, color: Colors.black,)),
          InkWell(
            onTap: (){
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomeScreen()));
              //Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));
            },
            child: Center(
              child: Text("Login Screen"),
            ),
          ),
        ],
      ),
    );

  }
}