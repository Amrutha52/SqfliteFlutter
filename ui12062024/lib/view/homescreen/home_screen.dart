import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ui12062024/view/login_screen/login_screen.dart';

class HomeScreen extends StatelessWidget
{
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(),
      floatingActionButton: FloatingActionButton(onPressed: () {
        print("Button Pressed");
        
      },
      child: Icon(Icons.add, color: Colors.black,),
        backgroundColor: Colors.amberAccent,
        elevation: 5,
      ),
      body: Center(
        child:
        Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            children: [
              ElevatedButton(
                onPressed: (){
                  print("Elevated Button Pressed");
                },
                child: Text("Elevated Button"),
                style: ButtonStyle(
                  foregroundColor: MaterialStatePropertyAll(Colors.white),
                    maximumSize: MaterialStatePropertyAll(Size(300,300)),
                    backgroundColor: MaterialStatePropertyAll(Colors.amberAccent,),
                    shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),

                    ),
                    )
                ),

              ),
              TextButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen()));
                   // print("Text Button Pressed");
                  },
                  child: Text("Text Button", style: TextStyle(fontSize: 20),),
              ),
              OutlinedButton(
                onLongPress: (){
                  print("Long Pressed");
                },
                  onPressed: (){
                    print("Outlined Button Pressed");
                  },
                  child: Text("Outlined Button", style: TextStyle(fontSize: 20),)
              ),
              IconButton(
                highlightColor: Colors.amberAccent,
                disabledColor: Colors.red,
                  onPressed: (){
                    print("Icon Button Pressed");
                  }, 
                  icon: Icon(Icons.add, color: Colors.brown,)),
              InkWell(
                onTap: ()
                {
                  print("Inkwell onTap");
                },
                onDoubleTap: ()
                {
                  print("onDouble Tap");
                },
                child: Container(
                  height: 50,
                  width: 50,
                  color: Colors.red,
                ),
              ),
              SizedBox(height: 20,),
              GestureDetector(
                onTap: () {
                  // Handle the onTap gesture here
                  print("Container tapped!");
                },
                child: Container(
                  width: 100,
                  height: 100,
                  color: Colors.blue,
                  child: Center(
                    child: Text(
                      "Tap Me!",
                      style: TextStyle(fontSize: 24, color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
        )
      ),
    );
  }
}

