import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text("Home", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),
          actions: [
            CircleAvatar(
              radius: 80,
              backgroundImage: NetworkImage(
                  "https://images.pexels.com/photos/3866555/pexels-photo-3866555.png?auto=compress&cs=tinysrgb&w=600"
              ),
            ),
            SizedBox(width: 10,),
            Icon(Icons.menu, color: Colors.black,),
            SizedBox(width: 15,)
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text("Main Account", style: TextStyle(color: Colors.purple, fontWeight: FontWeight.bold),),
                  Icon(Icons.keyboard_arrow_down, color: Colors.purple,)
                ],
              ),
              SizedBox(height: 10,),
              Text("13.458\$", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20,),),
              SizedBox(height: 10,),
              Row(
                children: [
                  Icon(Icons.keyboard_arrow_down_rounded, color: Colors.purple,),
                  SizedBox(width: 5,),
                  Text("Current Balance", style: TextStyle(color: Colors.purple, fontWeight: FontWeight.bold),),
                ],
              ),
              SizedBox(height: 10,),
              Row(
                children: [
                  Container(
                    height: 70,
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Icon(Icons.add, size: 55,),
                    decoration: BoxDecoration(
                      color: Colors.purple.shade400.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  SizedBox(width: 5,),
                  Container(
                    height: 70,
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Icon(Icons.arrow_forward, size: 55,),
                    decoration: BoxDecoration(
                      color: Colors.purple.shade400.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  SizedBox(width: 10,),
                  Expanded(
                    child: Container(
                      height: 70,
                      decoration: BoxDecoration(
                        color: Colors.purple.shade400.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      alignment: Alignment.center,
                      child: Text("Split a Purchase",
                      style: TextStyle(fontWeight: FontWeight.bold,
                      fontSize: 20
                      ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(width: 30,),
              Text("Recent Events", style: TextStyle(fontWeight: FontWeight.bold,
              fontSize: 18
              ),),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(color: Colors.grey)
                ),
                child: ListTile(
                  contentPadding: EdgeInsets.symmetric(horizontal: 10),
                  minVerticalPadding: 10,
                  leading: Container(
                    color: Colors.amber,
                    width: 60,
                  ),
                  title: Text("Nike Shop", style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal),),
                  subtitle: Text("17 Oct", style: TextStyle(fontSize: 14, fontWeight: FontWeight.normal, color: Colors.blueGrey)),
                  trailing: Text("576.00 \$", style: TextStyle(fontSize: 14, fontWeight: FontWeight.normal, color: Colors.blueGrey)),
                ),
              ),
              SizedBox(height: 10,),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(color: Colors.grey)
                ),
                child: ListTile(
                  contentPadding: EdgeInsets.symmetric(horizontal: 10),
                  minVerticalPadding: 10,
                  leading: Container(
                    color: Colors.black,
                    width: 60,
                  ),
                  title: Text("STARBUCKS", style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal),),
                  subtitle: Text("17 Oct", style: TextStyle(fontSize: 14, fontWeight: FontWeight.normal, color: Colors.blueGrey)),
                  trailing: Text("-6.00 \$", style: TextStyle(fontSize: 14, fontWeight: FontWeight.normal, color: Colors.blueGrey)),
                ),
              ),
              SizedBox(height: 10,),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(color: Colors.grey)
                ),
                child: ListTile(
                  contentPadding: EdgeInsets.symmetric(horizontal: 10),
                  minVerticalPadding: 10,
                  leading: Container(
                    color: Colors.black,
                    width: 60,
                  ),
                  title: Text("Anna Johnson", style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal),),
                  subtitle: Text("14 Oct", style: TextStyle(fontSize: 14, fontWeight: FontWeight.normal, color: Colors.blueGrey)),
                  trailing: Container(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.purple.withOpacity(.4)
                    ),
                    child: Text("50.00 \$", style: TextStyle(fontSize: 14, fontWeight: FontWeight.normal, color: Colors.blueGrey)),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

